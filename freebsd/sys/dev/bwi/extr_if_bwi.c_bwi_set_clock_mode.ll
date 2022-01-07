; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_set_clock_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_set_clock_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, %struct.bwi_regwin }
%struct.bwi_regwin = type { i32 }

@BWI_CAP_CLKMODE = common dso_local global i32 0, align 4
@BWI_CLOCK_CTRL = common dso_local global i32 0, align 4
@BWI_CLOCK_CTRL_CLKSRC = common dso_local global i32 0, align 4
@BWI_CLOCK_CTRL_SLOW = common dso_local global i32 0, align 4
@BWI_CLOCK_CTRL_IGNPLL = common dso_local global i32 0, align 4
@BWI_CLOCK_CTRL_NODYN = common dso_local global i32 0, align 4
@BWI_CLKSRC_CS_OSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*, i32)* @bwi_set_clock_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_set_clock_mode(%struct.bwi_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwi_regwin*, align 8
  %7 = alloca %struct.bwi_regwin*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %13 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %12, i32 0, i32 1
  store %struct.bwi_regwin* %13, %struct.bwi_regwin** %7, align 8
  %14 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %15 = call i32 @BWI_REGWIN_EXIST(%struct.bwi_regwin* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

18:                                               ; preds = %2
  %19 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %20 = getelementptr inbounds %struct.bwi_regwin, %struct.bwi_regwin* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 10
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %25 = getelementptr inbounds %struct.bwi_regwin, %struct.bwi_regwin* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18
  store i32 0, i32* %3, align 4
  br label %102

29:                                               ; preds = %23
  %30 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BWI_CAP_CLKMODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %102

37:                                               ; preds = %29
  %38 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %39 = load %struct.bwi_regwin*, %struct.bwi_regwin** %7, align 8
  %40 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %38, %struct.bwi_regwin* %39, %struct.bwi_regwin** %6)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %102

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 129
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %50 = call i32 @bwi_power_on(%struct.bwi_softc* %49, i32 0)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %53 = load i32, i32* @BWI_CLOCK_CTRL, align 4
  %54 = call i32 @CSR_READ_4(%struct.bwi_softc* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @BWI_CLOCK_CTRL_CLKSRC, align 4
  %57 = call i32 @__SHIFTOUT(i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %5, align 4
  switch i32 %58, label %88 [
    i32 129, label %59
    i32 128, label %67
    i32 130, label %71
  ]

59:                                               ; preds = %51
  %60 = load i32, i32* @BWI_CLOCK_CTRL_SLOW, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @BWI_CLOCK_CTRL_IGNPLL, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %88

67:                                               ; preds = %51
  %68 = load i32, i32* @BWI_CLOCK_CTRL_SLOW, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %88

71:                                               ; preds = %51
  %72 = load i32, i32* @BWI_CLOCK_CTRL_SLOW, align 4
  %73 = load i32, i32* @BWI_CLOCK_CTRL_IGNPLL, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @BWI_CLOCK_CTRL_NODYN, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @BWI_CLKSRC_CS_OSC, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load i32, i32* @BWI_CLOCK_CTRL_NODYN, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  store i32 1, i32* %11, align 4
  br label %87

87:                                               ; preds = %83, %71
  br label %88

88:                                               ; preds = %51, %87, %67, %59
  %89 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %90 = load i32, i32* @BWI_CLOCK_CTRL, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %97 = call i32 @bwi_power_off(%struct.bwi_softc* %96, i32 0)
  br label %98

98:                                               ; preds = %95, %88
  %99 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %100 = load %struct.bwi_regwin*, %struct.bwi_regwin** %6, align 8
  %101 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %99, %struct.bwi_regwin* %100, %struct.bwi_regwin** null)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %43, %36, %28, %17
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @BWI_REGWIN_EXIST(%struct.bwi_regwin*) #1

declare dso_local i32 @bwi_regwin_switch(%struct.bwi_softc*, %struct.bwi_regwin*, %struct.bwi_regwin**) #1

declare dso_local i32 @bwi_power_on(%struct.bwi_softc*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @bwi_power_off(%struct.bwi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
