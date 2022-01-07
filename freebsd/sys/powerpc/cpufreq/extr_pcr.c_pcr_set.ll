; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pcr.c_pcr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pcr.c_pcr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.pcr_softc = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@SCOM_PCR_BIT = common dso_local global i32 0, align 4
@PSL_EE = common dso_local global i32 0, align 4
@SCOM_PCR = common dso_local global i32 0, align 4
@SCOM_PSR = common dso_local global i32 0, align 4
@PSR_RECEIVED = common dso_local global i32 0, align 4
@PSR_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @pcr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcr_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.pcr_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %10 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %11 = icmp eq %struct.cf_setting* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %95

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.pcr_softc* @device_get_softc(i32 %15)
  store %struct.pcr_softc* %16, %struct.pcr_softc** %6, align 8
  %17 = load i32, i32* @SCOM_PCR_BIT, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %19 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 10000
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct.pcr_softc*, %struct.pcr_softc** %6, align 8
  %24 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %58

30:                                               ; preds = %14
  %31 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %32 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 5000
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.pcr_softc*, %struct.pcr_softc** %6, align 8
  %37 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %57

43:                                               ; preds = %30
  %44 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %45 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 2500
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.pcr_softc*, %struct.pcr_softc** %6, align 8
  %50 = getelementptr inbounds %struct.pcr_softc, %struct.pcr_softc* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %48, %43
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %22
  %59 = call i32 (...) @mfmsr()
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @PSL_EE, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @mtmsr(i32 %63)
  %65 = call i32 (...) @isync()
  %66 = load i32, i32* @SCOM_PCR, align 4
  %67 = call i32 @write_scom(i32 %66, i32 0)
  %68 = load i32, i32* @SCOM_PCR, align 4
  %69 = load i32, i32* @SCOM_PCR_BIT, align 4
  %70 = call i32 @write_scom(i32 %68, i32 %69)
  %71 = load i32, i32* @SCOM_PCR, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @write_scom(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %89, %58
  %75 = call i32 @DELAY(i32 100)
  %76 = load i32, i32* @SCOM_PSR, align 4
  %77 = call i32 @read_scom(i32 %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @PSR_RECEIVED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @PSR_COMPLETED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %83, %78
  %90 = phi i1 [ false, %78 ], [ %88, %83 ]
  br i1 %90, label %74, label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @mtmsr(i32 %92)
  %94 = call i32 (...) @isync()
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %12
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.pcr_softc* @device_get_softc(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @write_scom(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @read_scom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
