; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_proctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_proctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtnet_softc = type { i32 }
%struct.vqueue_info = type { i32 }
%struct.iovec = type { i32 }

@VTNET_MAXSEGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_vtnet_softc*, %struct.vqueue_info*)* @pci_vtnet_proctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtnet_proctx(%struct.pci_vtnet_softc* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca %struct.pci_vtnet_softc*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pci_vtnet_softc* %0, %struct.pci_vtnet_softc** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %10 = load i32, i32* @VTNET_MAXSEGS, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca %struct.iovec, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %16 = load i32, i32* @VTNET_MAXSEGS, align 4
  %17 = call i32 @vq_getchain(%struct.vqueue_info* %15, i32* %7, %struct.iovec* %14, i32 %16, i32* null)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @VTNET_MAXSEGS, align 4
  %23 = icmp sle i32 %21, %22
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ false, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %3, align 8
  %29 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @netbe_send(i32 %30, %struct.iovec* %14, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* %8, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i64, i64* %8, align 8
  br label %40

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i64 [ %38, %37 ], [ 0, %39 ]
  %42 = call i32 @vq_relchain(%struct.vqueue_info* %33, i32 %34, i64 %41)
  %43 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %43)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vq_getchain(%struct.vqueue_info*, i32*, %struct.iovec*, i32, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @netbe_send(i32, %struct.iovec*, i32) #2

declare dso_local i32 @vq_relchain(%struct.vqueue_info*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
