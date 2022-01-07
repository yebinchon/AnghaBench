; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pcichannel_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pcichannel_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 (i32)* }
%struct.ata_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_pcichannel_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_pcichannel_resume(i32 %0) #0 {
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
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %21 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = icmp ne i32 (i32)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %26 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %25, i32 0, i32 0
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 %27(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %24, %19
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @ata_resume(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %31, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ata_resume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
