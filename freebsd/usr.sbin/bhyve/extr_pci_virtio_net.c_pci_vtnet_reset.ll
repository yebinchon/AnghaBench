; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtnet_softc = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"vtnet: device reset requested !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pci_vtnet_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtnet_reset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pci_vtnet_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pci_vtnet_softc*
  store %struct.pci_vtnet_softc* %5, %struct.pci_vtnet_softc** %3, align 8
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %8 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %7, i32 0, i32 3
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %11 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %10, i32 0, i32 4
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  %13 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %14 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  br label %15

15:                                               ; preds = %20, %1
  %16 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %17 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %22 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %21, i32 0, i32 4
  %23 = call i32 @pthread_mutex_unlock(i32* %22)
  %24 = call i32 @usleep(i32 10000)
  %25 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %26 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %25, i32 0, i32 4
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %30 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %32 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %31, i32 0, i32 2
  store i32 4, i32* %32, align 8
  %33 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %34 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %33, i32 0, i32 5
  %35 = call i32 @vi_reset_dev(i32* %34)
  %36 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %37 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %39 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %38, i32 0, i32 4
  %40 = call i32 @pthread_mutex_unlock(i32* %39)
  %41 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %42 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %41, i32 0, i32 3
  %43 = call i32 @pthread_mutex_unlock(i32* %42)
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @vi_reset_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
