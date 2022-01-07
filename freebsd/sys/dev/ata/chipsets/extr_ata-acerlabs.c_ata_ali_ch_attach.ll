; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ata_channel = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ALI_NEW = common dso_local global i32 0, align 4
@ATA_CHECKS_CABLE = common dso_local global i32 0, align 4
@ATA_NO_48BIT_DMA = common dso_local global i32 0, align 4
@ATA_NO_ATAPI_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_ali_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_ali_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @device_get_parent(i32 %6)
  %8 = call i8* @device_get_softc(i32 %7)
  %9 = bitcast i8* %8 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %9, %struct.ata_pci_controller** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i8* @device_get_softc(i32 %10)
  %12 = bitcast i8* %11 to %struct.ata_channel*
  store %struct.ata_channel* %12, %struct.ata_channel** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ata_pci_ch_attach(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %79

18:                                               ; preds = %1
  %19 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %20 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ALI_NEW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %29 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 199
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @ATA_CHECKS_CABLE, align 4
  %36 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %37 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %27, %18
  %41 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %42 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %45, 196
  br i1 %46, label %47, label %63

47:                                               ; preds = %40
  %48 = load i32, i32* @ATA_NO_48BIT_DMA, align 4
  %49 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %50 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %54 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 131072
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %60 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 131072, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %47
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %65 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ALI_NEW, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load i32, i32* @ATA_NO_ATAPI_DMA, align 4
  %74 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %75 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %63
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %16
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @ata_pci_ch_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
