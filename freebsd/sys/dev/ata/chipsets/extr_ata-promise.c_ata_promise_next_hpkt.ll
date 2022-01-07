; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_next_hpkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_next_hpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, %struct.ata_promise_sx4* }
%struct.ata_promise_sx4 = type { i32, i64, i32 }
%struct.host_packet = type { i32 }

@chain = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_pci_controller*)* @ata_promise_next_hpkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_promise_next_hpkt(%struct.ata_pci_controller* %0) #0 {
  %2 = alloca %struct.ata_pci_controller*, align 8
  %3 = alloca %struct.ata_promise_sx4*, align 8
  %4 = alloca %struct.host_packet*, align 8
  store %struct.ata_pci_controller* %0, %struct.ata_pci_controller** %2, align 8
  %5 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %2, align 8
  %6 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %5, i32 0, i32 1
  %7 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %6, align 8
  store %struct.ata_promise_sx4* %7, %struct.ata_promise_sx4** %3, align 8
  %8 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %3, align 8
  %9 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %3, align 8
  %12 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %11, i32 0, i32 2
  %13 = call %struct.host_packet* @TAILQ_FIRST(i32* %12)
  store %struct.host_packet* %13, %struct.host_packet** %4, align 8
  %14 = icmp ne %struct.host_packet* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %3, align 8
  %17 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %16, i32 0, i32 2
  %18 = load %struct.host_packet*, %struct.host_packet** %4, align 8
  %19 = load i32, i32* @chain, align 4
  %20 = call i32 @TAILQ_REMOVE(i32* %17, %struct.host_packet* %18, i32 %19)
  %21 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %2, align 8
  %22 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.host_packet*, %struct.host_packet** %4, align 8
  %25 = getelementptr inbounds %struct.host_packet, %struct.host_packet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ATA_OUTL(i32 %23, i32 786688, i32 %26)
  %28 = load %struct.host_packet*, %struct.host_packet** %4, align 8
  %29 = load i32, i32* @M_TEMP, align 4
  %30 = call i32 @free(%struct.host_packet* %28, i32 %29)
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %3, align 8
  %33 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %15
  %35 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %3, align 8
  %36 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %35, i32 0, i32 0
  %37 = call i32 @mtx_unlock(i32* %36)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.host_packet* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.host_packet*, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @free(%struct.host_packet*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
