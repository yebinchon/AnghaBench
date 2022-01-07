; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_get_ioreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_get_ioreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_nvme_ioreq = type { i64, i64, %struct.TYPE_2__, %struct.pci_nvme_softc*, %struct.pci_nvme_ioreq* }
%struct.TYPE_2__ = type { %struct.pci_nvme_ioreq*, i64, i64, i64 }
%struct.pci_nvme_softc = type { i32, i32, %struct.pci_nvme_ioreq*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_nvme_ioreq* (%struct.pci_nvme_softc*)* @pci_nvme_get_ioreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_nvme_ioreq* @pci_nvme_get_ioreq(%struct.pci_nvme_softc* %0) #0 {
  %2 = alloca %struct.pci_nvme_softc*, align 8
  %3 = alloca %struct.pci_nvme_ioreq*, align 8
  store %struct.pci_nvme_softc* %0, %struct.pci_nvme_softc** %2, align 8
  store %struct.pci_nvme_ioreq* null, %struct.pci_nvme_ioreq** %3, align 8
  %4 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %2, align 8
  %5 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %4, i32 0, i32 3
  %6 = call i32 @sem_wait(i32* %5)
  %7 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %2, align 8
  %8 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %7, i32 0, i32 0
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %2, align 8
  %11 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %10, i32 0, i32 2
  %12 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %11, align 8
  store %struct.pci_nvme_ioreq* %12, %struct.pci_nvme_ioreq** %3, align 8
  %13 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  %14 = icmp ne %struct.pci_nvme_ioreq* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  %18 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %17, i32 0, i32 4
  %19 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %18, align 8
  %20 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %2, align 8
  %21 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %20, i32 0, i32 2
  store %struct.pci_nvme_ioreq* %19, %struct.pci_nvme_ioreq** %21, align 8
  %22 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  %23 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %22, i32 0, i32 4
  store %struct.pci_nvme_ioreq* null, %struct.pci_nvme_ioreq** %23, align 8
  %24 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %2, align 8
  %25 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  %26 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %25, i32 0, i32 3
  store %struct.pci_nvme_softc* %24, %struct.pci_nvme_softc** %26, align 8
  %27 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %2, align 8
  %28 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %2, align 8
  %32 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %31, i32 0, i32 0
  %33 = call i32 @pthread_mutex_unlock(i32* %32)
  %34 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  %35 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  %38 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  %41 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  %44 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  %45 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.pci_nvme_ioreq* %43, %struct.pci_nvme_ioreq** %46, align 8
  %47 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  %48 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  %50 = getelementptr inbounds %struct.pci_nvme_ioreq, %struct.pci_nvme_ioreq* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.pci_nvme_ioreq*, %struct.pci_nvme_ioreq** %3, align 8
  ret %struct.pci_nvme_ioreq* %51
}

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
