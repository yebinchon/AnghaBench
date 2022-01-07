; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_proc_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_proc_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtbe_softc = type { i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)*, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifnet* }
%struct.vqueue_info = type { i32 }
%struct.iovec = type { i64 }
%struct.uio = type { i32, i32, i32, i32, %struct.iovec* }

@DESC_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"wrong n %d\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtbe_softc*, %struct.vqueue_info*)* @vtbe_proc_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtbe_proc_rx(%struct.vtbe_softc* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca %struct.vtbe_softc*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.uio, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vtbe_softc* %0, %struct.vtbe_softc** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %14 = load i32, i32* @DESC_COUNT, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca %struct.iovec, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %19 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %18, i32 0, i32 2
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %8, align 8
  %21 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %25 = load i32, i32* @DESC_COUNT, align 4
  %26 = call i32 @vq_getchain(i32 %23, %struct.vqueue_info* %24, %struct.iovec* %17, i32 %25, i32* null)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp sge i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @DESC_COUNT, align 4
  %32 = icmp sle i32 %30, %31
  br label %33

33:                                               ; preds = %29, %2
  %34 = phi i1 [ false, %2 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @KASSERT(i32 %35, i8* %38)
  %40 = load i32, i32* %13, align 4
  %41 = call %struct.iovec* @getcopy(%struct.iovec* %17, i32 %40)
  store %struct.iovec* %41, %struct.iovec** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %42

42:                                               ; preds = %56, %33
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i64 %48
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %42

59:                                               ; preds = %42
  %60 = load i32, i32* %11, align 4
  %61 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.iovec*, %struct.iovec** %7, align 8
  %63 = getelementptr inbounds %struct.iovec, %struct.iovec* %62, i64 1
  %64 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 4
  store %struct.iovec* %63, %struct.iovec** %64, align 8
  %65 = load i32, i32* @UIO_SYSSPACE, align 4
  %66 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %67, 1
  %69 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @UIO_WRITE, align 4
  %71 = getelementptr inbounds %struct.uio, %struct.uio* %9, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = load i32, i32* @M_NOWAIT, align 4
  %73 = load i32, i32* @ETHER_ALIGN, align 4
  %74 = load i32, i32* @M_PKTHDR, align 4
  %75 = call %struct.mbuf* @m_uiotombuf(%struct.uio* %9, i32 %72, i32 0, i32 %73, i32 %74)
  store %struct.mbuf* %75, %struct.mbuf** %10, align 8
  %76 = icmp eq %struct.mbuf* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %59
  %78 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %79 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %80 = call i32 @if_inc_counter(%struct.ifnet* %78, i32 %79, i32 1)
  br label %104

81:                                               ; preds = %59
  %82 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %83 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %84 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store %struct.ifnet* %82, %struct.ifnet** %85, align 8
  %86 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %87 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %88 = call i32 @if_inc_counter(%struct.ifnet* %86, i32 %87, i32 1)
  %89 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @CURVNET_SET(i32 %91)
  %93 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %94 = call i32 @VTBE_UNLOCK(%struct.vtbe_softc* %93)
  %95 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %96 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %95, i32 0, i32 0
  %97 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %96, align 8
  %98 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %99 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %100 = call i32 %97(%struct.ifnet* %98, %struct.mbuf* %99)
  %101 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %102 = call i32 @VTBE_LOCK(%struct.vtbe_softc* %101)
  %103 = call i32 (...) @CURVNET_RESTORE()
  br label %104

104:                                              ; preds = %81, %77
  %105 = load %struct.iovec*, %struct.iovec** %7, align 8
  %106 = load i32, i32* @M_DEVBUF, align 4
  %107 = call i32 @free(%struct.iovec* %105, i32 %106)
  %108 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %113 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = call i32 @vq_relchain(%struct.vqueue_info* %108, %struct.iovec* %17, i32 %109, i64 %115)
  %117 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %117)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vq_getchain(i32, %struct.vqueue_info*, %struct.iovec*, i32, i32*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local %struct.iovec* @getcopy(%struct.iovec*, i32) #2

declare dso_local %struct.mbuf* @m_uiotombuf(%struct.uio*, i32, i32, i32, i32) #2

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @CURVNET_SET(i32) #2

declare dso_local i32 @VTBE_UNLOCK(%struct.vtbe_softc*) #2

declare dso_local i32 @VTBE_LOCK(%struct.vtbe_softc*) #2

declare dso_local i32 @CURVNET_RESTORE(...) #2

declare dso_local i32 @free(%struct.iovec*, i32) #2

declare dso_local i32 @vq_relchain(%struct.vqueue_info*, %struct.iovec*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
