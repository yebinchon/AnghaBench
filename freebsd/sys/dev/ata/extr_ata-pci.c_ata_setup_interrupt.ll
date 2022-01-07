; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_setup_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_setup_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to setup interrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_setup_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ata_pci_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ata_pci_controller* @device_get_softc(i32 %9)
  store %struct.ata_pci_controller* %10, %struct.ata_pci_controller** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %12 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %98, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @device_get_name(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @device_get_unit(i32 %18)
  %20 = call i64 @resource_int_value(i32 %17, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %7)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %22, %15
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @pci_msi_count(i32 %30)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @pci_alloc_msi(i32 %34, i32* %8)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %39 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %44

40:                                               ; preds = %33, %29, %26
  store i32 0, i32* %8, align 4
  %41 = load i32, i32* @ATA_IRQ_RID, align 4
  %42 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %43 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SYS_RES_IRQ, align 4
  %47 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %48 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %47, i32 0, i32 0
  %49 = load i32, i32* @RF_SHAREABLE, align 4
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @bus_alloc_resource_any(i32 %45, i32 %46, i32* %48, i32 %51)
  %53 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %54 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = icmp ne i32 %52, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @pci_release_msi(i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %3, align 4
  br label %99

66:                                               ; preds = %44
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %69 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ATA_INTR_FLAGS, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %74 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %75 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %74, i32 0, i32 2
  %76 = call i64 @bus_setup_intr(i32 %67, i32 %70, i32 %71, i32* null, i8* %72, %struct.ata_pci_controller* %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %66
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @SYS_RES_IRQ, align 4
  %83 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %84 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %87 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @bus_release_resource(i32 %81, i32 %82, i32 %85, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %78
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @pci_release_msi(i32 %93)
  br label %95

95:                                               ; preds = %92, %78
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %3, align 4
  br label %99

97:                                               ; preds = %66
  br label %98

98:                                               ; preds = %97, %2
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %95, %64
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i8*, %struct.ata_pci_controller*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
