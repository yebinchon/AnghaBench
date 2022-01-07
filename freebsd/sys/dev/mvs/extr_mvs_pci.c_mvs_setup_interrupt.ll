; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_setup_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_setup_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_controller = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@mvs_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to setup interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mvs_setup_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_setup_interrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_controller*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.mvs_controller* @device_get_softc(i32 %6)
  store %struct.mvs_controller* %7, %struct.mvs_controller** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_name(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = call i32 @resource_int_value(i32 %9, i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %5)
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_msi_count(i32 %20)
  %22 = call i32 @min(i32 1, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %16
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @pci_alloc_msi(i32 %28, i32* %5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %27, %24
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %35 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %41 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %46 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* @RF_SHAREABLE, align 4
  %49 = load i32, i32* @RF_ACTIVE, align 4
  %50 = or i32 %48, %49
  %51 = call i32* @bus_alloc_resource_any(i32 %43, i32 %44, i32* %47, i32 %50)
  %52 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %53 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32* %51, i32** %54, align 8
  %55 = icmp ne i32* %51, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %32
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %93

60:                                               ; preds = %32
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %63 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %67 = load i32, i32* @mvs_intr, align 4
  %68 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %69 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %70 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = call i64 @bus_setup_intr(i32 %61, i32* %65, i32 %66, i32* null, i32 %67, %struct.mvs_controller* %68, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %60
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @SYS_RES_IRQ, align 4
  %79 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %80 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %84 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @bus_release_resource(i32 %77, i32 %78, i32 %82, i32* %86)
  %88 = load %struct.mvs_controller*, %struct.mvs_controller** %4, align 8
  %89 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %74, %56
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.mvs_controller* @device_get_softc(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.mvs_controller*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
