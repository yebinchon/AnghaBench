; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ata_pci_controller = type { i64 }
%struct.ata_channel = type { i32 }

@ata_devclass = common dso_local global i64 0, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_pci_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.ata_pci_controller*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @device_get_devclass(i32 %14)
  %16 = load i64, i64* @ata_devclass, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %80

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.ata_pci_controller* @device_get_softc(i32 %19)
  store %struct.ata_pci_controller* %20, %struct.ata_pci_controller** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.ata_pci_controller* @device_get_softc(i32 %21)
  %23 = bitcast %struct.ata_pci_controller* %22 to %struct.ata_channel*
  %24 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SYS_RES_IOPORT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %53 [
    i32 128, label %31
    i32 129, label %42
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @device_get_parent(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SYS_RES_IOPORT, align 4
  %36 = call i32 @PCIR_BAR(i32 0)
  %37 = load i32, i32* %13, align 4
  %38 = shl i32 %37, 3
  %39 = add nsw i32 %36, %38
  %40 = load %struct.resource*, %struct.resource** %11, align 8
  %41 = call i32 @BUS_RELEASE_RESOURCE(i32 %33, i32 %34, i32 %35, i32 %39, %struct.resource* %40)
  store i32 %41, i32* %6, align 4
  br label %101

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @device_get_parent(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SYS_RES_IOPORT, align 4
  %47 = call i32 @PCIR_BAR(i32 1)
  %48 = load i32, i32* %13, align 4
  %49 = shl i32 %48, 3
  %50 = add nsw i32 %47, %49
  %51 = load %struct.resource*, %struct.resource** %11, align 8
  %52 = call i32 @BUS_RELEASE_RESOURCE(i32 %44, i32 %45, i32 %46, i32 %50, %struct.resource* %51)
  store i32 %52, i32* %6, align 4
  br label %101

53:                                               ; preds = %29
  %54 = load i32, i32* @ENOENT, align 4
  store i32 %54, i32* %6, align 4
  br label %101

55:                                               ; preds = %18
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SYS_RES_IRQ, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @ATA_IRQ_RID, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @ENOENT, align 4
  store i32 %64, i32* %6, align 4
  br label %101

65:                                               ; preds = %59
  %66 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %12, align 8
  %67 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @device_get_parent(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @SYS_RES_IRQ, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.resource*, %struct.resource** %11, align 8
  %77 = call i32 @BUS_RELEASE_RESOURCE(i32 %72, i32 %73, i32 %74, i32 %75, %struct.resource* %76)
  store i32 %77, i32* %6, align 4
  br label %101

78:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %101

79:                                               ; preds = %55
  br label %99

80:                                               ; preds = %5
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SYS_RES_IRQ, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @ATA_IRQ_RID, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @ENOENT, align 4
  store i32 %89, i32* %6, align 4
  br label %101

90:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %101

91:                                               ; preds = %80
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @device_get_parent(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.resource*, %struct.resource** %11, align 8
  %98 = call i32 @BUS_RELEASE_RESOURCE(i32 %93, i32 %94, i32 %95, i32 %96, %struct.resource* %97)
  store i32 %98, i32* %6, align 4
  br label %101

99:                                               ; preds = %79
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %91, %90, %88, %78, %70, %63, %53, %42, %31
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i64 @device_get_devclass(i32) #1

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i32 @BUS_RELEASE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
