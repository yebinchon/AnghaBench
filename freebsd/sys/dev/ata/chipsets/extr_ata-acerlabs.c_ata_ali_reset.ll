; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_channel = type { i32 }

@ATA_ALI_1533 = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_ali_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_ali_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %11, %struct.ata_pci_controller** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.ata_channel*
  store %struct.ata_channel* %14, %struct.ata_channel** %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ata_generic_reset(i32 %15)
  %17 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %18 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 195
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %25 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 194
  br i1 %29, label %30, label %94

30:                                               ; preds = %23, %1
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @GRANDPARENT(i32 %31)
  %33 = call i32 @device_get_children(i32 %32, i32** %5, i32* %6)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %93, label %35

35:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %86, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @pci_get_devid(i32 %45)
  %47 = load i64, i64* @ATA_ALI_1533, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %40
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pci_read_config(i32 %59, i32 88, i32 1)
  %61 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %62 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 4, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %60, %65
  %67 = call i32 @pci_write_config(i32 %54, i32 88, i32 %66, i32 1)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pci_read_config(i32 %77, i32 88, i32 1)
  %79 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %80 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 4, %81
  %83 = or i32 %78, %82
  %84 = call i32 @pci_write_config(i32 %72, i32 88, i32 %83, i32 1)
  br label %89

85:                                               ; preds = %40
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %36

89:                                               ; preds = %49, %36
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @M_TEMP, align 4
  %92 = call i32 @free(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %30
  br label %94

94:                                               ; preds = %93, %23
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ata_generic_reset(i32) #1

declare dso_local i32 @device_get_children(i32, i32**, i32*) #1

declare dso_local i32 @GRANDPARENT(i32) #1

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
