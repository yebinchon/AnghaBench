; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_setup_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_setup_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_controller = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SIIS_Q_NOMSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@siis_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to setup interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @siis_setup_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siis_setup_interrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.siis_controller*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.siis_controller* @device_get_softc(i32 %6)
  store %struct.siis_controller* %7, %struct.siis_controller** %4, align 8
  %8 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %9 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SIIS_Q_NOMSI, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 1
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_get_name(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_unit(i32 %18)
  %20 = call i32 @resource_int_value(i32 %17, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %5)
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pci_msi_count(i32 %28)
  %30 = call i32 @min(i32 1, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @pci_alloc_msi(i32 %36, i32* %5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %35, %32
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %46 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SYS_RES_IRQ, align 4
  %50 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %51 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* @RF_SHAREABLE, align 4
  %54 = load i32, i32* @RF_ACTIVE, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @bus_alloc_resource_any(i32 %48, i32 %49, i32* %52, i32 %55)
  %57 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %58 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = icmp ne i32 %56, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %40
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %2, align 4
  br label %84

65:                                               ; preds = %40
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %68 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %72 = load i32, i32* @siis_intr, align 4
  %73 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %74 = load %struct.siis_controller*, %struct.siis_controller** %4, align 8
  %75 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call i64 @bus_setup_intr(i32 %66, i32 %70, i32 %71, i32* null, i32 %72, %struct.siis_controller* %73, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %79, %61
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.siis_controller* @device_get_softc(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.siis_controller*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
