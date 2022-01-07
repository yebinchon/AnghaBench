; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_cam.c_amr_cam_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_cam.c_amr_cam_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i64 }
%struct.amr_command = type { %struct.TYPE_12__, i32, %struct.ccb_scsiio*, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.ccb_scsiio = type { %struct.TYPE_11__, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.amr_passthrough, %struct.amr_ext_passthrough }
%struct.amr_passthrough = type { i32, i32, i32, i32, i32, i32, i32*, i32, i64, i64 }
%struct.amr_ext_passthrough = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i64 }
%union.ccb = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c" COMMAND %x/%d+%d to %d:%d:%d\00", align 1
@AMR_CMD_CCB = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@AMR_CMD_DATAIN = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@AMR_CMD_DATAOUT = common dso_local global i32 0, align 4
@amr_cam_complete = common dso_local global i32 0, align 4
@AMR_CMD_EXTPASS = common dso_local global i32 0, align 4
@AMR_CMD_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_softc*, %struct.amr_command**)* @amr_cam_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_cam_command(%struct.amr_softc* %0, %struct.amr_command** %1) #0 {
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca %struct.amr_command**, align 8
  %5 = alloca %struct.amr_command*, align 8
  %6 = alloca %struct.amr_passthrough*, align 8
  %7 = alloca %struct.amr_ext_passthrough*, align 8
  %8 = alloca %struct.ccb_scsiio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amr_softc* %0, %struct.amr_softc** %3, align 8
  store %struct.amr_command** %1, %struct.amr_command*** %4, align 8
  store i32 0, i32* %11, align 4
  store %struct.amr_command* null, %struct.amr_command** %5, align 8
  store %struct.amr_passthrough* null, %struct.amr_passthrough** %6, align 8
  store %struct.amr_ext_passthrough* null, %struct.amr_ext_passthrough** %7, align 8
  %12 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %13 = call i64 @amr_dequeue_ccb(%struct.amr_softc* %12)
  %14 = inttoptr i64 %13 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %14, %struct.ccb_scsiio** %8, align 8
  %15 = icmp eq %struct.ccb_scsiio* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %283

17:                                               ; preds = %2
  %18 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %19 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %27 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %31 = call %struct.amr_command* @amr_alloccmd(%struct.amr_softc* %30)
  store %struct.amr_command* %31, %struct.amr_command** %5, align 8
  %32 = icmp eq %struct.amr_command* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %11, align 4
  br label %283

35:                                               ; preds = %17
  %36 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %37 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %128

40:                                               ; preds = %35
  %41 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %42 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %41, i32 0, i32 6
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store %struct.amr_ext_passthrough* %44, %struct.amr_ext_passthrough** %7, align 8
  %45 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %46 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %45, i32 0, i32 0
  store i32 2, i32* %46, align 8
  %47 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %48 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %50 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %49, i32 0, i32 2
  store i32 14, i32* %50, align 8
  %51 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %52 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %51, i32 0, i32 9
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %55 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %58 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %60 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %64 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %66 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %69 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %71 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %74 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %76 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CAM_CDB_POINTER, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %40
  %83 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %84 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %88 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %87, i32 0, i32 7
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %91 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @bcopy(i32 %86, i32* %89, i32 %92)
  br label %106

94:                                               ; preds = %40
  %95 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %96 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %100 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %99, i32 0, i32 7
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %103 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @bcopy(i32 %98, i32* %101, i32 %104)
  br label %106

106:                                              ; preds = %94, %82
  %107 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %108 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %113 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %116 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %119 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %122 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.amr_ext_passthrough*, %struct.amr_ext_passthrough** %7, align 8
  %125 = getelementptr inbounds %struct.amr_ext_passthrough, %struct.amr_ext_passthrough* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @debug(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %114, i32 %117, i32 %120, i32 %123, i32 %126)
  br label %216

128:                                              ; preds = %35
  %129 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %130 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %129, i32 0, i32 6
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store %struct.amr_passthrough* %132, %struct.amr_passthrough** %6, align 8
  %133 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %134 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %133, i32 0, i32 9
  store i64 0, i64* %134, align 8
  %135 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %136 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %138 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %137, i32 0, i32 1
  store i32 14, i32* %138, align 4
  %139 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %140 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %139, i32 0, i32 8
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %143 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %146 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %148 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %152 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %154 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %157 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %159 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %162 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 8
  %163 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %164 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @CAM_CDB_POINTER, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %128
  %171 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %172 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %176 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %179 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @bcopy(i32 %174, i32* %177, i32 %180)
  br label %194

182:                                              ; preds = %128
  %183 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %184 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %188 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %187, i32 0, i32 6
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %191 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @bcopy(i32 %186, i32* %189, i32 %192)
  br label %194

194:                                              ; preds = %182, %170
  %195 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %196 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %195, i32 0, i32 6
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %201 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %204 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %207 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %210 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.amr_passthrough*, %struct.amr_passthrough** %6, align 8
  %213 = getelementptr inbounds %struct.amr_passthrough, %struct.amr_passthrough* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @debug(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %199, i32 %202, i32 %205, i32 %208, i32 %211, i32 %214)
  br label %216

216:                                              ; preds = %194, %106
  %217 = load i32, i32* @AMR_CMD_CCB, align 4
  %218 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %219 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  %222 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %223 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %226 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 8
  %227 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %228 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %231 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 4
  %232 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %233 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @CAM_DIR_MASK, align 4
  %237 = and i32 %235, %236
  %238 = load i32, i32* @CAM_DIR_IN, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %216
  %241 = load i32, i32* @AMR_CMD_DATAIN, align 4
  %242 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %243 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %240, %216
  %247 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %248 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @CAM_DIR_MASK, align 4
  %252 = and i32 %250, %251
  %253 = load i32, i32* @CAM_DIR_OUT, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %246
  %256 = load i32, i32* @AMR_CMD_DATAOUT, align 4
  %257 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %258 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  br label %261

261:                                              ; preds = %255, %246
  %262 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %263 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %264 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %263, i32 0, i32 2
  store %struct.ccb_scsiio* %262, %struct.ccb_scsiio** %264, align 8
  %265 = load i32, i32* @amr_cam_complete, align 4
  %266 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %267 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 4
  %268 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %269 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %261
  %273 = load i32, i32* @AMR_CMD_EXTPASS, align 4
  %274 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %275 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  store i32 %273, i32* %276, align 8
  br label %282

277:                                              ; preds = %261
  %278 = load i32, i32* @AMR_CMD_PASS, align 4
  %279 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %280 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  store i32 %278, i32* %281, align 8
  br label %282

282:                                              ; preds = %277, %272
  br label %283

283:                                              ; preds = %282, %33, %16
  %284 = load i32, i32* %11, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %301

286:                                              ; preds = %283
  %287 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %288 = icmp ne %struct.amr_command* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %291 = call i32 @amr_releasecmd(%struct.amr_command* %290)
  br label %292

292:                                              ; preds = %289, %286
  %293 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %294 = icmp ne %struct.ccb_scsiio* %293, null
  br i1 %294, label %295, label %300

295:                                              ; preds = %292
  %296 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %297 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %298 = bitcast %struct.ccb_scsiio* %297 to %union.ccb*
  %299 = call i32 @amr_requeue_ccb(%struct.amr_softc* %296, %union.ccb* %298)
  br label %300

300:                                              ; preds = %295, %292
  br label %301

301:                                              ; preds = %300, %283
  %302 = load %struct.amr_command*, %struct.amr_command** %5, align 8
  %303 = load %struct.amr_command**, %struct.amr_command*** %4, align 8
  store %struct.amr_command* %302, %struct.amr_command** %303, align 8
  %304 = load i32, i32* %11, align 4
  ret i32 %304
}

declare dso_local i64 @amr_dequeue_ccb(%struct.amr_softc*) #1

declare dso_local %struct.amr_command* @amr_alloccmd(%struct.amr_softc*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @debug(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @amr_releasecmd(%struct.amr_command*) #1

declare dso_local i32 @amr_requeue_ccb(%struct.amr_softc*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
