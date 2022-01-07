; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtnet_softc = type { i32, i32, %struct.vqueue_info* }
%struct.vqueue_info = type { i32 }
%struct.iovec = type { i32, %struct.virtio_net_rxhdr* }
%struct.virtio_net_rxhdr = type { i32 }
%struct.virtio_mrg_rxbuf_info = type { i64, i32 }

@VTNET_MAXSEGS = common dso_local global i32 0, align 4
@VTNET_RXQ = common dso_local global i64 0, align 8
@VTNET_MAX_PKT_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_vtnet_softc*)* @pci_vtnet_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtnet_rx(%struct.pci_vtnet_softc* %0) #0 {
  %2 = alloca %struct.pci_vtnet_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vqueue_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.virtio_net_rxhdr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pci_vtnet_softc* %0, %struct.pci_vtnet_softc** %2, align 8
  %18 = load i32, i32* @VTNET_MAXSEGS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %3, align 8
  %21 = alloca %struct.virtio_mrg_rxbuf_info, i64 %19, align 16
  store i64 %19, i64* %4, align 8
  %22 = load i32, i32* @VTNET_MAXSEGS, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = alloca %struct.iovec, i64 %24, align 16
  store i64 %24, i64* %5, align 8
  %26 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %2, align 8
  %27 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %26, i32 0, i32 2
  %28 = load %struct.vqueue_info*, %struct.vqueue_info** %27, align 8
  %29 = load i64, i64* @VTNET_RXQ, align 8
  %30 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %28, i64 %29
  store %struct.vqueue_info* %30, %struct.vqueue_info** %6, align 8
  br label %31

31:                                               ; preds = %199, %1
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store %struct.iovec* %25, %struct.iovec** %8, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %114, %31
  %33 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %21, i64 %35
  %37 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %36, i32 0, i32 1
  %38 = load %struct.iovec*, %struct.iovec** %8, align 8
  %39 = load i32, i32* @VTNET_MAXSEGS, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @vq_getchain(%struct.vqueue_info* %33, i32* %37, %struct.iovec* %38, i32 %41, i32* null)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %32
  %46 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %47 = call i32 @vq_kick_enable(%struct.vqueue_info* %46)
  %48 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %49 = call i32 @vq_has_descs(%struct.vqueue_info* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %45
  %52 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @vq_retchains(%struct.vqueue_info* %52, i32 %53)
  %55 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %56 = call i32 @vq_endchains(%struct.vqueue_info* %55, i32 1)
  %57 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %2, align 8
  %58 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @netbe_rx_disable(i32 %59)
  store i32 1, i32* %14, align 4
  br label %200

61:                                               ; preds = %45
  %62 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %63 = call i32 @vq_kick_disable(%struct.vqueue_info* %62)
  br label %106

64:                                               ; preds = %32
  %65 = load i32, i32* %13, align 4
  %66 = icmp sge i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @VTNET_MAXSEGS, align 4
  %72 = icmp sle i32 %70, %71
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i1 [ false, %64 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %2, align 8
  %81 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %73
  store i32 1, i32* %11, align 4
  br label %116

85:                                               ; preds = %73
  %86 = load %struct.iovec*, %struct.iovec** %8, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i64 @count_iov(%struct.iovec* %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %21, i64 %90
  %92 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %91, i32 0, i32 0
  store i64 %88, i64* %92, align 16
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %21, i64 %94
  %96 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 16
  %98 = load i64, i64* %7, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.iovec*, %struct.iovec** %8, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds %struct.iovec, %struct.iovec* %101, i64 %102
  store %struct.iovec* %103, %struct.iovec** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %85, %61
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @VTNET_MAX_PKT_LEN, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @VTNET_MAXSEGS, align 4
  %113 = icmp slt i32 %111, %112
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i1 [ false, %106 ], [ %113, %110 ]
  br i1 %115, label %32, label %116

116:                                              ; preds = %114, %84
  %117 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %2, align 8
  %118 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @netbe_recv(i32 %119, %struct.iovec* %25, i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @vq_retchains(%struct.vqueue_info* %125, i32 %126)
  %128 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %129 = call i32 @vq_endchains(%struct.vqueue_info* %128, i32 0)
  store i32 1, i32* %14, align 4
  br label %200

130:                                              ; preds = %116
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %10, align 8
  %133 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %2, align 8
  %134 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %130
  %138 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %139 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %21, i64 0
  %140 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* %10, align 8
  %143 = call i32 @vq_relchain(%struct.vqueue_info* %138, i32 %141, i64 %142)
  br label %199

144:                                              ; preds = %130
  %145 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i64 0
  %146 = getelementptr inbounds %struct.iovec, %struct.iovec* %145, i32 0, i32 1
  %147 = load %struct.virtio_net_rxhdr*, %struct.virtio_net_rxhdr** %146, align 8
  store %struct.virtio_net_rxhdr* %147, %struct.virtio_net_rxhdr** %15, align 8
  store i32 0, i32* %17, align 4
  %148 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i64 0
  %149 = getelementptr inbounds %struct.iovec, %struct.iovec* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 16
  %151 = sext i32 %150 to i64
  %152 = icmp uge i64 %151, 4
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  br label %155

155:                                              ; preds = %185, %144
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %21, i64 %157
  %159 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 16
  store i64 %160, i64* %16, align 8
  %161 = load i64, i64* %16, align 8
  %162 = load i64, i64* %10, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %155
  %165 = load i64, i64* %10, align 8
  store i64 %165, i64* %16, align 8
  br label %166

166:                                              ; preds = %164, %155
  %167 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %21, i64 %169
  %171 = getelementptr inbounds %struct.virtio_mrg_rxbuf_info, %struct.virtio_mrg_rxbuf_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i64, i64* %16, align 8
  %174 = call i32 @vq_relchain_prepare(%struct.vqueue_info* %167, i32 %172, i64 %173)
  %175 = load i64, i64* %16, align 8
  %176 = load i64, i64* %10, align 8
  %177 = sub nsw i64 %176, %175
  store i64 %177, i64* %10, align 8
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp sle i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  br label %185

185:                                              ; preds = %166
  %186 = load i64, i64* %10, align 8
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %155, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %17, align 4
  %190 = load %struct.virtio_net_rxhdr*, %struct.virtio_net_rxhdr** %15, align 8
  %191 = getelementptr inbounds %struct.virtio_net_rxhdr, %struct.virtio_net_rxhdr* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  %192 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %193 = call i32 @vq_relchain_publish(%struct.vqueue_info* %192)
  %194 = load %struct.vqueue_info*, %struct.vqueue_info** %6, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %17, align 4
  %197 = sub nsw i32 %195, %196
  %198 = call i32 @vq_retchains(%struct.vqueue_info* %194, i32 %197)
  br label %199

199:                                              ; preds = %188, %137
  br label %31

200:                                              ; preds = %124, %51
  %201 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %201)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vq_getchain(%struct.vqueue_info*, i32*, %struct.iovec*, i32, i32*) #2

declare dso_local i32 @vq_kick_enable(%struct.vqueue_info*) #2

declare dso_local i32 @vq_has_descs(%struct.vqueue_info*) #2

declare dso_local i32 @vq_retchains(%struct.vqueue_info*, i32) #2

declare dso_local i32 @vq_endchains(%struct.vqueue_info*, i32) #2

declare dso_local i32 @netbe_rx_disable(i32) #2

declare dso_local i32 @vq_kick_disable(%struct.vqueue_info*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @count_iov(%struct.iovec*, i32) #2

declare dso_local i32 @netbe_recv(i32, %struct.iovec*, i32) #2

declare dso_local i32 @vq_relchain(%struct.vqueue_info*, i32, i64) #2

declare dso_local i32 @vq_relchain_prepare(%struct.vqueue_info*, i32, i64) #2

declare dso_local i32 @vq_relchain_publish(%struct.vqueue_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
