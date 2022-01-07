; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vtblk_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vtblk_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_blk_outhdr = type { i32, i32 }
%struct.beri_vtblk_softc = type { i32, i32 }
%struct.vqueue_info = type { i32 }
%struct.iovec = type { i32, %struct.virtio_blk_outhdr* }

@VTBLK_MAXSEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"wrong n value %d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"iov_len == %d\00", align 1
@VIRTIO_BLK_T_BARRIER = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@VIRTIO_BLK_S_UNSUPP = common dso_local global %struct.virtio_blk_outhdr zeroinitializer, align 4
@VIRTIO_BLK_S_IOERR = common dso_local global %struct.virtio_blk_outhdr zeroinitializer, align 4
@VIRTIO_BLK_S_OK = common dso_local global %struct.virtio_blk_outhdr zeroinitializer, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beri_vtblk_softc*, %struct.vqueue_info*)* @vtblk_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_proc(%struct.beri_vtblk_softc* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca %struct.beri_vtblk_softc*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.virtio_blk_outhdr*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca %struct.virtio_blk_outhdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.beri_vtblk_softc* %0, %struct.beri_vtblk_softc** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %17 = load i32, i32* @VTBLK_MAXSEGS, align 4
  %18 = add nsw i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca %struct.iovec, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load i32, i32* @VTBLK_MAXSEGS, align 4
  %23 = add nsw i32 %22, 2
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %26 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %27 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %30 = load i32, i32* @VTBLK_MAXSEGS, align 4
  %31 = add nsw i32 %30, 2
  %32 = call i32 @vq_getchain(i32 %28, %struct.vqueue_info* %29, %struct.iovec* %21, i32 %31, i32* %25)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @VTBLK_MAXSEGS, align 4
  %38 = add nsw i32 %37, 2
  %39 = icmp sle i32 %36, %38
  br label %40

40:                                               ; preds = %35, %2
  %41 = phi i1 [ false, %2 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @KASSERT(i32 %42, i8* %45)
  %47 = load i32, i32* %15, align 4
  %48 = call %struct.iovec* @getcopy(%struct.iovec* %21, i32 %47)
  store %struct.iovec* %48, %struct.iovec** %9, align 8
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 0
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 1
  %51 = load %struct.virtio_blk_outhdr*, %struct.virtio_blk_outhdr** %50, align 8
  store %struct.virtio_blk_outhdr* %51, %struct.virtio_blk_outhdr** %8, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 %54
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i32 0, i32 1
  %57 = load %struct.virtio_blk_outhdr*, %struct.virtio_blk_outhdr** %56, align 8
  store %struct.virtio_blk_outhdr* %57, %struct.virtio_blk_outhdr** %10, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 %60
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 16
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %15, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 %68
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 16
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @KASSERT(i32 %65, i8* %73)
  %75 = load %struct.virtio_blk_outhdr*, %struct.virtio_blk_outhdr** %8, align 8
  %76 = getelementptr inbounds %struct.virtio_blk_outhdr, %struct.virtio_blk_outhdr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @be32toh(i32 %77)
  %79 = load i32, i32* @VIRTIO_BLK_T_BARRIER, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  store i32 %81, i32* %13, align 4
  %82 = load %struct.virtio_blk_outhdr*, %struct.virtio_blk_outhdr** %8, align 8
  %83 = getelementptr inbounds %struct.virtio_blk_outhdr, %struct.virtio_blk_outhdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @be64toh(i32 %84)
  %86 = load i32, i32* @DEV_BSIZE, align 4
  %87 = mul nsw i32 %85, %86
  store i32 %87, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %101, %40
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 %95
  %97 = getelementptr inbounds %struct.iovec, %struct.iovec* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 16
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %88

104:                                              ; preds = %88
  %105 = load i32, i32* %13, align 4
  switch i32 %105, label %129 [
    i32 128, label %106
    i32 129, label %106
    i32 130, label %116
    i32 131, label %128
  ]

106:                                              ; preds = %104, %104
  %107 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %108 = load %struct.iovec*, %struct.iovec** %9, align 8
  %109 = getelementptr inbounds %struct.iovec, %struct.iovec* %108, i64 1
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @vtblk_rdwr(%struct.beri_vtblk_softc* %107, %struct.iovec* %109, i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %16, align 4
  br label %132

116:                                              ; preds = %104
  %117 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 1
  %118 = getelementptr inbounds %struct.iovec, %struct.iovec* %117, i32 0, i32 1
  %119 = load %struct.virtio_blk_outhdr*, %struct.virtio_blk_outhdr** %118, align 8
  %120 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %121 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 1
  %124 = getelementptr inbounds %struct.iovec, %struct.iovec* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 16
  %126 = call i32 @MIN(i32 %125, i32 4)
  %127 = call i32 @strncpy(%struct.virtio_blk_outhdr* %119, i32 %122, i32 %126)
  store i32 0, i32* %16, align 4
  br label %132

128:                                              ; preds = %104
  br label %129

129:                                              ; preds = %104, %128
  %130 = load i32, i32* @ENOSYS, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %16, align 4
  br label %132

132:                                              ; preds = %129, %116, %106
  %133 = load i32, i32* %16, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* @ENOSYS, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.virtio_blk_outhdr*, %struct.virtio_blk_outhdr** %10, align 8
  %142 = bitcast %struct.virtio_blk_outhdr* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 bitcast (%struct.virtio_blk_outhdr* @VIRTIO_BLK_S_UNSUPP to i8*), i64 8, i1 false)
  br label %146

143:                                              ; preds = %135
  %144 = load %struct.virtio_blk_outhdr*, %struct.virtio_blk_outhdr** %10, align 8
  %145 = bitcast %struct.virtio_blk_outhdr* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 bitcast (%struct.virtio_blk_outhdr* @VIRTIO_BLK_S_IOERR to i8*), i64 8, i1 false)
  br label %146

146:                                              ; preds = %143, %140
  br label %150

147:                                              ; preds = %132
  %148 = load %struct.virtio_blk_outhdr*, %struct.virtio_blk_outhdr** %10, align 8
  %149 = bitcast %struct.virtio_blk_outhdr* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 bitcast (%struct.virtio_blk_outhdr* @VIRTIO_BLK_S_OK to i8*), i64 8, i1 false)
  br label %150

150:                                              ; preds = %147, %146
  %151 = load %struct.iovec*, %struct.iovec** %9, align 8
  %152 = load i32, i32* @M_DEVBUF, align 4
  %153 = call i32 @free(%struct.iovec* %151, i32 %152)
  %154 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @vq_relchain(%struct.vqueue_info* %154, %struct.iovec* %21, i32 %155, i32 1)
  %157 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %157)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vq_getchain(i32, %struct.vqueue_info*, %struct.iovec*, i32, i32*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local %struct.iovec* @getcopy(%struct.iovec*, i32) #2

declare dso_local i32 @be32toh(i32) #2

declare dso_local i32 @be64toh(i32) #2

declare dso_local i32 @vtblk_rdwr(%struct.beri_vtblk_softc*, %struct.iovec*, i32, i32, i32, i32) #2

declare dso_local i32 @strncpy(%struct.virtio_blk_outhdr*, i32, i32) #2

declare dso_local i32 @MIN(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @free(%struct.iovec*, i32) #2

declare dso_local i32 @vq_relchain(%struct.vqueue_info*, %struct.iovec*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
