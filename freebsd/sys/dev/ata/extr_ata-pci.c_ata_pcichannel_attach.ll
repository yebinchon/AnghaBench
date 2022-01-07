; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pcichannel_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pcichannel_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 (i32)* }
%struct.ata_channel = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"pm_level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_pcichannel_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_pcichannel_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %10, %struct.ata_pci_controller** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.ata_channel*
  store %struct.ata_channel* %13, %struct.ata_channel** %5, align 8
  %14 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %15 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %21 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %24 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @device_get_ivars(i32 %25)
  %27 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %28 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_get_name(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_get_unit(i32 %31)
  %33 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %34 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %33, i32 0, i32 2
  %35 = call i32 @resource_int_value(i32 %30, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %34)
  %36 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %37 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %36, i32 0, i32 0
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 %38(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %19
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %19
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @ata_attach(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %42, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ata_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
