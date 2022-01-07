; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_nop_xceiv.c_usb_nop_xceiv_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_nop_xceiv.c_usb_nop_xceiv_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_nop_xceiv_softc = type { i64, i32, i32, i32 }
%struct.phynode = type { i32 }
%struct.phynode_init_def = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"main_clk\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"clock property is mandatory if clock-frequency is present\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"vcc-supply\00", align 1
@usb_nop_xceiv_phynode_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to create USB NOP PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usb_nop_xceiv_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_nop_xceiv_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_nop_xceiv_softc*, align 8
  %5 = alloca %struct.phynode*, align 8
  %6 = alloca %struct.phynode_init_def, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_nop_xceiv_softc* @device_get_softc(i32 %9)
  store %struct.usb_nop_xceiv_softc* %10, %struct.usb_nop_xceiv_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %4, align 8
  %13 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ofw_bus_get_node(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %4, align 8
  %18 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %17, i32 0, i32 0
  %19 = call i32 @OF_getencprop(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %18, i32 4)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %4, align 8
  %23 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %22, i32 0, i32 2
  %24 = call i32 @clk_get_by_ofw_name(i32 %20, i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %4, align 8
  %29 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %66

36:                                               ; preds = %27, %1
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.usb_nop_xceiv_softc*, %struct.usb_nop_xceiv_softc** %4, align 8
  %40 = getelementptr inbounds %struct.usb_nop_xceiv_softc, %struct.usb_nop_xceiv_softc* %39, i32 0, i32 1
  %41 = call i32 @regulator_get_by_ofw_property(i32 %37, i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %40)
  %42 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %6, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %6, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call %struct.phynode* @phynode_create(i32 %45, i32* @usb_nop_xceiv_phynode_class, %struct.phynode_init_def* %6)
  store %struct.phynode* %46, %struct.phynode** %5, align 8
  %47 = load %struct.phynode*, %struct.phynode** %5, align 8
  %48 = icmp eq %struct.phynode* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %2, align 4
  br label %66

53:                                               ; preds = %36
  %54 = load %struct.phynode*, %struct.phynode** %5, align 8
  %55 = call i32* @phynode_register(%struct.phynode* %54)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @OF_xref_from_node(i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @OF_device_register_xref(i32 %63, i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %57, %49, %32
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.usb_nop_xceiv_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @regulator_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local %struct.phynode* @phynode_create(i32, i32*, %struct.phynode_init_def*) #1

declare dso_local i32* @phynode_register(%struct.phynode*) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
