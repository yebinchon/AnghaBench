; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_tx_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_tx_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtnet_softc = type { i32, i32, i32, i64, %struct.vqueue_info* }
%struct.vqueue_info = type { i32 }

@VTNET_TXQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @pci_vtnet_tx_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pci_vtnet_tx_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pci_vtnet_softc*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.pci_vtnet_softc*
  store %struct.pci_vtnet_softc* %7, %struct.pci_vtnet_softc** %3, align 8
  %8 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %9 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %8, i32 0, i32 4
  %10 = load %struct.vqueue_info*, %struct.vqueue_info** %9, align 8
  %11 = load i64, i64* @VTNET_TXQ, align 8
  %12 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %10, i64 %11
  store %struct.vqueue_info* %12, %struct.vqueue_info** %4, align 8
  %13 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %14 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %13, i32 0, i32 1
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %17 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %16, i32 0, i32 2
  %18 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %19 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %18, i32 0, i32 1
  %20 = call i32 @pthread_cond_wait(i32* %17, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  br label %25

25:                                               ; preds = %78, %1
  br label %26

26:                                               ; preds = %50, %25
  %27 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %28 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %33 = call i64 @vq_has_descs(%struct.vqueue_info* %32)
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ true, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %62

38:                                               ; preds = %36
  %39 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %40 = call i32 @vq_kick_enable(%struct.vqueue_info* %39)
  %41 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %42 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %47 = call i64 @vq_has_descs(%struct.vqueue_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %62

50:                                               ; preds = %45, %38
  %51 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %52 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %54 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %53, i32 0, i32 2
  %55 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %56 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %55, i32 0, i32 1
  %57 = call i32 @pthread_cond_wait(i32* %54, i32* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  br label %26

62:                                               ; preds = %49, %36
  %63 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %64 = call i32 @vq_kick_disable(%struct.vqueue_info* %63)
  %65 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %66 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %68 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %67, i32 0, i32 1
  %69 = call i32 @pthread_mutex_unlock(i32* %68)
  br label %70

70:                                               ; preds = %74, %62
  %71 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %72 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %73 = call i32 @pci_vtnet_proctx(%struct.pci_vtnet_softc* %71, %struct.vqueue_info* %72)
  br label %74

74:                                               ; preds = %70
  %75 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %76 = call i64 @vq_has_descs(%struct.vqueue_info* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %70, label %78

78:                                               ; preds = %74
  %79 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %80 = call i32 @vq_endchains(%struct.vqueue_info* %79, i32 1)
  %81 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %82 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %81, i32 0, i32 1
  %83 = call i32 @pthread_mutex_lock(i32* %82)
  br label %25
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vq_has_descs(%struct.vqueue_info*) #1

declare dso_local i32 @vq_kick_enable(%struct.vqueue_info*) #1

declare dso_local i32 @vq_kick_disable(%struct.vqueue_info*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pci_vtnet_proctx(%struct.pci_vtnet_softc*, %struct.vqueue_info*) #1

declare dso_local i32 @vq_endchains(%struct.vqueue_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
