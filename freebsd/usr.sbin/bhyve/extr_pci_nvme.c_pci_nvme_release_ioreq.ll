; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_release_ioreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_release_ioreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_nvme_softc = type { i64, i32, i32, %struct.TYPE_2__, %struct.pci_nvme_ioreq* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_nvme_ioreq = type { %struct.pci_nvme_ioreq*, i64, i32*, i32* }

@NVME_CSTS_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_nvme_softc*, %struct.pci_nvme_ioreq*)* @pci_nvme_release_ioreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_nvme_release_ioreq(%struct.pci_nvme_softc* %0, %struct.pci_nvme_ioreq* %1) #0 {
  %3 = alloca %struct.pci_nvme_softc*, align 8
  %4 = alloca %struct.pci_nvme_ioreq*, align 8
  store %struct.pci_nvme_softc* %0, %struct.pci_nvme_softc** %3, align 8
  store %struct.pci_nvme_ioreq* %1, %struct.pci_nvme_ioreq** %4, align 8
  %5 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %4, align 8
  %6 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %5, i32 0, i32 3
  store i32* null, i32** %6, align 8
  %7 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %4, align 8
  %8 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %7, i32 0, i32 2
  store i32* null, i32** %8, align 8
  %9 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %4, align 8
  %10 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %3, align 8
  %12 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %11, i32 0, i32 2
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %3, align 8
  %15 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %14, i32 0, i32 4
  %16 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %15, align 8
  %17 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %4, align 8
  %18 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %17, i32 0, i32 0
  store %struct.pci_nvme_ioreq* %16, %struct.pci_nvme_ioreq** %18, align 8
  %19 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %4, align 8
  %20 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %3, align 8
  %21 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %20, i32 0, i32 4
  store %struct.pci_nvme_ioreq* %19, %struct.pci_nvme_ioreq** %21, align 8
  %22 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %3, align 8
  %23 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %3, align 8
  %27 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %2
  %31 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %3, align 8
  %32 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @NVME_CC_GET_EN(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %3, align 8
  %39 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @NVME_CSTS_GET_RDY(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @NVME_CSTS_RDY, align 4
  %46 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %3, align 8
  %47 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %44, %37, %30, %2
  %52 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %3, align 8
  %53 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %52, i32 0, i32 2
  %54 = call i32 @pthread_mutex_unlock(i32* %53)
  %55 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %3, align 8
  %56 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %55, i32 0, i32 1
  %57 = call i32 @sem_post(i32* %56)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @NVME_CC_GET_EN(i32) #1

declare dso_local i32 @NVME_CSTS_GET_RDY(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @sem_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
