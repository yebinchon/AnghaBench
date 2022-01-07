; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_get_driverid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_get_driverid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i32, i32, i64, i32* }

@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@CRYPTOCAP_F_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: no flags specified when registering driver\0A\00", align 1
@crypto_drivers_num = common dso_local global i32 0, align 4
@crypto_drivers = common dso_local global %struct.cryptocap* null, align 8
@CRYPTOCAP_F_CLEANUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"crypto: driver count wraparound!\0A\00", align 1
@M_CRYPTO_DATA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"crypto: no space to expand driver table!\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"crypto: assign %s driver id %u, flags 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_get_driverid(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cryptocap*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %12 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @device_get_nameunit(i32* %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %4, align 4
  br label %126

20:                                               ; preds = %3
  %21 = call i32 (...) @CRYPTO_DRIVER_LOCK()
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %46, %20
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @crypto_drivers_num, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %27, i64 %29
  %31 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %35, i64 %37
  %39 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CRYPTOCAP_F_CLEANUP, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %49

45:                                               ; preds = %34, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %22

49:                                               ; preds = %44, %22
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @crypto_drivers_num, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %91

53:                                               ; preds = %49
  %54 = load i32, i32* @crypto_drivers_num, align 4
  %55 = mul nsw i32 2, %54
  %56 = load i32, i32* @crypto_drivers_num, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = call i32 (...) @CRYPTO_DRIVER_UNLOCK()
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %126

61:                                               ; preds = %53
  %62 = load i32, i32* @crypto_drivers_num, align 4
  %63 = mul nsw i32 2, %62
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 24
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @M_CRYPTO_DATA, align 4
  %68 = load i32, i32* @M_NOWAIT, align 4
  %69 = load i32, i32* @M_ZERO, align 4
  %70 = or i32 %68, %69
  %71 = call %struct.cryptocap* @malloc(i32 %66, i32 %67, i32 %70)
  store %struct.cryptocap* %71, %struct.cryptocap** %8, align 8
  %72 = load %struct.cryptocap*, %struct.cryptocap** %8, align 8
  %73 = icmp eq %struct.cryptocap* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = call i32 (...) @CRYPTO_DRIVER_UNLOCK()
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %126

77:                                               ; preds = %61
  %78 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %79 = load %struct.cryptocap*, %struct.cryptocap** %8, align 8
  %80 = load i32, i32* @crypto_drivers_num, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 24
  %83 = trunc i64 %82 to i32
  %84 = call i32 @bcopy(%struct.cryptocap* %78, %struct.cryptocap* %79, i32 %83)
  %85 = load i32, i32* @crypto_drivers_num, align 4
  %86 = mul nsw i32 %85, 2
  store i32 %86, i32* @crypto_drivers_num, align 4
  %87 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %88 = load i32, i32* @M_CRYPTO_DATA, align 4
  %89 = call i32 @free(%struct.cryptocap* %87, i32 %88)
  %90 = load %struct.cryptocap*, %struct.cryptocap** %8, align 8
  store %struct.cryptocap* %90, %struct.cryptocap** @crypto_drivers, align 8
  br label %91

91:                                               ; preds = %77, %49
  %92 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %92, i64 %94
  %96 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %98, i64 %100
  %102 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %101, i32 0, i32 3
  store i32* %97, i32** %102, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %104, i64 %106
  %108 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %110, i64 %112
  %114 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %113, i32 0, i32 2
  store i64 %109, i64* %114, align 8
  %115 = load i64, i64* @bootverbose, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %91
  %118 = load i32*, i32** %5, align 8
  %119 = call i8* @device_get_nameunit(i32* %118)
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %91
  %124 = call i32 (...) @CRYPTO_DRIVER_UNLOCK()
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %123, %74, %58, %16
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @device_get_nameunit(i32*) #1

declare dso_local i32 @CRYPTO_DRIVER_LOCK(...) #1

declare dso_local i32 @CRYPTO_DRIVER_UNLOCK(...) #1

declare dso_local %struct.cryptocap* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.cryptocap*, %struct.cryptocap*, i32) #1

declare dso_local i32 @free(%struct.cryptocap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
