; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_block.c_pci_vtblk_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_block.c_pci_vtblk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { i32, i32 }
%struct.blockif_ctxt = type { i32 }
%struct.pci_vtblk_softc = type { %struct.TYPE_13__, %struct.blockif_ctxt*, %struct.TYPE_12__, i32, %struct.TYPE_14__, i32, %struct.pci_vtblk_ioreq* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32, i64, %struct.TYPE_11__, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_11__ = type { i32, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.pci_vtblk_ioreq = type { i32, %struct.pci_vtblk_softc*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.pci_vtblk_ioreq*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"virtio-block: backing device required\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not open backing file\00", align 1
@VTBLK_RINGSZ = common dso_local global i32 0, align 4
@pci_vtblk_done = common dso_local global i32 0, align 4
@vtblk_vi_consts = common dso_local global i32 0, align 4
@VTBLK_BLK_ID_BYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"BHYVE-%02X%02X-%02X%02X-%02X%02X\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@BLOCKIF_IOV_MAX = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@VIRTIO_DEV_BLOCK = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@VIRTIO_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_STORAGE = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@VIRTIO_TYPE_BLOCK = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @pci_vtblk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vtblk_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [7 x i8], align 1
  %9 = alloca %struct.blockif_ctxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  %12 = alloca %struct.pci_vtblk_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.pci_vtblk_ioreq*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %234

23:                                               ; preds = %3
  %24 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %25 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %26 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %29 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %24, i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %34 = call %struct.blockif_ctxt* @blockif_open(i8* %32, i8* %33)
  store %struct.blockif_ctxt* %34, %struct.blockif_ctxt** %9, align 8
  %35 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %9, align 8
  %36 = icmp eq %struct.blockif_ctxt* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = call i32 @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %234

39:                                               ; preds = %23
  %40 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %9, align 8
  %41 = call i32 @blockif_size(%struct.blockif_ctxt* %40)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %9, align 8
  %43 = call i32 @blockif_sectsz(%struct.blockif_ctxt* %42)
  store i32 %43, i32* %15, align 4
  %44 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %9, align 8
  %45 = call i32 @blockif_psectsz(%struct.blockif_ctxt* %44, i32* %16, i32* %17)
  %46 = call %struct.pci_vtblk_softc* @calloc(i32 1, i32 128)
  store %struct.pci_vtblk_softc* %46, %struct.pci_vtblk_softc** %12, align 8
  %47 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %9, align 8
  %48 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %49 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %48, i32 0, i32 1
  store %struct.blockif_ctxt* %47, %struct.blockif_ctxt** %49, align 8
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %75, %39
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @VTBLK_RINGSZ, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %56 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %55, i32 0, i32 6
  %57 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %57, i64 %59
  store %struct.pci_vtblk_ioreq* %60, %struct.pci_vtblk_ioreq** %18, align 8
  %61 = load i32, i32* @pci_vtblk_done, align 4
  %62 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %18, align 8
  %63 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %18, align 8
  %66 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %18, align 8
  %67 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store %struct.pci_vtblk_ioreq* %65, %struct.pci_vtblk_ioreq** %68, align 8
  %69 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %70 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %18, align 8
  %71 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %70, i32 0, i32 1
  store %struct.pci_vtblk_softc* %69, %struct.pci_vtblk_softc** %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %18, align 8
  %74 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %50

78:                                               ; preds = %50
  %79 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %80 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %79, i32 0, i32 5
  %81 = call i32 @pthread_mutex_init(i32* %80, i32* null)
  %82 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %83 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %82, i32 0, i32 0
  %84 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %85 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %86 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %87 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %86, i32 0, i32 4
  %88 = call i32 @vi_softc_linkup(%struct.TYPE_13__* %83, i32* @vtblk_vi_consts, %struct.pci_vtblk_softc* %84, %struct.pci_devinst* %85, %struct.TYPE_14__* %87)
  %89 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %90 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %89, i32 0, i32 5
  %91 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %92 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32* %90, i32** %93, align 8
  %94 = load i32, i32* @VTBLK_RINGSZ, align 4
  %95 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %96 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = call i32 @MD5Init(i32* %10)
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = call i32 @MD5Update(i32* %10, i8* %99, i32 %101)
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %104 = call i32 @MD5Final(i32* %103, i32* %10)
  %105 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %106 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = load i32, i32* @VTBLK_BLK_ID_BYTES, align 4
  %111 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %112 = load i32, i32* %111, align 16
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 2
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 4
  %120 = load i32, i32* %119, align 16
  %121 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 5
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %109, i32 %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %114, i32 %116, i32 %118, i32 %120, i32 %122)
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @DEV_BSIZE, align 4
  %126 = sdiv i32 %124, %125
  %127 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %128 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %131 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 6
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* @VTBLK_RINGSZ, align 4
  %134 = sub nsw i32 %133, 2
  %135 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %136 = call i32 @MIN(i32 %134, i32 %135)
  %137 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %138 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 5
  store i32 %136, i32* %139, align 8
  %140 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %141 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  store i64 0, i64* %143, align 8
  %144 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %145 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  store i64 0, i64* %147, align 8
  %148 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %149 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  %152 = load i32, i32* %15, align 4
  %153 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %154 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %78
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %15, align 4
  %162 = sdiv i32 %160, %161
  %163 = call i64 @ffsll(i32 %162)
  %164 = sub nsw i64 %163, 1
  br label %166

165:                                              ; preds = %78
  br label %166

166:                                              ; preds = %165, %159
  %167 = phi i64 [ %164, %159 ], [ 0, %165 ]
  %168 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %169 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  store i64 %167, i64* %171, align 8
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %166
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %17, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load i32, i32* %15, align 4
  %179 = sdiv i32 %177, %178
  br label %181

180:                                              ; preds = %166
  br label %181

181:                                              ; preds = %180, %174
  %182 = phi i32 [ %179, %174 ], [ 0, %180 ]
  %183 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %184 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store i32 %182, i32* %186, align 8
  %187 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %188 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  store i64 0, i64* %190, align 8
  %191 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %192 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  store i64 0, i64* %194, align 8
  %195 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %196 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  store i64 0, i64* %197, align 8
  %198 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %199 = load i32, i32* @PCIR_DEVICE, align 4
  %200 = load i32, i32* @VIRTIO_DEV_BLOCK, align 4
  %201 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %198, i32 %199, i32 %200)
  %202 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %203 = load i32, i32* @PCIR_VENDOR, align 4
  %204 = load i32, i32* @VIRTIO_VENDOR, align 4
  %205 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %202, i32 %203, i32 %204)
  %206 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %207 = load i32, i32* @PCIR_CLASS, align 4
  %208 = load i32, i32* @PCIC_STORAGE, align 4
  %209 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %206, i32 %207, i32 %208)
  %210 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %211 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %212 = load i32, i32* @VIRTIO_TYPE_BLOCK, align 4
  %213 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %210, i32 %211, i32 %212)
  %214 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %215 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %216 = load i32, i32* @VIRTIO_VENDOR, align 4
  %217 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %214, i32 %215, i32 %216)
  %218 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %219 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %218, i32 0, i32 0
  %220 = call i32 (...) @fbsdrun_virtio_msix()
  %221 = call i64 @vi_intr_init(%struct.TYPE_13__* %219, i32 1, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %181
  %224 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %225 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %224, i32 0, i32 1
  %226 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %225, align 8
  %227 = call i32 @blockif_close(%struct.blockif_ctxt* %226)
  %228 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %229 = call i32 @free(%struct.pci_vtblk_softc* %228)
  store i32 1, i32* %4, align 4
  br label %234

230:                                              ; preds = %181
  %231 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %12, align 8
  %232 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %231, i32 0, i32 0
  %233 = call i32 @vi_set_io_bar(%struct.TYPE_13__* %232, i32 0)
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %230, %223, %37, %21
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local %struct.blockif_ctxt* @blockif_open(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @blockif_size(%struct.blockif_ctxt*) #1

declare dso_local i32 @blockif_sectsz(%struct.blockif_ctxt*) #1

declare dso_local i32 @blockif_psectsz(%struct.blockif_ctxt*, i32*, i32*) #1

declare dso_local %struct.pci_vtblk_softc* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @vi_softc_linkup(%struct.TYPE_13__*, i32*, %struct.pci_vtblk_softc*, %struct.pci_devinst*, %struct.TYPE_14__*) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @ffsll(i32) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i64 @vi_intr_init(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @fbsdrun_virtio_msix(...) #1

declare dso_local i32 @blockif_close(%struct.blockif_ctxt*) #1

declare dso_local i32 @free(%struct.pci_vtblk_softc*) #1

declare dso_local i32 @vi_set_io_bar(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
