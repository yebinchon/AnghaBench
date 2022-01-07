; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_block.c_pci_vtblk_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_block.c_pci_vtblk_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtblk_softc = type { i32, i32, %struct.pci_vtblk_ioreq* }
%struct.pci_vtblk_ioreq = type { %struct.TYPE_5__, %struct.virtio_blk_hdr* }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.virtio_blk_hdr = type { i32, i32 }
%struct.vqueue_info = type { i32 }
%struct.iovec = type { i32, %struct.virtio_blk_hdr* }

@BLOCKIF_IOV_MAX = common dso_local global i32 0, align 4
@VRING_DESC_F_WRITE = common dso_local global i64 0, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4
@VBH_FLAG_BARRIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"virtio-block: %s op, %zd bytes, %d segs, offset %ld\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"read/ident\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_vtblk_softc*, %struct.vqueue_info*)* @pci_vtblk_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtblk_proc(%struct.pci_vtblk_softc* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca %struct.pci_vtblk_softc*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca %struct.virtio_blk_hdr*, align 8
  %6 = alloca %struct.pci_vtblk_ioreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pci_vtblk_softc* %0, %struct.pci_vtblk_softc** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %18 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %19 = add nsw i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca %struct.iovec, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %24 = add nsw i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %28 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %29 = add nsw i32 %28, 2
  %30 = call i32 @vq_getchain(%struct.vqueue_info* %27, i64* %15, %struct.iovec* %22, i32 %29, i64* %26)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %36 = add nsw i32 %35, 2
  %37 = icmp sle i32 %34, %36
  br label %38

38:                                               ; preds = %33, %2
  %39 = phi i1 [ false, %2 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %3, align 8
  %43 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %42, i32 0, i32 2
  %44 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %43, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %44, i64 %45
  store %struct.pci_vtblk_ioreq* %46, %struct.pci_vtblk_ioreq** %6, align 8
  %47 = getelementptr inbounds i64, i64* %26, i64 0
  %48 = load i64, i64* %47, align 16
  %49 = load i64, i64* @VRING_DESC_F_WRITE, align 8
  %50 = and i64 %48, %49
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 0
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 16
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %57, 8
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 0
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 1
  %63 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %62, align 8
  store %struct.virtio_blk_hdr* %63, %struct.virtio_blk_hdr** %5, align 8
  %64 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %65 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 1
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = mul i64 16, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i32* %66, %struct.iovec* %67, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %74, 2
  %76 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %77 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %5, align 8
  %80 = getelementptr inbounds %struct.virtio_blk_hdr, %struct.virtio_blk_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DEV_BSIZE, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %85 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 %89
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %90, i32 0, i32 1
  %92 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %91, align 8
  %93 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %94 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %93, i32 0, i32 1
  store %struct.virtio_blk_hdr* %92, %struct.virtio_blk_hdr** %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 %96
  %98 = getelementptr inbounds %struct.iovec, %struct.iovec* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 16
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %26, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @VRING_DESC_F_WRITE, align 8
  %108 = and i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %5, align 8
  %112 = getelementptr inbounds %struct.virtio_blk_hdr, %struct.virtio_blk_hdr* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @VBH_FLAG_BARRIER, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, 128
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %11, align 4
  store i64 0, i64* %10, align 8
  store i32 1, i32* %7, align 4
  br label %120

120:                                              ; preds = %145, %38
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %148

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %26, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @VRING_DESC_F_WRITE, align 8
  %130 = and i64 %128, %129
  %131 = icmp eq i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 %138
  %140 = getelementptr inbounds %struct.iovec, %struct.iovec* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 16
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %10, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %10, align 8
  br label %145

145:                                              ; preds = %124
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %120

148:                                              ; preds = %120
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %151 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  store i64 %149, i64* %152, align 8
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %157 = load i64, i64* %10, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sub nsw i32 %158, 1
  %160 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %161 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  %166 = call i32 @DPRINTF(i8* %165)
  %167 = load i32, i32* %12, align 4
  switch i32 %167, label %211 [
    i32 129, label %168
    i32 128, label %175
    i32 132, label %182
    i32 131, label %182
    i32 130, label %189
  ]

168:                                              ; preds = %148
  %169 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %3, align 8
  %170 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %173 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %172, i32 0, i32 0
  %174 = call i32 @blockif_read(i32 %171, %struct.TYPE_5__* %173)
  store i32 %174, i32* %9, align 4
  br label %216

175:                                              ; preds = %148
  %176 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %3, align 8
  %177 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %180 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %179, i32 0, i32 0
  %181 = call i32 @blockif_write(i32 %178, %struct.TYPE_5__* %180)
  store i32 %181, i32* %9, align 4
  br label %216

182:                                              ; preds = %148, %148
  %183 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %3, align 8
  %184 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %187 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %186, i32 0, i32 0
  %188 = call i32 @blockif_flush(i32 %185, %struct.TYPE_5__* %187)
  store i32 %188, i32* %9, align 4
  br label %216

189:                                              ; preds = %148
  %190 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 1
  %191 = getelementptr inbounds %struct.iovec, %struct.iovec* %190, i32 0, i32 1
  %192 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %191, align 8
  %193 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 1
  %194 = getelementptr inbounds %struct.iovec, %struct.iovec* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 16
  %196 = call i32 @memset(%struct.virtio_blk_hdr* %192, i32 0, i32 %195)
  %197 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 1
  %198 = getelementptr inbounds %struct.iovec, %struct.iovec* %197, i32 0, i32 1
  %199 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %198, align 8
  %200 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %3, align 8
  %201 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 1
  %204 = getelementptr inbounds %struct.iovec, %struct.iovec* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 16
  %206 = call i32 @MIN(i32 %205, i32 4)
  %207 = call i32 @strncpy(%struct.virtio_blk_hdr* %199, i32 %202, i32 %206)
  %208 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %209 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %208, i32 0, i32 0
  %210 = call i32 @pci_vtblk_done(%struct.TYPE_5__* %209, i32 0)
  store i32 1, i32* %17, align 4
  br label %221

211:                                              ; preds = %148
  %212 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %213 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %212, i32 0, i32 0
  %214 = load i32, i32* @EOPNOTSUPP, align 4
  %215 = call i32 @pci_vtblk_done(%struct.TYPE_5__* %213, i32 %214)
  store i32 1, i32* %17, align 4
  br label %221

216:                                              ; preds = %182, %175, %168
  %217 = load i32, i32* %9, align 4
  %218 = icmp eq i32 %217, 0
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  store i32 0, i32* %17, align 4
  br label %221

221:                                              ; preds = %216, %211, %189
  %222 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %17, align 4
  switch i32 %223, label %225 [
    i32 0, label %224
    i32 1, label %224
  ]

224:                                              ; preds = %221, %221
  ret void

225:                                              ; preds = %221
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vq_getchain(%struct.vqueue_info*, i64*, %struct.iovec*, i32, i64*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i32*, %struct.iovec*, i32) #2

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @blockif_read(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @blockif_write(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @blockif_flush(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @memset(%struct.virtio_blk_hdr*, i32, i32) #2

declare dso_local i32 @strncpy(%struct.virtio_blk_hdr*, i32, i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @pci_vtblk_done(%struct.TYPE_5__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
