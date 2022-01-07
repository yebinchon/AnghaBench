; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_init_MFI_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_init_MFI_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32 }
%struct.MPI2_IOC_INIT_REQUEST = type { i32, i8*, i64, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.mfi_init_frame = type { %struct.TYPE_7__, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.mfi_command = type { i32, i64, %union.mfi_frame*, i8*, i32, i32* }
%union.mfi_frame = type { %struct.mfi_init_frame }
%struct.TYPE_5__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"tbolt_init already initialised!\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"tbolt_init failed to get command  entry!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MPI2_FUNCTION_IOC_INIT = common dso_local global i32 0, align 4
@MPI2_WHOINIT_HOST_DRIVER = common dso_local global i32 0, align 4
@MPI2_VERSION = common dso_local global i32 0, align 4
@MPI2_HEADER_VERSION = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i8* null, align 8
@MEGASAS_VERSION = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MFI_FRAME_DONT_POST_IN_REPLY_QUEUE = common dso_local global i32 0, align 4
@MFI_CMD_INIT = common dso_local global i32 0, align 4
@MFI_STAT_INVALID_STATUS = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"failed to send IOC init2 command %d at %lx\0A\00", align 1
@MFI_STAT_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Init command Failed %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_tbolt_init_MFI_queue(%struct.mfi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca %struct.MPI2_IOC_INIT_REQUEST*, align 8
  %5 = alloca %struct.mfi_init_frame*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.mfi_command*, align 8
  %10 = alloca %struct.mfi_command, align 8
  %11 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %12, i32 0, i32 15
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @mtx_assert(i32* %13, i32 %14)
  %16 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %289

25:                                               ; preds = %1
  %26 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %27 = call %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc* %26)
  store %struct.mfi_command* %27, %struct.mfi_command** %9, align 8
  %28 = icmp eq %struct.mfi_command* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  store i32 %34, i32* %2, align 4
  br label %289

35:                                               ; preds = %25
  %36 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %37 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %36, i32 0, i32 2
  %38 = load %union.mfi_frame*, %union.mfi_frame** %37, align 8
  %39 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %10, i32 0, i32 2
  store %union.mfi_frame* %38, %union.mfi_frame** %39, align 8
  %40 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %41 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %10, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %45 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %10, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %48, i32 0, i32 14
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %union.mfi_frame*
  %52 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %53 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %52, i32 0, i32 2
  store %union.mfi_frame* %51, %union.mfi_frame** %53, align 8
  %54 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %54, i32 0, i32 13
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %58 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %60 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %63 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %65 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %64, i32 0, i32 2
  %66 = load %union.mfi_frame*, %union.mfi_frame** %65, align 8
  %67 = bitcast %union.mfi_frame* %66 to %struct.TYPE_5__*
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %70 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %69, i32 0, i32 2
  %71 = load %union.mfi_frame*, %union.mfi_frame** %70, align 8
  %72 = bitcast %union.mfi_frame* %71 to %struct.mfi_init_frame*
  store %struct.mfi_init_frame* %72, %struct.mfi_init_frame** %5, align 8
  %73 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %74 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %73, i32 0, i32 11
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.MPI2_IOC_INIT_REQUEST*
  store %struct.MPI2_IOC_INIT_REQUEST* %76, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %77 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %78 = call i32 @bzero(%struct.MPI2_IOC_INIT_REQUEST* %77, i32 64)
  %79 = load i32, i32* @MPI2_FUNCTION_IOC_INIT, align 4
  %80 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %81 = getelementptr inbounds %struct.MPI2_IOC_INIT_REQUEST, %struct.MPI2_IOC_INIT_REQUEST* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @MPI2_WHOINIT_HOST_DRIVER, align 4
  %83 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %84 = getelementptr inbounds %struct.MPI2_IOC_INIT_REQUEST, %struct.MPI2_IOC_INIT_REQUEST* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @MPI2_VERSION, align 4
  %86 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %87 = getelementptr inbounds %struct.MPI2_IOC_INIT_REQUEST, %struct.MPI2_IOC_INIT_REQUEST* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @MPI2_HEADER_VERSION, align 4
  %89 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %90 = getelementptr inbounds %struct.MPI2_IOC_INIT_REQUEST, %struct.MPI2_IOC_INIT_REQUEST* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 8
  %91 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %92 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 4
  %95 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %96 = getelementptr inbounds %struct.MPI2_IOC_INIT_REQUEST, %struct.MPI2_IOC_INIT_REQUEST* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %98 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %97, i32 0, i32 10
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %101 = getelementptr inbounds %struct.MPI2_IOC_INIT_REQUEST, %struct.MPI2_IOC_INIT_REQUEST* %100, i32 0, i32 6
  store i64 %99, i64* %101, align 8
  %102 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %103 = getelementptr inbounds %struct.MPI2_IOC_INIT_REQUEST, %struct.MPI2_IOC_INIT_REQUEST* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %105 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %104, i32 0, i32 9
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %108 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %106, %109
  store i64 %110, i64* %6, align 8
  %111 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %112 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %111, i32 0, i32 8
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = add i64 %113, %114
  store i64 %115, i64* %7, align 8
  %116 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %117 = getelementptr inbounds %struct.MPI2_IOC_INIT_REQUEST, %struct.MPI2_IOC_INIT_REQUEST* %116, i32 0, i32 4
  %118 = bitcast i32* %117 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %118, %struct.TYPE_8__** %8, align 8
  %119 = load i64, i64* %7, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store i8* %120, i8** %123, align 8
  %124 = load i64, i64* %7, align 8
  %125 = trunc i64 %124 to i32
  %126 = ashr i32 %125, 32
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  %132 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %133 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %136 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %134, %137
  store i64 %138, i64* %6, align 8
  %139 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %140 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %139, i32 0, i32 8
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %6, align 8
  %143 = add i64 %141, %142
  store i64 %143, i64* %7, align 8
  %144 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %145 = getelementptr inbounds %struct.MPI2_IOC_INIT_REQUEST, %struct.MPI2_IOC_INIT_REQUEST* %144, i32 0, i32 3
  %146 = bitcast i32* %145 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %146, %struct.TYPE_8__** %8, align 8
  %147 = load i64, i64* %7, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i8* %148, i8** %151, align 8
  %152 = load i64, i64* %7, align 8
  %153 = trunc i64 %152 to i32
  %154 = ashr i32 %153, 32
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i8* %156, i8** %159, align 8
  %160 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %161 = getelementptr inbounds %struct.MPI2_IOC_INIT_REQUEST, %struct.MPI2_IOC_INIT_REQUEST* %160, i32 0, i32 2
  store i64 0, i64* %161, align 8
  %162 = load i8*, i8** @time_uptime, align 8
  %163 = load %struct.MPI2_IOC_INIT_REQUEST*, %struct.MPI2_IOC_INIT_REQUEST** %4, align 8
  %164 = getelementptr inbounds %struct.MPI2_IOC_INIT_REQUEST, %struct.MPI2_IOC_INIT_REQUEST* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %166 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %165, i32 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %194

169:                                              ; preds = %35
  %170 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %171 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %170, i32 0, i32 7
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to i8*
  %174 = load i8*, i8** @MEGASAS_VERSION, align 8
  %175 = call i64 @strlen(i8* %174)
  %176 = add nsw i64 %175, 2
  %177 = load i8*, i8** @MEGASAS_VERSION, align 8
  %178 = call i32 @snprintf(i8* %173, i64 %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %177)
  %179 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %180 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to i8*
  %183 = load %struct.mfi_init_frame*, %struct.mfi_init_frame** %5, align 8
  %184 = getelementptr inbounds %struct.mfi_init_frame, %struct.mfi_init_frame* %183, i32 0, i32 4
  store i8* %182, i8** %184, align 8
  %185 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %186 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = ashr i32 %188, 32
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to i8*
  %192 = load %struct.mfi_init_frame*, %struct.mfi_init_frame** %5, align 8
  %193 = getelementptr inbounds %struct.mfi_init_frame, %struct.mfi_init_frame* %192, i32 0, i32 3
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %169, %35
  %195 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %196 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %7, align 8
  %198 = load i64, i64* %7, align 8
  %199 = inttoptr i64 %198 to i8*
  %200 = load %struct.mfi_init_frame*, %struct.mfi_init_frame** %5, align 8
  %201 = getelementptr inbounds %struct.mfi_init_frame, %struct.mfi_init_frame* %200, i32 0, i32 2
  store i8* %199, i8** %201, align 8
  %202 = load i64, i64* %7, align 8
  %203 = trunc i64 %202 to i32
  %204 = ashr i32 %203, 32
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i8*
  %207 = load %struct.mfi_init_frame*, %struct.mfi_init_frame** %5, align 8
  %208 = getelementptr inbounds %struct.mfi_init_frame, %struct.mfi_init_frame* %207, i32 0, i32 1
  store i8* %206, i8** %208, align 8
  %209 = load i32, i32* @MFI_FRAME_DONT_POST_IN_REPLY_QUEUE, align 4
  %210 = load %struct.mfi_init_frame*, %struct.mfi_init_frame** %5, align 8
  %211 = getelementptr inbounds %struct.mfi_init_frame, %struct.mfi_init_frame* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %209
  store i32 %214, i32* %212, align 4
  %215 = load i32, i32* @MFI_CMD_INIT, align 4
  %216 = load %struct.mfi_init_frame*, %struct.mfi_init_frame** %5, align 8
  %217 = getelementptr inbounds %struct.mfi_init_frame, %struct.mfi_init_frame* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  store i32 %215, i32* %218, align 8
  %219 = load %struct.mfi_init_frame*, %struct.mfi_init_frame** %5, align 8
  %220 = getelementptr inbounds %struct.mfi_init_frame, %struct.mfi_init_frame* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  store i32 64, i32* %221, align 8
  %222 = load i32, i32* @MFI_STAT_INVALID_STATUS, align 4
  %223 = load %struct.mfi_init_frame*, %struct.mfi_init_frame** %5, align 8
  %224 = getelementptr inbounds %struct.mfi_init_frame, %struct.mfi_init_frame* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  store i32 %222, i32* %225, align 4
  %226 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %227 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %226, i32 0, i32 5
  store i32* null, i32** %227, align 8
  %228 = load i32, i32* @MFI_CMD_POLLED, align 4
  %229 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %230 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  %233 = load i8*, i8** @time_uptime, align 8
  %234 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %235 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %234, i32 0, i32 3
  store i8* %233, i8** %235, align 8
  %236 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %237 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %238 = call i32 @mfi_mapcmd(%struct.mfi_softc* %236, %struct.mfi_command* %237)
  store i32 %238, i32* %11, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %194
  %241 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %242 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %246 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = call i32 (i32, i8*, ...) @device_printf(i32 %243, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %244, i64 %247)
  br label %273

249:                                              ; preds = %194
  %250 = load %struct.mfi_init_frame*, %struct.mfi_init_frame** %5, align 8
  %251 = getelementptr inbounds %struct.mfi_init_frame, %struct.mfi_init_frame* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @MFI_STAT_OK, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %249
  %257 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %258 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %257, i32 0, i32 0
  store i32 1, i32* %258, align 8
  br label %272

259:                                              ; preds = %249
  %260 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %261 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.mfi_init_frame*, %struct.mfi_init_frame** %5, align 8
  %264 = getelementptr inbounds %struct.mfi_init_frame, %struct.mfi_init_frame* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i32, i8*, ...) @device_printf(i32 %262, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %266)
  %268 = load %struct.mfi_init_frame*, %struct.mfi_init_frame** %5, align 8
  %269 = getelementptr inbounds %struct.mfi_init_frame, %struct.mfi_init_frame* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %11, align 4
  br label %273

272:                                              ; preds = %256
  br label %273

273:                                              ; preds = %272, %259, %240
  %274 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %10, i32 0, i32 2
  %275 = load %union.mfi_frame*, %union.mfi_frame** %274, align 8
  %276 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %277 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %276, i32 0, i32 2
  store %union.mfi_frame* %275, %union.mfi_frame** %277, align 8
  %278 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %10, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %281 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %280, i32 0, i32 1
  store i64 %279, i64* %281, align 8
  %282 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %10, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %285 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  %286 = load %struct.mfi_command*, %struct.mfi_command** %9, align 8
  %287 = call i32 @mfi_release_command(%struct.mfi_command* %286)
  %288 = load i32, i32* %11, align 4
  store i32 %288, i32* %2, align 4
  br label %289

289:                                              ; preds = %273, %29, %20
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc*) #1

declare dso_local i32 @bzero(%struct.MPI2_IOC_INIT_REQUEST*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mfi_mapcmd(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
