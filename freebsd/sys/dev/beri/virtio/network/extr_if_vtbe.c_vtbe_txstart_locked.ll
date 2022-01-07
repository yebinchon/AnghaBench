; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_txstart_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_txstart_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtbe_softc = type { i32, i32, i32, %struct.ifnet*, %struct.vqueue_info* }
%struct.ifnet = type { i32, i32 }
%struct.vqueue_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.virtio_net_hdr = type { i32 }
%struct.iovec = type { i32, %struct.virtio_net_hdr* }
%struct.mbuf = type { i32 }
%struct.uio = type { i32, i32, i32, i64, i32, %struct.iovec* }

@DESC_COUNT = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unexpected amount of descriptors (%d)\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"m_mbuftouio failed\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@VIRTIO_MMIO_INT_VRING = common dso_local global i32 0, align 4
@VIRTIO_MMIO_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@Q_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtbe_softc*)* @vtbe_txstart_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtbe_txstart_locked(%struct.vtbe_softc* %0) #0 {
  %2 = alloca %struct.vtbe_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.virtio_net_hdr*, align 8
  %6 = alloca %struct.vqueue_info*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.uio, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vtbe_softc* %0, %struct.vtbe_softc** %2, align 8
  %18 = load i32, i32* @DESC_COUNT, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %3, align 8
  %21 = alloca %struct.iovec, i64 %19, align 16
  store i64 %19, i64* %4, align 8
  %22 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %23 = call i32 @VTBE_ASSERT_LOCKED(%struct.vtbe_softc* %22)
  %24 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %24, i32 0, i32 4
  %26 = load %struct.vqueue_info*, %struct.vqueue_info** %25, align 8
  %27 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %26, i64 0
  store %struct.vqueue_info* %27, %struct.vqueue_info** %6, align 8
  %28 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %29 = call i32 @vq_has_descs(%struct.vqueue_info* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 1, i32* %17, align 4
  br label %161

32:                                               ; preds = %1
  %33 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %34 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %33, i32 0, i32 3
  %35 = load %struct.ifnet*, %struct.ifnet** %34, align 8
  store %struct.ifnet* %35, %struct.ifnet** %8, align 8
  %36 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 1, i32* %17, align 4
  br label %161

43:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  %44 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %45 = call i32 @vq_ring_ready(%struct.vqueue_info* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 1, i32* %17, align 4
  br label %161

48:                                               ; preds = %43
  %49 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %50 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be16toh(i32 %53)
  %55 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %56 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %119, %48
  %58 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %59 = call i32 @vq_has_descs(%struct.vqueue_info* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %63 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %145

67:                                               ; preds = %57
  %68 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 1
  %70 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %71 = call i32 @IFQ_DRV_DEQUEUE(i32* %69, %struct.mbuf* %70)
  %72 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %73 = icmp eq %struct.mbuf* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %145

75:                                               ; preds = %67
  %76 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %77 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %80 = load i32, i32* @DESC_COUNT, align 4
  %81 = call i32 @vq_getchain(i32 %78, %struct.vqueue_info* %79, %struct.iovec* %21, i32 %80, i32* null)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp eq i32 %82, 2
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @KASSERT(i32 %84, i8* %87)
  %89 = load i32, i32* %16, align 4
  %90 = call %struct.iovec* @getcopy(%struct.iovec* %21, i32 %89)
  store %struct.iovec* %90, %struct.iovec** %7, align 8
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 0
  %92 = getelementptr inbounds %struct.iovec, %struct.iovec* %91, i32 0, i32 1
  %93 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %92, align 8
  store %struct.virtio_net_hdr* %93, %struct.virtio_net_hdr** %5, align 8
  %94 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %5, align 8
  %95 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %96 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @memset(%struct.virtio_net_hdr* %94, i32 0, i32 %97)
  %99 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 1
  %100 = getelementptr inbounds %struct.iovec, %struct.iovec* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 16
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load %struct.iovec*, %struct.iovec** %7, align 8
  %105 = getelementptr inbounds %struct.iovec, %struct.iovec* %104, i64 1
  %106 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 5
  store %struct.iovec* %105, %struct.iovec** %106, align 8
  %107 = load i32, i32* @UIO_SYSSPACE, align 4
  %108 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 4
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* @UIO_READ, align 4
  %112 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  %113 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %114 = call i32 @m_mbuftouio(%struct.uio* %10, %struct.mbuf* %113, i32 0)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %75
  %118 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %75
  %120 = load i32, i32* %15, align 4
  %121 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %120, %122
  %124 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %125 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %123, %126
  store i32 %127, i32* %12, align 4
  %128 = load %struct.iovec*, %struct.iovec** %7, align 8
  %129 = load i32, i32* @M_DEVBUF, align 4
  %130 = call i32 @free(%struct.iovec* %128, i32 %129)
  %131 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @vq_relchain(%struct.vqueue_info* %131, %struct.iovec* %21, i32 %132, i32 %133)
  %135 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %136 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %137 = call i32 @if_inc_counter(%struct.ifnet* %135, i32 %136, i32 1)
  %138 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %139 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %140 = call i32 @BPF_MTAP(%struct.ifnet* %138, %struct.mbuf* %139)
  %141 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %142 = call i32 @m_freem(%struct.mbuf* %141)
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %57

145:                                              ; preds = %74, %61
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = load i32, i32* @VIRTIO_MMIO_INT_VRING, align 4
  %150 = call i32 @htobe32(i32 %149)
  store i32 %150, i32* %14, align 4
  %151 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %152 = load i32, i32* @VIRTIO_MMIO_INTERRUPT_STATUS, align 4
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @WRITE4(%struct.vtbe_softc* %151, i32 %152, i32 %153)
  %155 = load %struct.vtbe_softc*, %struct.vtbe_softc** %2, align 8
  %156 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @Q_INTR, align 4
  %159 = call i32 @PIO_SET(i32 %157, i32 %158, i32 1)
  br label %160

160:                                              ; preds = %148, %145
  store i32 0, i32* %17, align 4
  br label %161

161:                                              ; preds = %160, %47, %42, %31
  %162 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %17, align 4
  switch i32 %163, label %165 [
    i32 0, label %164
    i32 1, label %164
  ]

164:                                              ; preds = %161, %161
  ret void

165:                                              ; preds = %161
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VTBE_ASSERT_LOCKED(%struct.vtbe_softc*) #2

declare dso_local i32 @vq_has_descs(%struct.vqueue_info*) #2

declare dso_local i32 @vq_ring_ready(%struct.vqueue_info*) #2

declare dso_local i32 @be16toh(i32) #2

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #2

declare dso_local i32 @vq_getchain(i32, %struct.vqueue_info*, %struct.iovec*, i32, i32*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local %struct.iovec* @getcopy(%struct.iovec*, i32) #2

declare dso_local i32 @memset(%struct.virtio_net_hdr*, i32, i32) #2

declare dso_local i32 @m_mbuftouio(%struct.uio*, %struct.mbuf*, i32) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @free(%struct.iovec*, i32) #2

declare dso_local i32 @vq_relchain(%struct.vqueue_info*, %struct.iovec*, i32, i32) #2

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @htobe32(i32) #2

declare dso_local i32 @WRITE4(%struct.vtbe_softc*, i32, i32) #2

declare dso_local i32 @PIO_SET(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
