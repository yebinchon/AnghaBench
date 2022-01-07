; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_select_kdriver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_select_kdriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i32, i64, i32* }
%struct.cryptkop = type { i32 }

@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@CRYPTOCAP_F_SOFTWARE = common dso_local global i32 0, align 4
@crypto_drivers_num = common dso_local global i32 0, align 4
@crypto_drivers = common dso_local global %struct.cryptocap* null, align 8
@CRYPTOCAP_F_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cryptocap* (%struct.cryptkop*, i32)* @crypto_select_kdriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cryptocap* @crypto_select_kdriver(%struct.cryptkop* %0, i32 %1) #0 {
  %3 = alloca %struct.cryptocap*, align 8
  %4 = alloca %struct.cryptkop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptocap*, align 8
  %7 = alloca %struct.cryptocap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cryptkop* %0, %struct.cryptkop** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 (...) @CRYPTO_DRIVER_ASSERT()
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  store i32 %16, i32* %8, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %17, %15
  store %struct.cryptocap* null, %struct.cryptocap** %7, align 8
  br label %20

20:                                               ; preds = %86, %19
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %69, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @crypto_drivers_num, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %21
  %26 = load %struct.cryptocap*, %struct.cryptocap** @crypto_drivers, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %26, i64 %28
  store %struct.cryptocap* %29, %struct.cryptocap** %6, align 8
  %30 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  %31 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %25
  %35 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  %36 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CRYPTOCAP_F_CLEANUP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  %43 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %34, %25
  br label %69

49:                                               ; preds = %41
  %50 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  %51 = load %struct.cryptkop*, %struct.cryptkop** %4, align 8
  %52 = call i64 @kdriver_suitable(%struct.cryptocap* %50, %struct.cryptkop* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.cryptocap*, %struct.cryptocap** %7, align 8
  %56 = icmp eq %struct.cryptocap* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  %59 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.cryptocap*, %struct.cryptocap** %7, align 8
  %62 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57, %54
  %66 = load %struct.cryptocap*, %struct.cryptocap** %6, align 8
  store %struct.cryptocap* %66, %struct.cryptocap** %7, align 8
  br label %67

67:                                               ; preds = %65, %57
  br label %68

68:                                               ; preds = %67, %49
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %21

72:                                               ; preds = %21
  %73 = load %struct.cryptocap*, %struct.cryptocap** %7, align 8
  %74 = icmp ne %struct.cryptocap* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load %struct.cryptocap*, %struct.cryptocap** %7, align 8
  store %struct.cryptocap* %76, %struct.cryptocap** %3, align 8
  br label %90

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @CRYPTOCAP_F_SOFTWARE, align 4
  store i32 %87, i32* %8, align 4
  br label %20

88:                                               ; preds = %81, %77
  %89 = load %struct.cryptocap*, %struct.cryptocap** %7, align 8
  store %struct.cryptocap* %89, %struct.cryptocap** %3, align 8
  br label %90

90:                                               ; preds = %88, %75
  %91 = load %struct.cryptocap*, %struct.cryptocap** %3, align 8
  ret %struct.cryptocap* %91
}

declare dso_local i32 @CRYPTO_DRIVER_ASSERT(...) #1

declare dso_local i64 @kdriver_suitable(%struct.cryptocap*, %struct.cryptkop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
