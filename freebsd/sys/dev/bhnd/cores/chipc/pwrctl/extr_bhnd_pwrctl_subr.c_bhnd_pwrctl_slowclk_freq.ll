; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl_subr.c_bhnd_pwrctl_slowclk_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl_subr.c_bhnd_pwrctl_slowclk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pwrctl_softc = type { i32, i32 }

@PCICLK_CTL = common dso_local global i32 0, align 4
@SLOWCLK_CTL = common dso_local global i32 0, align 4
@CHIPC_PLL_SLOWCLK_CTL = common dso_local global i32 0, align 4
@CHIPC_SCC_CD = common dso_local global i32 0, align 4
@INSTACLK_CTL = common dso_local global i32 0, align 4
@CHIPC_SYS_CLK_CTL = common dso_local global i32 0, align 4
@CHIPC_SYCC_CD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown device type\0A\00", align 1
@CHIPC_LPOMAXFREQ = common dso_local global i32 0, align 4
@CHIPC_LPOMINFREQ = common dso_local global i32 0, align 4
@CHIPC_XTALMAXFREQ = common dso_local global i32 0, align 4
@CHIPC_XTALMINFREQ = common dso_local global i32 0, align 4
@CHIPC_PCIMAXFREQ = common dso_local global i32 0, align 4
@CHIPC_PCIMINFREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown slowclk source %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pwrctl_softc*, i32)* @bhnd_pwrctl_slowclk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pwrctl_slowclk_freq(%struct.bhnd_pwrctl_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_pwrctl_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bhnd_pwrctl_softc* %0, %struct.bhnd_pwrctl_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %10 = call i32 @bhnd_pwrctl_slowclk_src(%struct.bhnd_pwrctl_softc* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %12 = load i32, i32* @PCICLK_CTL, align 4
  %13 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 64, i32* %7, align 4
  br label %20

19:                                               ; preds = %15
  store i32 32, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %18
  br label %67

21:                                               ; preds = %2
  %22 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %23 = load i32, i32* @SLOWCLK_CTL, align 4
  %24 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %28 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CHIPC_PLL_SLOWCLK_CTL, align 4
  %31 = call i32 @bhnd_bus_read_4(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @CHIPC_SCC_CD, align 4
  %34 = call i32 @CHIPC_GET_BITS(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = mul nsw i32 4, %36
  store i32 %37, i32* %7, align 4
  br label %66

38:                                               ; preds = %21
  %39 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %40 = load i32, i32* @INSTACLK_CTL, align 4
  %41 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %59

47:                                               ; preds = %43
  %48 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %49 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CHIPC_SYS_CLK_CTL, align 4
  %52 = call i32 @bhnd_bus_read_4(i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @CHIPC_SYCC_CD, align 4
  %55 = call i32 @CHIPC_GET_BITS(i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  %58 = mul nsw i32 4, %57
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %47, %46
  br label %65

60:                                               ; preds = %38
  %61 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %62 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %106

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %26
  br label %67

67:                                               ; preds = %66, %20
  %68 = load i32, i32* %6, align 4
  switch i32 %68, label %96 [
    i32 130, label %69
    i32 128, label %78
    i32 129, label %87
  ]

69:                                               ; preds = %67
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @CHIPC_LPOMAXFREQ, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @CHIPC_LPOMINFREQ, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %8, align 4
  br label %102

78:                                               ; preds = %67
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @CHIPC_XTALMAXFREQ, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @CHIPC_XTALMINFREQ, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %8, align 4
  br label %102

87:                                               ; preds = %67
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @CHIPC_PCIMAXFREQ, align 4
  br label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @CHIPC_PCIMINFREQ, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %8, align 4
  br label %102

96:                                               ; preds = %67
  %97 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %98 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  store i32 0, i32* %3, align 4
  br label %106

102:                                              ; preds = %94, %85, %76
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %96, %60
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @bhnd_pwrctl_slowclk_src(%struct.bhnd_pwrctl_softc*) #1

declare dso_local i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc*, i32) #1

declare dso_local i32 @bhnd_bus_read_4(i32, i32) #1

declare dso_local i32 @CHIPC_GET_BITS(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
