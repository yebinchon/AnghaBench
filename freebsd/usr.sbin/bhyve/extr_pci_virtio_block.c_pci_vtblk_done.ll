; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_block.c_pci_vtblk_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_block.c_pci_vtblk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockif_req = type { %struct.pci_vtblk_ioreq* }
%struct.pci_vtblk_ioreq = type { i32, i32*, %struct.pci_vtblk_softc* }
%struct.pci_vtblk_softc = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@VTBLK_S_UNSUPP = common dso_local global i32 0, align 4
@VTBLK_S_IOERR = common dso_local global i32 0, align 4
@VTBLK_S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blockif_req*, i32)* @pci_vtblk_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtblk_done(%struct.blockif_req* %0, i32 %1) #0 {
  %3 = alloca %struct.blockif_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_vtblk_ioreq*, align 8
  %6 = alloca %struct.pci_vtblk_softc*, align 8
  store %struct.blockif_req* %0, %struct.blockif_req** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.blockif_req*, %struct.blockif_req** %3, align 8
  %8 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %7, i32 0, i32 0
  %9 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %8, align 8
  store %struct.pci_vtblk_ioreq* %9, %struct.pci_vtblk_ioreq** %5, align 8
  %10 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %5, align 8
  %11 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %10, i32 0, i32 2
  %12 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %11, align 8
  store %struct.pci_vtblk_softc* %12, %struct.pci_vtblk_softc** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @VTBLK_S_UNSUPP, align 4
  %22 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %5, align 8
  %23 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32 %21, i32* %24, align 4
  br label %39

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* @VTBLK_S_IOERR, align 4
  %30 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %5, align 8
  %31 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32 %29, i32* %32, align 4
  br label %38

33:                                               ; preds = %25
  %34 = load i32, i32* @VTBLK_S_OK, align 4
  %35 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %5, align 8
  %36 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %20
  %40 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %6, align 8
  %41 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %40, i32 0, i32 0
  %42 = call i32 @pthread_mutex_lock(i32* %41)
  %43 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %6, align 8
  %44 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %43, i32 0, i32 1
  %45 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %5, align 8
  %46 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @vq_relchain(i32* %44, i32 %47, i32 1)
  %49 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %6, align 8
  %50 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %49, i32 0, i32 1
  %51 = call i32 @vq_endchains(i32* %50, i32 0)
  %52 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %6, align 8
  %53 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %52, i32 0, i32 0
  %54 = call i32 @pthread_mutex_unlock(i32* %53)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @vq_relchain(i32*, i32, i32) #1

declare dso_local i32 @vq_endchains(i32*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
