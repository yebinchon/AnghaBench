; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vi_softc_linkup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vi_softc_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_softc = type { %struct.vqueue_info*, %struct.pci_devinst*, %struct.virtio_consts* }
%struct.virtio_consts = type { i32 }
%struct.pci_devinst = type { %struct.virtio_softc* }
%struct.vqueue_info = type { i32, %struct.virtio_softc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vi_softc_linkup(%struct.virtio_softc* %0, %struct.virtio_consts* %1, i8* %2, %struct.pci_devinst* %3, %struct.vqueue_info* %4) #0 {
  %6 = alloca %struct.virtio_softc*, align 8
  %7 = alloca %struct.virtio_consts*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pci_devinst*, align 8
  %10 = alloca %struct.vqueue_info*, align 8
  %11 = alloca i32, align 4
  store %struct.virtio_softc* %0, %struct.virtio_softc** %6, align 8
  store %struct.virtio_consts* %1, %struct.virtio_consts** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.pci_devinst* %3, %struct.pci_devinst** %9, align 8
  store %struct.vqueue_info* %4, %struct.vqueue_info** %10, align 8
  %12 = load %struct.virtio_softc*, %struct.virtio_softc** %6, align 8
  %13 = bitcast %struct.virtio_softc* %12 to i8*
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.virtio_consts*, %struct.virtio_consts** %7, align 8
  %19 = load %struct.virtio_softc*, %struct.virtio_softc** %6, align 8
  %20 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %19, i32 0, i32 2
  store %struct.virtio_consts* %18, %struct.virtio_consts** %20, align 8
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %9, align 8
  %22 = load %struct.virtio_softc*, %struct.virtio_softc** %6, align 8
  %23 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %22, i32 0, i32 1
  store %struct.pci_devinst* %21, %struct.pci_devinst** %23, align 8
  %24 = load %struct.virtio_softc*, %struct.virtio_softc** %6, align 8
  %25 = load %struct.pci_devinst*, %struct.pci_devinst** %9, align 8
  %26 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %25, i32 0, i32 0
  store %struct.virtio_softc* %24, %struct.virtio_softc** %26, align 8
  %27 = load %struct.vqueue_info*, %struct.vqueue_info** %10, align 8
  %28 = load %struct.virtio_softc*, %struct.virtio_softc** %6, align 8
  %29 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %28, i32 0, i32 0
  store %struct.vqueue_info* %27, %struct.vqueue_info** %29, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %49, %5
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.virtio_consts*, %struct.virtio_consts** %7, align 8
  %33 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.virtio_softc*, %struct.virtio_softc** %6, align 8
  %38 = load %struct.vqueue_info*, %struct.vqueue_info** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %38, i64 %40
  %42 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %41, i32 0, i32 1
  store %struct.virtio_softc* %37, %struct.virtio_softc** %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.vqueue_info*, %struct.vqueue_info** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %44, i64 %46
  %48 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 8
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %30

52:                                               ; preds = %30
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
