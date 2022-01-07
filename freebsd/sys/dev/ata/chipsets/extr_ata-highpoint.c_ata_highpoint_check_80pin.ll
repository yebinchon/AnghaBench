; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-highpoint.c_ata_highpoint_check_80pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-highpoint.c_ata_highpoint_check_80pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ata_channel = type { i64 }

@HPT_374 = common dso_local global i64 0, align 8
@ata_dma_check_80pin = common dso_local global i64 0, align 8
@ATA_UDMA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ata_highpoint_check_80pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_highpoint_check_80pin(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_pci_controller*, align 8
  %7 = alloca %struct.ata_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %15, %struct.ata_pci_controller** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @device_get_softc(i32 %16)
  %18 = bitcast i8* %17 to %struct.ata_channel*
  store %struct.ata_channel* %18, %struct.ata_channel** %7, align 8
  %19 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %20 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HPT_374, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @pci_get_function(i32 %27)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %32 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 87, i32 83
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @pci_read_config(i32 %37, i32 %38, i32 1)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, 128
  %44 = call i32 @pci_write_config(i32 %40, i32 %41, i32 %43, i32 1)
  br label %54

45:                                               ; preds = %26, %2
  store i32 91, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @pci_read_config(i32 %46, i32 %47, i32 1)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 254
  %53 = call i32 @pci_write_config(i32 %49, i32 %50, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %45, %30
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @pci_read_config(i32 %55, i32 90, i32 1)
  %57 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %58 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 2
  %63 = and i32 %56, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @pci_write_config(i32 %64, i32 %65, i32 %66, i32 1)
  %68 = load i64, i64* @ata_dma_check_80pin, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %54
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @ATA_UDMA2, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @ata_print_cable(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %77, %74, %70, %54
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @ata_print_cable(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
