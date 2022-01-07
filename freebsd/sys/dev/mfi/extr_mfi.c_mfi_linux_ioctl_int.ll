; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_linux_ioctl_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_linux_ioctl_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.cdev = type { %struct.mfi_softc* }
%struct.mfi_softc = type { i32, i32, i32 }
%struct.thread = type { i32 }
%struct.mfi_linux_ioc_packet = type { i32, i64, i32, i64, i32, i32, %struct.TYPE_17__*, %struct.TYPE_15__, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.mfi_linux_ioc_aen = type { i32, i64, i32, i64, i32, i32, %struct.TYPE_17__*, %struct.TYPE_15__, %struct.TYPE_12__* }
%struct.mfi_command = type { i32, i32, %struct.TYPE_18__*, %struct.mfi_linux_ioc_packet*, i32, %struct.mfi_linux_ioc_packet*, %union.mfi_sgl*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_11__, %struct.TYPE_10__, i32* }
%struct.TYPE_16__ = type { i32, i32, %struct.mfi_linux_ioc_packet, i32, i8*, i32, i32 }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i32 }
%union.mfi_sgl = type { i32 }
%struct.mfi_aen = type { i32, i64, i32, i64, i32, i32, %struct.TYPE_17__*, %struct.TYPE_15__, %struct.TYPE_12__* }
%union.mfi_sense_ptr = type { i32* }
%struct.TYPE_13__ = type { i32 }

@MAX_LINUX_IOCTL_SGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MFI_DCMD_FRAME_SIZE = common dso_local global i32 0, align 4
@MFI_FRAME_DATAIN = common dso_local global i32 0, align 4
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@MFI_FRAME_DATAOUT = common dso_local global i32 0, align 4
@MFI_CMD_DATAOUT = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Copy in failed\0A\00", align 1
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_CMD_PD_SCSI_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Controller polled failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Copy out failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"AEN IMPLEMENTED for pid %d\0A\00", align 1
@curproc = common dso_local global %struct.TYPE_17__* null, align 8
@aen_link = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"IOCTL 0x%lx not handled\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32*, i32, %struct.thread*)* @mfi_linux_ioctl_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_linux_ioctl_int(%struct.cdev* %0, i32 %1, i32* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.mfi_softc*, align 8
  %13 = alloca %struct.mfi_linux_ioc_packet, align 8
  %14 = alloca %struct.mfi_linux_ioc_aen, align 8
  %15 = alloca %struct.mfi_command*, align 8
  %16 = alloca %struct.mfi_aen*, align 8
  %17 = alloca %union.mfi_sense_ptr, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.mfi_linux_ioc_packet*, align 8
  %20 = alloca %struct.mfi_linux_ioc_packet*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store %struct.mfi_command* null, %struct.mfi_command** %15, align 8
  store i8* null, i8** %18, align 8
  store %struct.mfi_linux_ioc_packet* null, %struct.mfi_linux_ioc_packet** %19, align 8
  %24 = load %struct.cdev*, %struct.cdev** %7, align 8
  %25 = getelementptr inbounds %struct.cdev, %struct.cdev* %24, i32 0, i32 0
  %26 = load %struct.mfi_softc*, %struct.mfi_softc** %25, align 8
  store %struct.mfi_softc* %26, %struct.mfi_softc** %12, align 8
  store i32 0, i32* %22, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %509 [
    i32 129, label %28
    i32 128, label %452
  ]

28:                                               ; preds = %5
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @copyin(i32* %29, %struct.mfi_linux_ioc_packet* %13, i32 72)
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %22, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %22, align 4
  store i32 %34, i32* %6, align 4
  br label %518

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MAX_LINUX_IOCTL_SGE, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %6, align 4
  br label %518

42:                                               ; preds = %35
  %43 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %44 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %43, i32 0, i32 1
  %45 = call i32 @mtx_lock(i32* %44)
  %46 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %47 = call %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc* %46)
  store %struct.mfi_command* %47, %struct.mfi_command** %15, align 8
  %48 = icmp eq %struct.mfi_command* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %51 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %50, i32 0, i32 1
  %52 = call i32 @mtx_unlock(i32* %51)
  %53 = load i32, i32* @EBUSY, align 4
  store i32 %53, i32* %6, align 4
  br label %518

54:                                               ; preds = %42
  %55 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %56 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %55, i32 0, i32 1
  %57 = call i32 @mtx_unlock(i32* %56)
  store i32 0, i32* %23, align 4
  %58 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %59 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %58, i32 0, i32 2
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %18, align 8
  %64 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %68 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %67, i32 0, i32 2
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = load i32, i32* @MFI_DCMD_FRAME_SIZE, align 4
  %71 = mul nsw i32 2, %70
  %72 = call i32 @bcopy(i32* %66, %struct.TYPE_18__* %69, i32 %71)
  %73 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = mul i64 4, %75
  %77 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %76, %78
  %80 = trunc i64 %79 to i32
  %81 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %82 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %84 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %83, i32 0, i32 2
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 6
  store i32 0, i32* %87, align 4
  %88 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %89 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %88, i32 0, i32 2
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 5
  store i32 0, i32* %92, align 8
  %93 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %54
  %97 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %98 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %97, i32 0, i32 2
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = bitcast i32* %104 to %union.mfi_sgl*
  %106 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %107 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %106, i32 0, i32 6
  store %union.mfi_sgl* %105, %union.mfi_sgl** %107, align 8
  br label %108

108:                                              ; preds = %96, %54
  %109 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %110 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %112 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %111, i32 0, i32 2
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MFI_FRAME_DATAIN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %108
  %121 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %122 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %123 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %120, %108
  %127 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %128 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %127, i32 0, i32 2
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MFI_FRAME_DATAOUT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %126
  %137 = load i32, i32* @MFI_CMD_DATAOUT, align 4
  %138 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %139 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %126
  %143 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %144 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %143, i32 0, i32 2
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %150 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %152 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %142
  %156 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %157 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %160 = load i32, i32* @MFI_CMD_DATAOUT, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %158, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %155
  %165 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %166 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @M_MFIBUF, align 4
  %169 = load i32, i32* @M_WAITOK, align 4
  %170 = load i32, i32* @M_ZERO, align 4
  %171 = or i32 %169, %170
  %172 = call %struct.mfi_linux_ioc_packet* @malloc(i32 %167, i32 %168, i32 %171)
  store %struct.mfi_linux_ioc_packet* %172, %struct.mfi_linux_ioc_packet** %19, align 8
  %173 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %174 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %173, i32 0, i32 5
  store %struct.mfi_linux_ioc_packet* %172, %struct.mfi_linux_ioc_packet** %174, align 8
  br label %178

175:                                              ; preds = %155, %142
  %176 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %177 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %176, i32 0, i32 5
  store %struct.mfi_linux_ioc_packet* null, %struct.mfi_linux_ioc_packet** %177, align 8
  br label %178

178:                                              ; preds = %175, %164
  %179 = load i8*, i8** %18, align 8
  %180 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %181 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %180, i32 0, i32 2
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 4
  store i8* %179, i8** %184, align 8
  %185 = load %struct.mfi_linux_ioc_packet*, %struct.mfi_linux_ioc_packet** %19, align 8
  store %struct.mfi_linux_ioc_packet* %185, %struct.mfi_linux_ioc_packet** %20, align 8
  %186 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %187 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @MFI_CMD_DATAOUT, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %238

192:                                              ; preds = %178
  store i32 0, i32* %21, align 4
  br label %193

193:                                              ; preds = %234, %192
  %194 = load i32, i32* %21, align 4
  %195 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %194, %196
  br i1 %197, label %198, label %237

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = load i32, i32* %21, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32* @PTRIN(i32 %205)
  %207 = load %struct.mfi_linux_ioc_packet*, %struct.mfi_linux_ioc_packet** %20, align 8
  %208 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = load i32, i32* %21, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @copyin(i32* %206, %struct.mfi_linux_ioc_packet* %207, i32 %214)
  store i32 %215, i32* %22, align 4
  %216 = load i32, i32* %22, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %198
  %219 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %220 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i32, i8*, ...) @device_printf(i32 %221, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %428

223:                                              ; preds = %198
  %224 = load %struct.mfi_linux_ioc_packet*, %struct.mfi_linux_ioc_packet** %20, align 8
  %225 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %225, align 8
  %227 = load i32, i32* %21, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %224, i64 %232
  store %struct.mfi_linux_ioc_packet* %233, %struct.mfi_linux_ioc_packet** %20, align 8
  br label %234

234:                                              ; preds = %223
  %235 = load i32, i32* %21, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %21, align 4
  br label %193

237:                                              ; preds = %193
  br label %238

238:                                              ; preds = %237, %178
  %239 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %240 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %239, i32 0, i32 2
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @MFI_CMD_DCMD, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %256

247:                                              ; preds = %238
  %248 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %249 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %250 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %249, i32 0, i32 2
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @mfi_config_lock(%struct.mfi_softc* %248, i32 %254)
  store i32 %255, i32* %23, align 4
  br label %256

256:                                              ; preds = %247, %238
  %257 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %258 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %257, i32 0, i32 2
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @MFI_CMD_PD_SCSI_IO, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %287

265:                                              ; preds = %256
  %266 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %267 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = inttoptr i64 %269 to i8*
  %271 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %272 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %271, i32 0, i32 2
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  store i8* %270, i8** %275, align 8
  %276 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %277 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = ashr i32 %278, 32
  %280 = sext i32 %279 to i64
  %281 = inttoptr i64 %280 to i8*
  %282 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %283 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %282, i32 0, i32 2
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  store i8* %281, i8** %286, align 8
  br label %287

287:                                              ; preds = %265, %256
  %288 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %289 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %288, i32 0, i32 1
  %290 = call i32 @mtx_lock(i32* %289)
  %291 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %292 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %293 = call i32 @mfi_check_command_pre(%struct.mfi_softc* %291, %struct.mfi_command* %292)
  store i32 %293, i32* %22, align 4
  %294 = load i32, i32* %22, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %287
  %297 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %298 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %297, i32 0, i32 1
  %299 = call i32 @mtx_unlock(i32* %298)
  br label %428

300:                                              ; preds = %287
  %301 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %302 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %303 = call i32 @mfi_wait_command(%struct.mfi_softc* %301, %struct.mfi_command* %302)
  store i32 %303, i32* %22, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %300
  %306 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %307 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 (i32, i8*, ...) @device_printf(i32 %308, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %310 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %311 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %310, i32 0, i32 1
  %312 = call i32 @mtx_unlock(i32* %311)
  br label %428

313:                                              ; preds = %300
  %314 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %315 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %316 = call i32 @mfi_check_command_post(%struct.mfi_softc* %314, %struct.mfi_command* %315)
  %317 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %318 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %317, i32 0, i32 1
  %319 = call i32 @mtx_unlock(i32* %318)
  %320 = load %struct.mfi_linux_ioc_packet*, %struct.mfi_linux_ioc_packet** %19, align 8
  store %struct.mfi_linux_ioc_packet* %320, %struct.mfi_linux_ioc_packet** %20, align 8
  %321 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %322 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %373

327:                                              ; preds = %313
  store i32 0, i32* %21, align 4
  br label %328

328:                                              ; preds = %369, %327
  %329 = load i32, i32* %21, align 4
  %330 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp slt i32 %329, %331
  br i1 %332, label %333, label %372

333:                                              ; preds = %328
  %334 = load %struct.mfi_linux_ioc_packet*, %struct.mfi_linux_ioc_packet** %20, align 8
  %335 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 8
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %335, align 8
  %337 = load i32, i32* %21, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32* @PTRIN(i32 %341)
  %343 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 8
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %343, align 8
  %345 = load i32, i32* %21, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @copyout(%struct.mfi_linux_ioc_packet* %334, i32* %342, i32 %349)
  store i32 %350, i32* %22, align 4
  %351 = load i32, i32* %22, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %333
  %354 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %355 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = call i32 (i32, i8*, ...) @device_printf(i32 %356, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %428

358:                                              ; preds = %333
  %359 = load %struct.mfi_linux_ioc_packet*, %struct.mfi_linux_ioc_packet** %20, align 8
  %360 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 8
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %360, align 8
  %362 = load i32, i32* %21, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %359, i64 %367
  store %struct.mfi_linux_ioc_packet* %368, %struct.mfi_linux_ioc_packet** %20, align 8
  br label %369

369:                                              ; preds = %358
  %370 = load i32, i32* %21, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %21, align 4
  br label %328

372:                                              ; preds = %328
  br label %373

373:                                              ; preds = %372, %313
  %374 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %408

377:                                              ; preds = %373
  %378 = load i32*, i32** %9, align 8
  %379 = bitcast i32* %378 to %struct.mfi_linux_ioc_packet*
  %380 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %379, i32 0, i32 7
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 3
  %384 = load i64, i64* %383, align 8
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = bitcast %union.mfi_sense_ptr* %17 to %struct.TYPE_18__**
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i64 0
  %389 = call i32 @bcopy(i32* %385, %struct.TYPE_18__* %388, i32 8)
  %390 = bitcast %union.mfi_sense_ptr* %17 to %struct.TYPE_13__*
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 0
  store i32 0, i32* %391, align 8
  %392 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %393 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %392, i32 0, i32 3
  %394 = load %struct.mfi_linux_ioc_packet*, %struct.mfi_linux_ioc_packet** %393, align 8
  %395 = bitcast %union.mfi_sense_ptr* %17 to i32**
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %13, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = call i32 @copyout(%struct.mfi_linux_ioc_packet* %394, i32* %396, i32 %398)
  store i32 %399, i32* %22, align 4
  %400 = load i32, i32* %22, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %377
  %403 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %404 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = call i32 (i32, i8*, ...) @device_printf(i32 %405, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %428

407:                                              ; preds = %377
  br label %408

408:                                              ; preds = %407, %373
  %409 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %410 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %409, i32 0, i32 2
  %411 = load %struct.TYPE_18__*, %struct.TYPE_18__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 2
  %414 = load i32*, i32** %9, align 8
  %415 = bitcast i32* %414 to %struct.mfi_linux_ioc_packet*
  %416 = getelementptr inbounds %struct.mfi_linux_ioc_packet, %struct.mfi_linux_ioc_packet* %415, i32 0, i32 7
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i32 0, i32 0
  %419 = call i32 @copyout(%struct.mfi_linux_ioc_packet* %413, i32* %418, i32 1)
  store i32 %419, i32* %22, align 4
  %420 = load i32, i32* %22, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %427

422:                                              ; preds = %408
  %423 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %424 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = call i32 (i32, i8*, ...) @device_printf(i32 %425, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %428

427:                                              ; preds = %408
  br label %428

428:                                              ; preds = %427, %422, %402, %353, %305, %296, %218
  %429 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %430 = load i32, i32* %23, align 4
  %431 = call i32 @mfi_config_unlock(%struct.mfi_softc* %429, i32 %430)
  %432 = load %struct.mfi_linux_ioc_packet*, %struct.mfi_linux_ioc_packet** %19, align 8
  %433 = icmp ne %struct.mfi_linux_ioc_packet* %432, null
  br i1 %433, label %434, label %438

434:                                              ; preds = %428
  %435 = load %struct.mfi_linux_ioc_packet*, %struct.mfi_linux_ioc_packet** %19, align 8
  %436 = load i32, i32* @M_MFIBUF, align 4
  %437 = call i32 @free(%struct.mfi_linux_ioc_packet* %435, i32 %436)
  br label %438

438:                                              ; preds = %434, %428
  %439 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %440 = icmp ne %struct.mfi_command* %439, null
  br i1 %440, label %441, label %450

441:                                              ; preds = %438
  %442 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %443 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %442, i32 0, i32 1
  %444 = call i32 @mtx_lock(i32* %443)
  %445 = load %struct.mfi_command*, %struct.mfi_command** %15, align 8
  %446 = call i32 @mfi_release_command(%struct.mfi_command* %445)
  %447 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %448 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %447, i32 0, i32 1
  %449 = call i32 @mtx_unlock(i32* %448)
  br label %450

450:                                              ; preds = %441, %438
  %451 = load i32, i32* %22, align 4
  store i32 %451, i32* %6, align 4
  br label %518

452:                                              ; preds = %5
  %453 = load i32*, i32** %9, align 8
  %454 = bitcast %struct.mfi_linux_ioc_aen* %14 to %struct.mfi_linux_ioc_packet*
  %455 = call i32 @copyin(i32* %453, %struct.mfi_linux_ioc_packet* %454, i32 72)
  store i32 %455, i32* %22, align 4
  %456 = load i32, i32* %22, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %460

458:                                              ; preds = %452
  %459 = load i32, i32* %22, align 4
  store i32 %459, i32* %6, align 4
  br label %518

460:                                              ; preds = %452
  %461 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curproc, align 8
  %462 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %463)
  %465 = load i32, i32* @M_MFIBUF, align 4
  %466 = load i32, i32* @M_WAITOK, align 4
  %467 = call %struct.mfi_linux_ioc_packet* @malloc(i32 72, i32 %465, i32 %466)
  %468 = bitcast %struct.mfi_linux_ioc_packet* %467 to %struct.mfi_aen*
  store %struct.mfi_aen* %468, %struct.mfi_aen** %16, align 8
  %469 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %470 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %469, i32 0, i32 1
  %471 = call i32 @mtx_lock(i32* %470)
  %472 = load %struct.mfi_aen*, %struct.mfi_aen** %16, align 8
  %473 = icmp ne %struct.mfi_aen* %472, null
  br i1 %473, label %474, label %484

474:                                              ; preds = %460
  %475 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curproc, align 8
  %476 = load %struct.mfi_aen*, %struct.mfi_aen** %16, align 8
  %477 = getelementptr inbounds %struct.mfi_aen, %struct.mfi_aen* %476, i32 0, i32 6
  store %struct.TYPE_17__* %475, %struct.TYPE_17__** %477, align 8
  %478 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %479 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %478, i32 0, i32 2
  %480 = load %struct.mfi_aen*, %struct.mfi_aen** %16, align 8
  %481 = bitcast %struct.mfi_aen* %480 to %struct.mfi_linux_ioc_packet*
  %482 = load i32, i32* @aen_link, align 4
  %483 = call i32 @TAILQ_INSERT_TAIL(i32* %479, %struct.mfi_linux_ioc_packet* %481, i32 %482)
  br label %484

484:                                              ; preds = %474, %460
  %485 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %486 = getelementptr inbounds %struct.mfi_linux_ioc_aen, %struct.mfi_linux_ioc_aen* %14, i32 0, i32 5
  %487 = load i32, i32* %486, align 4
  %488 = getelementptr inbounds %struct.mfi_linux_ioc_aen, %struct.mfi_linux_ioc_aen* %14, i32 0, i32 4
  %489 = load i32, i32* %488, align 8
  %490 = call i32 @mfi_aen_register(%struct.mfi_softc* %485, i32 %487, i32 %489)
  store i32 %490, i32* %22, align 4
  %491 = load i32, i32* %22, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %504

493:                                              ; preds = %484
  %494 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %495 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %494, i32 0, i32 2
  %496 = load %struct.mfi_aen*, %struct.mfi_aen** %16, align 8
  %497 = bitcast %struct.mfi_aen* %496 to %struct.mfi_linux_ioc_packet*
  %498 = load i32, i32* @aen_link, align 4
  %499 = call i32 @TAILQ_REMOVE(i32* %495, %struct.mfi_linux_ioc_packet* %497, i32 %498)
  %500 = load %struct.mfi_aen*, %struct.mfi_aen** %16, align 8
  %501 = bitcast %struct.mfi_aen* %500 to %struct.mfi_linux_ioc_packet*
  %502 = load i32, i32* @M_MFIBUF, align 4
  %503 = call i32 @free(%struct.mfi_linux_ioc_packet* %501, i32 %502)
  br label %504

504:                                              ; preds = %493, %484
  %505 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %506 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %505, i32 0, i32 1
  %507 = call i32 @mtx_unlock(i32* %506)
  %508 = load i32, i32* %22, align 4
  store i32 %508, i32* %6, align 4
  br label %518

509:                                              ; preds = %5
  %510 = load %struct.mfi_softc*, %struct.mfi_softc** %12, align 8
  %511 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* %8, align 4
  %514 = call i32 (i32, i8*, ...) @device_printf(i32 %512, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %513)
  %515 = load i32, i32* @ENOENT, align 4
  store i32 %515, i32* %22, align 4
  br label %516

516:                                              ; preds = %509
  %517 = load i32, i32* %22, align 4
  store i32 %517, i32* %6, align 4
  br label %518

518:                                              ; preds = %516, %504, %458, %450, %49, %40, %33
  %519 = load i32, i32* %6, align 4
  ret i32 %519
}

declare dso_local i32 @copyin(i32*, %struct.mfi_linux_ioc_packet*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bcopy(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local %struct.mfi_linux_ioc_packet* @malloc(i32, i32, i32) #1

declare dso_local i32* @PTRIN(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mfi_config_lock(%struct.mfi_softc*, i32) #1

declare dso_local i32 @mfi_check_command_pre(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @mfi_wait_command(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @mfi_check_command_post(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @copyout(%struct.mfi_linux_ioc_packet*, i32*, i32) #1

declare dso_local i32 @mfi_config_unlock(%struct.mfi_softc*, i32) #1

declare dso_local i32 @free(%struct.mfi_linux_ioc_packet*, i32) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mfi_linux_ioc_packet*, i32) #1

declare dso_local i32 @mfi_aen_register(%struct.mfi_softc*, i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mfi_linux_ioc_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
