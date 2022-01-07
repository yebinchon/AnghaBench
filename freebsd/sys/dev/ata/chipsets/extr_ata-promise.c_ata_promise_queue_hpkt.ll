; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_queue_hpkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_queue_hpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, %struct.ata_promise_sx4* }
%struct.ata_promise_sx4 = type { i32, i32, i32 }
%struct.host_packet = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_pci_controller*, i32)* @ata_promise_queue_hpkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_promise_queue_hpkt(%struct.ata_pci_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_promise_sx4*, align 8
  %6 = alloca %struct.host_packet*, align 8
  store %struct.ata_pci_controller* %0, %struct.ata_pci_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %8 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %7, i32 0, i32 1
  %9 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %8, align 8
  store %struct.ata_promise_sx4* %9, %struct.ata_promise_sx4** %5, align 8
  %10 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %5, align 8
  %11 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %10, i32 0, i32 1
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %5, align 8
  %14 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load i32, i32* @M_TEMP, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.host_packet* @malloc(i32 4, i32 %18, i32 %21)
  store %struct.host_packet* %22, %struct.host_packet** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.host_packet*, %struct.host_packet** %6, align 8
  %25 = getelementptr inbounds %struct.host_packet, %struct.host_packet* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %5, align 8
  %27 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %26, i32 0, i32 2
  %28 = load %struct.host_packet*, %struct.host_packet** %6, align 8
  %29 = load i32, i32* @chain, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.host_packet* %28, i32 %29)
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %5, align 8
  %33 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %35 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ATA_OUTL(i32 %36, i32 786688, i32 %37)
  br label %39

39:                                               ; preds = %31, %17
  %40 = load %struct.ata_promise_sx4*, %struct.ata_promise_sx4** %5, align 8
  %41 = getelementptr inbounds %struct.ata_promise_sx4, %struct.ata_promise_sx4* %40, i32 0, i32 1
  %42 = call i32 @mtx_unlock(i32* %41)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.host_packet* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.host_packet*, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
