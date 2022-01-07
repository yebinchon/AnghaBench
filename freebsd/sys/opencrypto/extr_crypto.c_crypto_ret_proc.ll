; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_ret_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_ret_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.crypto_ret_worker = type { i64, i32, i32*, i32, i32, i32 }
%struct.cryptop = type { i64, i32 (%struct.cryptop*)*, i32 (%struct.cryptop*)*, %struct.bintime }
%struct.bintime = type { i32 }
%struct.cryptkop = type { i64, i32 (%struct.cryptop*)*, i32 (%struct.cryptop*)*, %struct.bintime }

@crp_next = common dso_local global i32 0, align 4
@krp_next = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"crypto_ret_wait\00", align 1
@cryptostats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@crypto_timing = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_ret_worker*)* @crypto_ret_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_ret_proc(%struct.crypto_ret_worker* %0) #0 {
  %2 = alloca %struct.crypto_ret_worker*, align 8
  %3 = alloca %struct.cryptop*, align 8
  %4 = alloca %struct.cryptkop*, align 8
  store %struct.crypto_ret_worker* %0, %struct.crypto_ret_worker** %2, align 8
  %5 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %6 = call i32 @CRYPTO_RETW_LOCK(%struct.crypto_ret_worker* %5)
  br label %7

7:                                                ; preds = %108, %1
  %8 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %9 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %8, i32 0, i32 5
  %10 = call %struct.cryptop* @TAILQ_FIRST(i32* %9)
  store %struct.cryptop* %10, %struct.cryptop** %3, align 8
  %11 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %12 = icmp ne %struct.cryptop* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %15 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %18 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %23 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %22, i32 0, i32 5
  %24 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %25 = load i32, i32* @crp_next, align 4
  %26 = call i32 @TAILQ_REMOVE(i32* %23, %struct.cryptop* %24, i32 %25)
  %27 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %28 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %32

31:                                               ; preds = %13
  store %struct.cryptop* null, %struct.cryptop** %3, align 8
  br label %32

32:                                               ; preds = %31, %21
  br label %33

33:                                               ; preds = %32, %7
  %34 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %35 = icmp eq %struct.cryptop* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %38 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %37, i32 0, i32 1
  %39 = call %struct.cryptop* @TAILQ_FIRST(i32* %38)
  store %struct.cryptop* %39, %struct.cryptop** %3, align 8
  %40 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %41 = icmp ne %struct.cryptop* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %44 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %43, i32 0, i32 1
  %45 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %46 = load i32, i32* @crp_next, align 4
  %47 = call i32 @TAILQ_REMOVE(i32* %44, %struct.cryptop* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %36
  br label %49

49:                                               ; preds = %48, %33
  %50 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %51 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %50, i32 0, i32 4
  %52 = call %struct.cryptop* @TAILQ_FIRST(i32* %51)
  %53 = bitcast %struct.cryptop* %52 to %struct.cryptkop*
  store %struct.cryptkop* %53, %struct.cryptkop** %4, align 8
  %54 = load %struct.cryptkop*, %struct.cryptkop** %4, align 8
  %55 = icmp ne %struct.cryptkop* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %58 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %57, i32 0, i32 4
  %59 = load %struct.cryptkop*, %struct.cryptkop** %4, align 8
  %60 = bitcast %struct.cryptkop* %59 to %struct.cryptop*
  %61 = load i32, i32* @krp_next, align 4
  %62 = call i32 @TAILQ_REMOVE(i32* %58, %struct.cryptop* %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %49
  %64 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %65 = icmp ne %struct.cryptop* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load %struct.cryptkop*, %struct.cryptkop** %4, align 8
  %68 = icmp ne %struct.cryptkop* %67, null
  br i1 %68, label %69, label %93

69:                                               ; preds = %66, %63
  %70 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %71 = call i32 @CRYPTO_RETW_UNLOCK(%struct.crypto_ret_worker* %70)
  %72 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %73 = icmp ne %struct.cryptop* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %76 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %75, i32 0, i32 2
  %77 = load i32 (%struct.cryptop*)*, i32 (%struct.cryptop*)** %76, align 8
  %78 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %79 = call i32 %77(%struct.cryptop* %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.cryptkop*, %struct.cryptkop** %4, align 8
  %82 = icmp ne %struct.cryptkop* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.cryptkop*, %struct.cryptkop** %4, align 8
  %85 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %84, i32 0, i32 1
  %86 = load i32 (%struct.cryptop*)*, i32 (%struct.cryptop*)** %85, align 8
  %87 = load %struct.cryptkop*, %struct.cryptkop** %4, align 8
  %88 = bitcast %struct.cryptkop* %87 to %struct.cryptop*
  %89 = call i32 %86(%struct.cryptop* %88)
  br label %90

90:                                               ; preds = %83, %80
  %91 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %92 = call i32 @CRYPTO_RETW_LOCK(%struct.crypto_ret_worker* %91)
  br label %108

93:                                               ; preds = %66
  %94 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %95 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %94, i32 0, i32 1
  %96 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %97 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %96, i32 0, i32 3
  %98 = load i32, i32* @PWAIT, align 4
  %99 = call i32 @msleep(i32* %95, i32* %97, i32 %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  %100 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %101 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %109

105:                                              ; preds = %93
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryptostats, i32 0, i32 0), align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryptostats, i32 0, i32 0), align 4
  br label %108

108:                                              ; preds = %105, %90
  br label %7

109:                                              ; preds = %104
  %110 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %111 = call i32 @CRYPTO_RETW_UNLOCK(%struct.crypto_ret_worker* %110)
  %112 = load %struct.crypto_ret_worker*, %struct.crypto_ret_worker** %2, align 8
  %113 = getelementptr inbounds %struct.crypto_ret_worker, %struct.crypto_ret_worker* %112, i32 0, i32 1
  %114 = call i32 @crypto_finis(i32* %113)
  ret void
}

declare dso_local i32 @CRYPTO_RETW_LOCK(%struct.crypto_ret_worker*) #1

declare dso_local %struct.cryptop* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cryptop*, i32) #1

declare dso_local i32 @CRYPTO_RETW_UNLOCK(%struct.crypto_ret_worker*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @crypto_finis(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
