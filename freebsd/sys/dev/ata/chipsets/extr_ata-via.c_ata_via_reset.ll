; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_channel = type { i32, i64 }

@VIABAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_via_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_via_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @device_get_parent(i32 %5)
  %7 = call i8* @device_get_softc(i32 %6)
  %8 = bitcast i8* %7 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %8, %struct.ata_pci_controller** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.ata_channel*
  store %struct.ata_channel* %11, %struct.ata_channel** %4, align 8
  %12 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %13 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VIABAR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %22 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @ata_generic_reset(i32 %26)
  br label %39

28:                                               ; preds = %20, %1
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @ata_sata_phy_reset(i32 %29, i32 -1, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @ata_generic_reset(i32 %33)
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %37 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %25
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ata_generic_reset(i32) #1

declare dso_local i64 @ata_sata_phy_reset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
