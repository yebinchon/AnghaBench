; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_power_on_acut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_power_on_acut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32 }

@R92S_SPS0_CTRL = common dso_local global i32 0, align 4
@R92S_AFE_MISC = common dso_local global i32 0, align 4
@R92S_AFE_MISC_BGEN = common dso_local global i32 0, align 4
@R92S_AFE_MISC_MBEN = common dso_local global i32 0, align 4
@R92S_LDOA15_CTRL = common dso_local global i32 0, align 4
@R92S_LDA15_EN = common dso_local global i32 0, align 4
@R92S_SPS1_CTRL = common dso_local global i32 0, align 4
@R92S_SPS1_LDEN = common dso_local global i32 0, align 4
@R92S_SPS1_SWEN = common dso_local global i32 0, align 4
@R92S_SYS_ISO_CTRL = common dso_local global i32 0, align 4
@R92S_SYS_FUNC_EN = common dso_local global i32 0, align 4
@R92S_AFE_XTAL_CTRL = common dso_local global i32 0, align 4
@R92S_AFE_PLL_CTRL = common dso_local global i32 0, align 4
@R92S_SYS_CLKR = common dso_local global i32 0, align 4
@R92S_SYS_CLKSEL = common dso_local global i32 0, align 4
@R92S_MAC_CLK_EN = common dso_local global i32 0, align 4
@R92S_SYS_CLK_EN = common dso_local global i32 0, align 4
@R92S_PMC_FSM = common dso_local global i32 0, align 4
@R92S_SWHW_SEL = common dso_local global i32 0, align 4
@R92S_FWHW_SEL = common dso_local global i32 0, align 4
@R92S_CR = common dso_local global i32 0, align 4
@R92S_SYS_CPU_CLKSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsu_softc*)* @rsu_power_on_acut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_power_on_acut(%struct.rsu_softc* %0) #0 {
  %2 = alloca %struct.rsu_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rsu_softc* %0, %struct.rsu_softc** %2, align 8
  %4 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %5 = load i32, i32* @R92S_SPS0_CTRL, align 4
  %6 = add nsw i32 %5, 1
  %7 = call i32 @rsu_write_1(%struct.rsu_softc* %4, i32 %6, i32 83)
  %8 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %9 = load i32, i32* @R92S_SPS0_CTRL, align 4
  %10 = add nsw i32 %9, 0
  %11 = call i32 @rsu_write_1(%struct.rsu_softc* %8, i32 %10, i32 87)
  %12 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %13 = load i32, i32* @R92S_AFE_MISC, align 4
  %14 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %15 = load i32, i32* @R92S_AFE_MISC, align 4
  %16 = call i32 @rsu_read_1(%struct.rsu_softc* %14, i32 %15)
  %17 = load i32, i32* @R92S_AFE_MISC_BGEN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @R92S_AFE_MISC_MBEN, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @rsu_write_1(%struct.rsu_softc* %12, i32 %13, i32 %20)
  %22 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %23 = load i32, i32* @R92S_LDOA15_CTRL, align 4
  %24 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %25 = load i32, i32* @R92S_LDOA15_CTRL, align 4
  %26 = call i32 @rsu_read_1(%struct.rsu_softc* %24, i32 %25)
  %27 = load i32, i32* @R92S_LDA15_EN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @rsu_write_1(%struct.rsu_softc* %22, i32 %23, i32 %28)
  %30 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %31 = load i32, i32* @R92S_SPS1_CTRL, align 4
  %32 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %33 = load i32, i32* @R92S_SPS1_CTRL, align 4
  %34 = call i32 @rsu_read_1(%struct.rsu_softc* %32, i32 %33)
  %35 = load i32, i32* @R92S_SPS1_LDEN, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @rsu_write_1(%struct.rsu_softc* %30, i32 %31, i32 %36)
  %38 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %39 = call i32 @rsu_ms_delay(%struct.rsu_softc* %38, i32 2000)
  %40 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %41 = load i32, i32* @R92S_SPS1_CTRL, align 4
  %42 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %43 = load i32, i32* @R92S_SPS1_CTRL, align 4
  %44 = call i32 @rsu_read_1(%struct.rsu_softc* %42, i32 %43)
  %45 = load i32, i32* @R92S_SPS1_SWEN, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @rsu_write_1(%struct.rsu_softc* %40, i32 %41, i32 %46)
  %48 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %49 = load i32, i32* @R92S_SPS1_CTRL, align 4
  %50 = call i32 @rsu_write_4(%struct.rsu_softc* %48, i32 %49, i32 10990183)
  %51 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %52 = load i32, i32* @R92S_SYS_ISO_CTRL, align 4
  %53 = add nsw i32 %52, 1
  %54 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %55 = load i32, i32* @R92S_SYS_ISO_CTRL, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @rsu_read_1(%struct.rsu_softc* %54, i32 %56)
  %58 = or i32 %57, 8
  %59 = call i32 @rsu_write_1(%struct.rsu_softc* %51, i32 %53, i32 %58)
  %60 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %61 = load i32, i32* @R92S_SYS_FUNC_EN, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %64 = load i32, i32* @R92S_SYS_FUNC_EN, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @rsu_read_1(%struct.rsu_softc* %63, i32 %65)
  %67 = or i32 %66, 32
  %68 = call i32 @rsu_write_1(%struct.rsu_softc* %60, i32 %62, i32 %67)
  %69 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %70 = load i32, i32* @R92S_SYS_ISO_CTRL, align 4
  %71 = add nsw i32 %70, 1
  %72 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %73 = load i32, i32* @R92S_SYS_ISO_CTRL, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @rsu_read_1(%struct.rsu_softc* %72, i32 %74)
  %76 = and i32 %75, -145
  %77 = call i32 @rsu_write_1(%struct.rsu_softc* %69, i32 %71, i32 %76)
  %78 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %79 = load i32, i32* @R92S_AFE_XTAL_CTRL, align 4
  %80 = add nsw i32 %79, 1
  %81 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %82 = load i32, i32* @R92S_AFE_XTAL_CTRL, align 4
  %83 = add nsw i32 %82, 1
  %84 = call i32 @rsu_read_1(%struct.rsu_softc* %81, i32 %83)
  %85 = and i32 %84, -5
  %86 = call i32 @rsu_write_1(%struct.rsu_softc* %78, i32 %80, i32 %85)
  %87 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %88 = load i32, i32* @R92S_AFE_PLL_CTRL, align 4
  %89 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %90 = load i32, i32* @R92S_AFE_PLL_CTRL, align 4
  %91 = call i32 @rsu_read_1(%struct.rsu_softc* %89, i32 %90)
  %92 = or i32 %91, 17
  %93 = call i32 @rsu_write_1(%struct.rsu_softc* %87, i32 %88, i32 %92)
  %94 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %95 = load i32, i32* @R92S_SYS_ISO_CTRL, align 4
  %96 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %97 = load i32, i32* @R92S_SYS_ISO_CTRL, align 4
  %98 = call i32 @rsu_read_1(%struct.rsu_softc* %96, i32 %97)
  %99 = and i32 %98, -18
  %100 = call i32 @rsu_write_1(%struct.rsu_softc* %94, i32 %95, i32 %99)
  %101 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %102 = load i32, i32* @R92S_SYS_CLKR, align 4
  %103 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %104 = load i32, i32* @R92S_SYS_CLKR, align 4
  %105 = call i32 @rsu_read_2(%struct.rsu_softc* %103, i32 %104)
  %106 = load i32, i32* @R92S_SYS_CLKSEL, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = call i32 @rsu_write_2(%struct.rsu_softc* %101, i32 %102, i32 %108)
  %110 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %111 = load i32, i32* @R92S_SYS_CLKR, align 4
  %112 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %113 = load i32, i32* @R92S_SYS_CLKR, align 4
  %114 = call i32 @rsu_read_2(%struct.rsu_softc* %112, i32 %113)
  %115 = load i32, i32* @R92S_MAC_CLK_EN, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @R92S_SYS_CLK_EN, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @rsu_write_2(%struct.rsu_softc* %110, i32 %111, i32 %118)
  %120 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %121 = load i32, i32* @R92S_PMC_FSM, align 4
  %122 = call i32 @rsu_write_1(%struct.rsu_softc* %120, i32 %121, i32 2)
  %123 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %124 = load i32, i32* @R92S_SYS_FUNC_EN, align 4
  %125 = add nsw i32 %124, 1
  %126 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %127 = load i32, i32* @R92S_SYS_FUNC_EN, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i32 @rsu_read_1(%struct.rsu_softc* %126, i32 %128)
  %130 = or i32 %129, 8
  %131 = call i32 @rsu_write_1(%struct.rsu_softc* %123, i32 %125, i32 %130)
  %132 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %133 = load i32, i32* @R92S_SYS_FUNC_EN, align 4
  %134 = add nsw i32 %133, 1
  %135 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %136 = load i32, i32* @R92S_SYS_FUNC_EN, align 4
  %137 = add nsw i32 %136, 1
  %138 = call i32 @rsu_read_1(%struct.rsu_softc* %135, i32 %137)
  %139 = or i32 %138, 128
  %140 = call i32 @rsu_write_1(%struct.rsu_softc* %132, i32 %134, i32 %139)
  %141 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %142 = load i32, i32* @R92S_SYS_CLKR, align 4
  %143 = call i32 @rsu_read_2(%struct.rsu_softc* %141, i32 %142)
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* @R92S_SWHW_SEL, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %144, %146
  %148 = load i32, i32* @R92S_FWHW_SEL, align 4
  %149 = or i32 %147, %148
  store i32 %149, i32* %3, align 4
  %150 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %151 = load i32, i32* @R92S_SYS_CLKR, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @rsu_write_2(%struct.rsu_softc* %150, i32 %151, i32 %152)
  %154 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %155 = load i32, i32* @R92S_CR, align 4
  %156 = call i32 @rsu_write_2(%struct.rsu_softc* %154, i32 %155, i32 14332)
  %157 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %158 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %159 = call i32 @rsu_read_1(%struct.rsu_softc* %158, i32 65116)
  %160 = or i32 %159, 128
  %161 = call i32 @rsu_write_1(%struct.rsu_softc* %157, i32 65116, i32 %160)
  %162 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %163 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %164 = call i32 @rsu_read_1(%struct.rsu_softc* %163, i32 171)
  %165 = or i32 %164, 192
  %166 = call i32 @rsu_write_1(%struct.rsu_softc* %162, i32 171, i32 %165)
  %167 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %168 = load i32, i32* @R92S_SYS_CLKR, align 4
  %169 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %170 = load i32, i32* @R92S_SYS_CLKR, align 4
  %171 = call i32 @rsu_read_1(%struct.rsu_softc* %169, i32 %170)
  %172 = load i32, i32* @R92S_SYS_CPU_CLKSEL, align 4
  %173 = xor i32 %172, -1
  %174 = and i32 %171, %173
  %175 = call i32 @rsu_write_1(%struct.rsu_softc* %167, i32 %168, i32 %174)
  ret void
}

declare dso_local i32 @rsu_write_1(%struct.rsu_softc*, i32, i32) #1

declare dso_local i32 @rsu_read_1(%struct.rsu_softc*, i32) #1

declare dso_local i32 @rsu_ms_delay(%struct.rsu_softc*, i32) #1

declare dso_local i32 @rsu_write_4(%struct.rsu_softc*, i32, i32) #1

declare dso_local i32 @rsu_write_2(%struct.rsu_softc*, i32, i32) #1

declare dso_local i32 @rsu_read_2(%struct.rsu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
