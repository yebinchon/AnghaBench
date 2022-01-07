; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_request_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_request_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtscsi_queue = type { %struct.pci_vtscsi_softc* }
%struct.pci_vtscsi_softc = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.iovec = type { i32 }
%struct.pci_vtscsi_req_cmd_rd = type { i32, i32, i32, i32, i32, i32, i32*, i64, i32 }
%struct.pci_vtscsi_req_cmd_wr = type { i32, i32, i32, i32, i32, i32, i32*, i64, i32 }
%union.ctl_io = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32*, i32, i8*, i8*, i8*, i32, i8* }
%struct.sbuf = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@VTSCSI_MAXSEG = common dso_local global i32 0, align 4
@CTL_IO_SCSI = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_OUT = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@CTL_TAG_ORDERED = common dso_local global i32 0, align 4
@CTL_TAG_HEAD_OF_QUEUE = common dso_local global i32 0, align 4
@CTL_TAG_ACA = common dso_local global i32 0, align 4
@CTL_TAG_SIMPLE = common dso_local global i32 0, align 4
@pci_vtscsi_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"pci_virtio_scsi: %s\00", align 1
@CTL_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CTL_IO: err=%d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@VIRTIO_SCSI_S_FAILURE = common dso_local global i32 0, align 4
@VIRTIO_SCSI_S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_vtscsi_queue*, %struct.iovec*, i32, %struct.iovec*, i32)* @pci_vtscsi_request_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vtscsi_request_handle(%struct.pci_vtscsi_queue* %0, %struct.iovec* %1, i32 %2, %struct.iovec* %3, i32 %4) #0 {
  %6 = alloca %struct.pci_vtscsi_queue*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_vtscsi_softc*, align 8
  %12 = alloca %struct.pci_vtscsi_req_cmd_rd*, align 8
  %13 = alloca %struct.pci_vtscsi_req_cmd_wr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %union.ctl_io*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.sbuf*, align 8
  store %struct.pci_vtscsi_queue* %0, %struct.pci_vtscsi_queue** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.iovec* %3, %struct.iovec** %9, align 8
  store i32 %4, i32* %10, align 4
  %26 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %6, align 8
  %27 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %26, i32 0, i32 0
  %28 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %27, align 8
  store %struct.pci_vtscsi_softc* %28, %struct.pci_vtscsi_softc** %11, align 8
  store %struct.pci_vtscsi_req_cmd_rd* null, %struct.pci_vtscsi_req_cmd_rd** %12, align 8
  %29 = load i32, i32* @VTSCSI_MAXSEG, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %14, align 8
  %32 = alloca %struct.iovec, i64 %30, align 16
  store i64 %30, i64* %15, align 8
  %33 = load i32, i32* @VTSCSI_MAXSEG, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca %struct.iovec, i64 %34, align 16
  store i64 %34, i64* %16, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %36 = load %struct.iovec*, %struct.iovec** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %39 = call i32 @VTSCSI_IN_HEADER_LEN(%struct.pci_vtscsi_softc* %38)
  %40 = call i32 @seek_iov(%struct.iovec* %36, i32 %37, %struct.iovec* %32, i32* %18, i32 %39)
  %41 = load %struct.iovec*, %struct.iovec** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %44 = call i32 @VTSCSI_OUT_HEADER_LEN(%struct.pci_vtscsi_softc* %43)
  %45 = call i32 @seek_iov(%struct.iovec* %41, i32 %42, %struct.iovec* %35, i32* %19, i32 %44)
  %46 = load %struct.iovec*, %struct.iovec** %7, align 8
  %47 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %48 = call i32 @VTSCSI_IN_HEADER_LEN(%struct.pci_vtscsi_softc* %47)
  %49 = call i32 @truncate_iov(%struct.iovec* %46, i32* %8, i32 %48)
  %50 = load %struct.iovec*, %struct.iovec** %9, align 8
  %51 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %52 = call i32 @VTSCSI_OUT_HEADER_LEN(%struct.pci_vtscsi_softc* %51)
  %53 = call i32 @truncate_iov(%struct.iovec* %50, i32* %10, i32 %52)
  %54 = load %struct.iovec*, %struct.iovec** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = bitcast %struct.pci_vtscsi_req_cmd_rd** %12 to i8**
  %57 = call i32 @iov_to_buf(%struct.iovec* %54, i32 %55, i8** %56)
  %58 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %59 = call i32 @VTSCSI_OUT_HEADER_LEN(%struct.pci_vtscsi_softc* %58)
  %60 = call %struct.pci_vtscsi_req_cmd_wr* @malloc(i32 %59)
  store %struct.pci_vtscsi_req_cmd_wr* %60, %struct.pci_vtscsi_req_cmd_wr** %13, align 8
  %61 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %62 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call %union.ctl_io* @ctl_scsi_alloc_io(i32 %63)
  store %union.ctl_io* %64, %union.ctl_io** %17, align 8
  %65 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %66 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %65)
  %67 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %68 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %71 = bitcast %union.ctl_io* %70 to %struct.TYPE_6__*
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.pci_vtscsi_req_cmd_rd*, %struct.pci_vtscsi_req_cmd_rd** %12, align 8
  %75 = getelementptr inbounds %struct.pci_vtscsi_req_cmd_rd, %struct.pci_vtscsi_req_cmd_rd* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pci_vtscsi_get_lun(i32 %76)
  %78 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %79 = bitcast %union.ctl_io* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  %82 = load i32, i32* @CTL_IO_SCSI, align 4
  %83 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %84 = bitcast %union.ctl_io* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %5
  %89 = bitcast %struct.iovec* %32 to i8*
  store i8* %89, i8** %20, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  store i8* %92, i8** %22, align 8
  %93 = load i32, i32* %18, align 4
  %94 = call i8* @count_iov(%struct.iovec* %32, i32 %93)
  store i8* %94, i8** %21, align 8
  %95 = load i32, i32* @CTL_FLAG_DATA_OUT, align 4
  %96 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %97 = bitcast %union.ctl_io* %96 to %struct.TYPE_6__*
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 8
  br label %118

101:                                              ; preds = %5
  %102 = load i32, i32* %19, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = bitcast %struct.iovec* %35 to i8*
  store i8* %105, i8** %20, align 8
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %22, align 8
  %109 = load i32, i32* %19, align 4
  %110 = call i8* @count_iov(%struct.iovec* %35, i32 %109)
  store i8* %110, i8** %21, align 8
  %111 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %112 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %113 = bitcast %union.ctl_io* %112 to %struct.TYPE_6__*
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %104, %101
  br label %118

118:                                              ; preds = %117, %88
  %119 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %120 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %124 = bitcast %union.ctl_io* %123 to %struct.TYPE_8__*
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 4
  store i32 %122, i32* %125, align 8
  %126 = load %struct.pci_vtscsi_req_cmd_rd*, %struct.pci_vtscsi_req_cmd_rd** %12, align 8
  %127 = getelementptr inbounds %struct.pci_vtscsi_req_cmd_rd, %struct.pci_vtscsi_req_cmd_rd* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %131 = bitcast %union.ctl_io* %130 to %struct.TYPE_8__*
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 11
  store i8* %129, i8** %132, align 8
  %133 = load %struct.pci_vtscsi_req_cmd_rd*, %struct.pci_vtscsi_req_cmd_rd** %12, align 8
  %134 = getelementptr inbounds %struct.pci_vtscsi_req_cmd_rd, %struct.pci_vtscsi_req_cmd_rd* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %152 [
    i32 129, label %136
    i32 130, label %141
    i32 131, label %146
    i32 128, label %151
  ]

136:                                              ; preds = %118
  %137 = load i32, i32* @CTL_TAG_ORDERED, align 4
  %138 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %139 = bitcast %union.ctl_io* %138 to %struct.TYPE_8__*
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 10
  store i32 %137, i32* %140, align 8
  br label %157

141:                                              ; preds = %118
  %142 = load i32, i32* @CTL_TAG_HEAD_OF_QUEUE, align 4
  %143 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %144 = bitcast %union.ctl_io* %143 to %struct.TYPE_8__*
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 10
  store i32 %142, i32* %145, align 8
  br label %157

146:                                              ; preds = %118
  %147 = load i32, i32* @CTL_TAG_ACA, align 4
  %148 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %149 = bitcast %union.ctl_io* %148 to %struct.TYPE_8__*
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 10
  store i32 %147, i32* %150, align 8
  br label %157

151:                                              ; preds = %118
  br label %152

152:                                              ; preds = %118, %151
  %153 = load i32, i32* @CTL_TAG_SIMPLE, align 4
  %154 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %155 = bitcast %union.ctl_io* %154 to %struct.TYPE_8__*
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 10
  store i32 %153, i32* %156, align 8
  br label %157

157:                                              ; preds = %152, %146, %141, %136
  %158 = load i8*, i8** %22, align 8
  %159 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %160 = bitcast %union.ctl_io* %159 to %struct.TYPE_8__*
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 9
  store i8* %158, i8** %161, align 8
  %162 = load i8*, i8** %20, align 8
  %163 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %164 = bitcast %union.ctl_io* %163 to %struct.TYPE_8__*
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 8
  store i8* %162, i8** %165, align 8
  %166 = load i8*, i8** %21, align 8
  %167 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %168 = bitcast %union.ctl_io* %167 to %struct.TYPE_8__*
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 7
  store i8* %166, i8** %169, align 8
  %170 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %171 = bitcast %union.ctl_io* %170 to %struct.TYPE_8__*
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  %173 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %174 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %178 = bitcast %union.ctl_io* %177 to %struct.TYPE_8__*
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 6
  store i32 %176, i32* %179, align 8
  %180 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %181 = bitcast %union.ctl_io* %180 to %struct.TYPE_8__*
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.pci_vtscsi_req_cmd_rd*, %struct.pci_vtscsi_req_cmd_rd** %12, align 8
  %185 = getelementptr inbounds %struct.pci_vtscsi_req_cmd_rd, %struct.pci_vtscsi_req_cmd_rd* %184, i32 0, i32 6
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %188 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @memcpy(i32* %183, i32* %186, i32 %190)
  %192 = load i64, i64* @pci_vtscsi_debug, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %157
  %195 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %195, %struct.sbuf** %25, align 8
  %196 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %197 = load %struct.sbuf*, %struct.sbuf** %25, align 8
  %198 = call i32 @ctl_io_sbuf(%union.ctl_io* %196, %struct.sbuf* %197)
  %199 = load %struct.sbuf*, %struct.sbuf** %25, align 8
  %200 = call i32 @sbuf_finish(%struct.sbuf* %199)
  %201 = load %struct.sbuf*, %struct.sbuf** %25, align 8
  %202 = call i32 @sbuf_data(%struct.sbuf* %201)
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i8*
  %205 = call i32 @DPRINTF(i8* %204)
  %206 = load %struct.sbuf*, %struct.sbuf** %25, align 8
  %207 = call i32 @sbuf_delete(%struct.sbuf* %206)
  br label %208

208:                                              ; preds = %194, %157
  %209 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %210 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @CTL_IO, align 4
  %213 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %214 = call i32 @ioctl(i32 %211, i32 %212, %union.ctl_io* %213)
  store i32 %214, i32* %23, align 4
  %215 = load i32, i32* %23, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %208
  %218 = load i32, i32* @errno, align 4
  %219 = load i32, i32* @errno, align 4
  %220 = call i32 @strerror(i32 %219)
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to i8*
  %223 = call i32 @WPRINTF(i8* %222)
  %224 = load i32, i32* @VIRTIO_SCSI_S_FAILURE, align 4
  %225 = load %struct.pci_vtscsi_req_cmd_wr*, %struct.pci_vtscsi_req_cmd_wr** %13, align 8
  %226 = getelementptr inbounds %struct.pci_vtscsi_req_cmd_wr, %struct.pci_vtscsi_req_cmd_wr* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 4
  br label %263

227:                                              ; preds = %208
  %228 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %229 = bitcast %union.ctl_io* %228 to %struct.TYPE_8__*
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %233 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @MIN(i32 %231, i32 %235)
  %237 = load %struct.pci_vtscsi_req_cmd_wr*, %struct.pci_vtscsi_req_cmd_wr** %13, align 8
  %238 = getelementptr inbounds %struct.pci_vtscsi_req_cmd_wr, %struct.pci_vtscsi_req_cmd_wr* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %240 = bitcast %union.ctl_io* %239 to %struct.TYPE_8__*
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.pci_vtscsi_req_cmd_wr*, %struct.pci_vtscsi_req_cmd_wr** %13, align 8
  %244 = getelementptr inbounds %struct.pci_vtscsi_req_cmd_wr, %struct.pci_vtscsi_req_cmd_wr* %243, i32 0, i32 5
  store i32 %242, i32* %244, align 4
  %245 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %246 = bitcast %union.ctl_io* %245 to %struct.TYPE_8__*
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.pci_vtscsi_req_cmd_wr*, %struct.pci_vtscsi_req_cmd_wr** %13, align 8
  %250 = getelementptr inbounds %struct.pci_vtscsi_req_cmd_wr, %struct.pci_vtscsi_req_cmd_wr* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* @VIRTIO_SCSI_S_OK, align 4
  %252 = load %struct.pci_vtscsi_req_cmd_wr*, %struct.pci_vtscsi_req_cmd_wr** %13, align 8
  %253 = getelementptr inbounds %struct.pci_vtscsi_req_cmd_wr, %struct.pci_vtscsi_req_cmd_wr* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 4
  %254 = load %struct.pci_vtscsi_req_cmd_wr*, %struct.pci_vtscsi_req_cmd_wr** %13, align 8
  %255 = getelementptr inbounds %struct.pci_vtscsi_req_cmd_wr, %struct.pci_vtscsi_req_cmd_wr* %254, i32 0, i32 2
  %256 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %257 = bitcast %union.ctl_io* %256 to %struct.TYPE_8__*
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 1
  %259 = load %struct.pci_vtscsi_req_cmd_wr*, %struct.pci_vtscsi_req_cmd_wr** %13, align 8
  %260 = getelementptr inbounds %struct.pci_vtscsi_req_cmd_wr, %struct.pci_vtscsi_req_cmd_wr* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @memcpy(i32* %255, i32* %258, i32 %261)
  br label %263

263:                                              ; preds = %227, %217
  %264 = load %struct.pci_vtscsi_req_cmd_wr*, %struct.pci_vtscsi_req_cmd_wr** %13, align 8
  %265 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %266 = call i32 @VTSCSI_OUT_HEADER_LEN(%struct.pci_vtscsi_softc* %265)
  %267 = load %struct.iovec*, %struct.iovec** %9, align 8
  %268 = load i32, i32* %10, align 4
  %269 = call i32 @buf_to_iov(%struct.pci_vtscsi_req_cmd_wr* %264, i32 %266, %struct.iovec* %267, i32 %268, i32 0)
  %270 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %11, align 8
  %271 = call i32 @VTSCSI_OUT_HEADER_LEN(%struct.pci_vtscsi_softc* %270)
  %272 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %273 = bitcast %union.ctl_io* %272 to %struct.TYPE_8__*
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %271, %275
  store i32 %276, i32* %24, align 4
  %277 = load %struct.pci_vtscsi_req_cmd_rd*, %struct.pci_vtscsi_req_cmd_rd** %12, align 8
  %278 = bitcast %struct.pci_vtscsi_req_cmd_rd* %277 to %struct.pci_vtscsi_req_cmd_wr*
  %279 = call i32 @free(%struct.pci_vtscsi_req_cmd_wr* %278)
  %280 = load %struct.pci_vtscsi_req_cmd_wr*, %struct.pci_vtscsi_req_cmd_wr** %13, align 8
  %281 = call i32 @free(%struct.pci_vtscsi_req_cmd_wr* %280)
  %282 = load %union.ctl_io*, %union.ctl_io** %17, align 8
  %283 = call i32 @ctl_scsi_free_io(%union.ctl_io* %282)
  %284 = load i32, i32* %24, align 4
  %285 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %285)
  ret i32 %284
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @seek_iov(%struct.iovec*, i32, %struct.iovec*, i32*, i32) #2

declare dso_local i32 @VTSCSI_IN_HEADER_LEN(%struct.pci_vtscsi_softc*) #2

declare dso_local i32 @VTSCSI_OUT_HEADER_LEN(%struct.pci_vtscsi_softc*) #2

declare dso_local i32 @truncate_iov(%struct.iovec*, i32*, i32) #2

declare dso_local i32 @iov_to_buf(%struct.iovec*, i32, i8**) #2

declare dso_local %struct.pci_vtscsi_req_cmd_wr* @malloc(i32) #2

declare dso_local %union.ctl_io* @ctl_scsi_alloc_io(i32) #2

declare dso_local i32 @ctl_scsi_zero_io(%union.ctl_io*) #2

declare dso_local i32 @pci_vtscsi_get_lun(i32) #2

declare dso_local i8* @count_iov(%struct.iovec*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #2

declare dso_local i32 @ctl_io_sbuf(%union.ctl_io*, %struct.sbuf*) #2

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #2

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @sbuf_data(%struct.sbuf*) #2

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #2

declare dso_local i32 @ioctl(i32, i32, %union.ctl_io*) #2

declare dso_local i32 @WPRINTF(i8*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @buf_to_iov(%struct.pci_vtscsi_req_cmd_wr*, i32, %struct.iovec*, i32, i32) #2

declare dso_local i32 @free(%struct.pci_vtscsi_req_cmd_wr*) #2

declare dso_local i32 @ctl_scsi_free_io(%union.ctl_io*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
