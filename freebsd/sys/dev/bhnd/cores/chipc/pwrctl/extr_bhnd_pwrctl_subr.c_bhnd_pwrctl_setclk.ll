; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl_subr.c_bhnd_pwrctl_setclk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl_subr.c_bhnd_pwrctl_setclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pwrctl_softc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@FIXED_CLK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SLOWCLK_CTL = common dso_local global i32 0, align 4
@CHIPC_PLL_SLOWCLK_CTL = common dso_local global i32 0, align 4
@CHIPC_SYS_CLK_CTL = common dso_local global i32 0, align 4
@CHIPC_SCC_XC = common dso_local global i32 0, align 4
@CHIPC_SCC_FS = common dso_local global i32 0, align 4
@CHIPC_SCC_IP = common dso_local global i32 0, align 4
@INSTACLK_CTL = common dso_local global i32 0, align 4
@CHIPC_SYCC_HR = common dso_local global i32 0, align 4
@CHIPC_PLL_DELAY = common dso_local global i32 0, align 4
@CHIPC_SCC_SS_MASK = common dso_local global i32 0, align 4
@CHIPC_SCC_SS_XTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pwrctl_setclk(%struct.bhnd_pwrctl_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_pwrctl_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bhnd_pwrctl_softc* %0, %struct.bhnd_pwrctl_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @PWRCTL_LOCK_ASSERT(%struct.bhnd_pwrctl_softc* %7, i32 %8)
  %10 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %11 = load i32, i32* @FIXED_CLK, align 4
  %12 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  store i32 %15, i32* %3, align 4
  br label %161

16:                                               ; preds = %2
  %17 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bhnd_get_hwrev(i32 %19)
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ENODEV, align 4
  store i32 %23, i32* %3, align 4
  br label %161

24:                                               ; preds = %16
  %25 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %26 = load i32, i32* @SLOWCLK_CTL, align 4
  %27 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %31 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CHIPC_PLL_SLOWCLK_CTL, align 4
  %34 = call i32 @bhnd_bus_read_4(i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %41

35:                                               ; preds = %24
  %36 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CHIPC_SYS_CLK_CTL, align 4
  %40 = call i32 @bhnd_bus_read_4(i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %158 [
    i32 128, label %43
    i32 129, label %98
  ]

43:                                               ; preds = %41
  %44 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %45 = load i32, i32* @SLOWCLK_CTL, align 4
  %46 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load i32, i32* @CHIPC_SCC_XC, align 4
  %50 = load i32, i32* @CHIPC_SCC_FS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CHIPC_SCC_IP, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @CHIPC_SCC_IP, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %61 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bhnd_pwrctl_hostb_ungate_clock(i32 %62, i32 128)
  br label %76

64:                                               ; preds = %43
  %65 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %66 = load i32, i32* @INSTACLK_CTL, align 4
  %67 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @CHIPC_SYCC_HR, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @ENODEV, align 4
  store i32 %74, i32* %3, align 4
  br label %161

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %78 = load i32, i32* @SLOWCLK_CTL, align 4
  %79 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %83 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CHIPC_PLL_SLOWCLK_CTL, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @bhnd_bus_write_4(i32 %84, i32 %85, i32 %86)
  br label %95

88:                                               ; preds = %76
  %89 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %90 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CHIPC_SYS_CLK_CTL, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @bhnd_bus_write_4(i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %81
  %96 = load i32, i32* @CHIPC_PLL_DELAY, align 4
  %97 = call i32 @DELAY(i32 %96)
  br label %160

98:                                               ; preds = %41
  %99 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %100 = load i32, i32* @SLOWCLK_CTL, align 4
  %101 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %138

103:                                              ; preds = %98
  %104 = load i32, i32* @CHIPC_SCC_FS, align 4
  %105 = load i32, i32* @CHIPC_SCC_IP, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @CHIPC_SCC_XC, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @CHIPC_SCC_SS_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* @CHIPC_SCC_SS_XTAL, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %103
  %118 = load i32, i32* @CHIPC_SCC_XC, align 4
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %117, %103
  %122 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %123 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CHIPC_PLL_SLOWCLK_CTL, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @bhnd_bus_write_4(i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @CHIPC_SCC_XC, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %121
  %133 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %134 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @bhnd_pwrctl_hostb_gate_clock(i32 %135, i32 128)
  br label %137

137:                                              ; preds = %132, %121
  br label %157

138:                                              ; preds = %98
  %139 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %140 = load i32, i32* @INSTACLK_CTL, align 4
  %141 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = load i32, i32* @CHIPC_SYCC_HR, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %4, align 8
  %149 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @CHIPC_SYS_CLK_CTL, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @bhnd_bus_write_4(i32 %150, i32 %151, i32 %152)
  br label %156

154:                                              ; preds = %138
  %155 = load i32, i32* @ENODEV, align 4
  store i32 %155, i32* %3, align 4
  br label %161

156:                                              ; preds = %143
  br label %157

157:                                              ; preds = %156, %137
  br label %160

158:                                              ; preds = %41
  %159 = load i32, i32* @ENODEV, align 4
  store i32 %159, i32* %3, align 4
  br label %161

160:                                              ; preds = %157, %95
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %158, %154, %73, %22, %14
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @PWRCTL_LOCK_ASSERT(%struct.bhnd_pwrctl_softc*, i32) #1

declare dso_local i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc*, i32) #1

declare dso_local i32 @bhnd_get_hwrev(i32) #1

declare dso_local i32 @bhnd_bus_read_4(i32, i32) #1

declare dso_local i32 @bhnd_pwrctl_hostb_ungate_clock(i32, i32) #1

declare dso_local i32 @bhnd_bus_write_4(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bhnd_pwrctl_hostb_gate_clock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
