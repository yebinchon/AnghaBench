; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_nop_xceiv.c_usb_nop_xceiv_phy_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_nop_xceiv.c_usb_nop_xceiv_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i32 }
%struct.usb_nop_xceiv_softc = type { i64, i64, i32 }

@ERANGE = common dso_local global i32 0, align 4
@CLK_SET_ROUND_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot set clock to %dMhz\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot %sable the clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Cannot %sable the regulator\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phynode*, i32)* @usb_nop_xceiv_phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_nop_xceiv_phy_enable(%struct.phynode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phynode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_nop_xceiv_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.phynode* %0, %struct.phynode** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.phynode*, %struct.phynode** %4, align 8
  %11 = call i32 @phynode_get_device(%struct.phynode* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.phynode*, %struct.phynode** %4, align 8
  %13 = call i64 @phynode_get_id(%struct.phynode* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.usb_nop_xceiv_softc* @device_get_softc(i32 %14)
  store %struct.usb_nop_xceiv_softc* %15, %struct.usb_nop_xceiv_softc** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ERANGE, align 4
  store i32 %19, i32* %3, align 4
  br label %99

20:                                               ; preds = %2
  %21 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %6, align 8
  %22 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %6, align 8
  %30 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %6, align 8
  %33 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @CLK_SET_ROUND_ANY, align 4
  %36 = call i32 @clk_set_freq(i32 %31, i64 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %6, align 8
  %42 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %97

46:                                               ; preds = %28
  %47 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %6, align 8
  %48 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clk_enable(i32 %49)
  store i32 %50, i32* %9, align 4
  br label %56

51:                                               ; preds = %25
  %52 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %6, align 8
  %53 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @clk_disable(i32 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %65 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %97

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %20
  %68 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %6, align 8
  %69 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %6, align 8
  %77 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @regulator_enable(i64 %78)
  store i32 %79, i32* %9, align 4
  br label %85

80:                                               ; preds = %72
  %81 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %6, align 8
  %82 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @regulator_disable(i64 %83)
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %94 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  br label %97

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %67
  store i32 0, i32* %3, align 4
  br label %99

97:                                               ; preds = %88, %59, %39
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %96, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @phynode_get_device(%struct.phynode*) #1

declare dso_local i64 @phynode_get_id(%struct.phynode*) #1

declare dso_local %struct.usb_nop_xceiv_softc* @device_get_softc(i32) #1

declare dso_local i32 @clk_set_freq(i32, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
