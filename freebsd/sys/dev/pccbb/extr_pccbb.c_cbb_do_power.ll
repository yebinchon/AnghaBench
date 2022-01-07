; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_do_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_do_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32* }

@EXCA_PWRCTL = common dso_local global i32 0, align 4
@EXCA_PWRCTL_OE = common dso_local global i32 0, align 4
@CBB_SOCKET_STATE = common dso_local global i32 0, align 4
@CBB_STATE_POWER_CYCLE = common dso_local global i32 0, align 4
@CARD_OFF = common dso_local global i32 0, align 4
@CARD_YV_CARD = common dso_local global i32 0, align 4
@YV = common dso_local global i32 0, align 4
@CARD_XV_CARD = common dso_local global i32 0, align 4
@XV = common dso_local global i32 0, align 4
@CARD_3V_CARD = common dso_local global i32 0, align 4
@CARD_5V_CARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown card voltage\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cbb_do_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbb_do_power(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cbb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.cbb_softc* @device_get_softc(i32 %8)
  store %struct.cbb_softc* %9, %struct.cbb_softc** %4, align 8
  %10 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %11 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* @EXCA_PWRCTL, align 4
  %15 = load i32, i32* @EXCA_PWRCTL_OE, align 4
  %16 = call i32 @exca_clrb(i32* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @cbb_detect_voltage(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @cbb_current_voltage(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %22 = load i32, i32* @CBB_SOCKET_STATE, align 4
  %23 = call i32 @cbb_get(%struct.cbb_softc* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CBB_STATE_POWER_CYCLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %83

34:                                               ; preds = %28, %1
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @CARD_OFF, align 4
  %37 = call i32 @cbb_power(i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CARD_YV_CARD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @YV, align 4
  %45 = call i32 @CARD_VCC(i32 %44)
  %46 = call i32 @cbb_power(i32 %43, i32 %45)
  br label %82

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @CARD_XV_CARD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @XV, align 4
  %55 = call i32 @CARD_VCC(i32 %54)
  %56 = call i32 @cbb_power(i32 %53, i32 %55)
  br label %81

57:                                               ; preds = %47
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @CARD_3V_CARD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @CARD_VCC(i32 3)
  %65 = call i32 @cbb_power(i32 %63, i32 %64)
  br label %80

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @CARD_5V_CARD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @CARD_VCC(i32 5)
  %74 = call i32 @cbb_power(i32 %72, i32 %73)
  br label %79

75:                                               ; preds = %66
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ENXIO, align 4
  store i32 %78, i32* %2, align 4
  br label %83

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %52
  br label %82

82:                                               ; preds = %81, %42
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %75, %33
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @exca_clrb(i32*, i32, i32) #1

declare dso_local i32 @cbb_detect_voltage(i32) #1

declare dso_local i32 @cbb_current_voltage(i32) #1

declare dso_local i32 @cbb_get(%struct.cbb_softc*, i32) #1

declare dso_local i32 @cbb_power(i32, i32) #1

declare dso_local i32 @CARD_VCC(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
