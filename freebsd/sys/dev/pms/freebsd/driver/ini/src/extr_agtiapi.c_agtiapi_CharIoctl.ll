; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pms/freebsd/driver/ini/src/extr_agtiapi.c_agtiapi_CharIoctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pms/freebsd/driver/ini/src/extr_agtiapi.c_agtiapi_CharIoctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.agtiapi_softc* }
%struct.agtiapi_softc = type { i32, i32, %struct.sema*, i32, i32, i32 }
%struct.sema = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8*, i32, i64, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"agtiapi_CharIoctl: old load->datasize = %d\0A\00", align 1
@IOCTL_CALL_FAIL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"sem\00", align 1
@IOCTL_MJ_GET_DEVICE_LIST = common dso_local global i32 0, align 4
@IOCTL_CALL_SUCCESS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"agtiapi_CharIoctl: new load->datasize = %d\0A\00", align 1
@IOCTL_MN_GET_CARD_INFO = common dso_local global i32 0, align 4
@IOCTL_MJ_CHECK_DPMC_EVENT = common dso_local global i32 0, align 4
@AGTIAPI_PORT_PANIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"DPMC LEAN\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"do not dpmc lean\0A\00", align 1
@IOCTL_MJ_CHECK_FATAL_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [73 x i8] c"agtiapi_CharIoctl: IOCTL_MJ_CHECK_FATAL_ERROR call received for card %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"agtiapi_CharIoctl: Port Panic Status For Card %d is True\0A\00", align 1
@IOCTL_MJ_FATAL_ERR_CHK_SEND_TRUE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [59 x i8] c"agtiapi_CharIoctl: Port Panic Status For Card %d is False\0A\00", align 1
@IOCTL_MJ_FATAL_ERR_CHK_SEND_FALSE = common dso_local global i8* null, align 8
@IOCTL_MJ_FATAL_ERROR_DUMP_COMPLETE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [81 x i8] c"agtiapi_CharIoctl: IOCTL_MJ_FATAL_ERROR_DUMP_COMPLETE call received for card %d\0A\00", align 1
@AGTIAPI_SOFT_RESET = common dso_local global i32 0, align 4
@AGTIAPI_SUCCESS = common dso_local global i32 0, align 4
@IOCTL_MJ_FATAL_ERROR_SOFT_RESET_TRIG = common dso_local global i8* null, align 8
@IOCTL_CALL_PENDING = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @agtiapi_CharIoctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agtiapi_CharIoctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.sema, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.agtiapi_softc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i64, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %22 = load %struct.cdev*, %struct.cdev** %7, align 8
  %23 = getelementptr inbounds %struct.cdev, %struct.cdev* %22, i32 0, i32 0
  %24 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %23, align 8
  store %struct.agtiapi_softc* %24, %struct.agtiapi_softc** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %20, align 8
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %286 [
    i32 128, label %26
  ]

26:                                               ; preds = %5
  %27 = load i64, i64* %9, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %13, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TEMP, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call %struct.TYPE_10__* @malloc(i32 %31, i32 %32, i32 %33)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %14, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @AGTIAPI_PRINTK(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @copyin(i32 %41, %struct.TYPE_10__* %42, i32 %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %26
  %50 = load i8*, i8** @IOCTL_CALL_FAIL, align 8
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %6, align 4
  br label %290

53:                                               ; preds = %26
  %54 = call i32 @sema_init(%struct.sema* %12, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %56 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %55, i32 0, i32 2
  store %struct.sema* %12, %struct.sema** %56, align 8
  %57 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %58 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %57, i32 0, i32 4
  store i32 0, i32* %58, align 4
  %59 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %60 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %59, i32 0, i32 5
  store i32 0, i32* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IOCTL_MJ_GET_DEVICE_LIST, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %110

66:                                               ; preds = %53
  %67 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %69 = call i32 @agtiapi_getdevlist(%struct.agtiapi_softc* %67, %struct.TYPE_10__* %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i8*, i8** @IOCTL_CALL_SUCCESS, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @IOCTL_CALL_SUCCESS, align 8
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %16, align 4
  br label %84

78:                                               ; preds = %66
  %79 = load i8*, i8** @IOCTL_CALL_FAIL, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @IOCTL_CALL_FAIL, align 8
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %78, %72
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %20, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = sub i64 %92, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @AGTIAPI_PRINTK(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %265

110:                                              ; preds = %53
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IOCTL_MN_GET_CARD_INFO, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %110
  %117 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @agtiapi_getCardInfo(%struct.agtiapi_softc* %117, i32 %120, i64 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %116
  %128 = load i8*, i8** @IOCTL_CALL_SUCCESS, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** @IOCTL_CALL_SUCCESS, align 8
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %16, align 4
  br label %139

133:                                              ; preds = %116
  %134 = load i8*, i8** @IOCTL_CALL_FAIL, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @IOCTL_CALL_FAIL, align 8
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %133, %127
  br label %264

140:                                              ; preds = %110
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @IOCTL_MJ_CHECK_DPMC_EVENT, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %140
  %147 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %148 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @AGTIAPI_PORT_PANIC, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @strcpy(i64 %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %163

158:                                              ; preds = %146
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @strcpy(i64 %161, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i8*, i8** @IOCTL_CALL_SUCCESS, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  %167 = load i8*, i8** @IOCTL_CALL_SUCCESS, align 8
  %168 = ptrtoint i8* %167 to i32
  store i32 %168, i32* %16, align 4
  br label %263

169:                                              ; preds = %140
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @IOCTL_MJ_CHECK_FATAL_ERROR, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %205

175:                                              ; preds = %169
  %176 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %177 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @AGTIAPI_PRINTK(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %178)
  %180 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %181 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @AGTIAPI_PORT_PANIC, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %175
  %187 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %188 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %189)
  %191 = load i8*, i8** @IOCTL_MJ_FATAL_ERR_CHK_SEND_TRUE, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  br label %202

194:                                              ; preds = %175
  %195 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %196 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @AGTIAPI_PRINTK(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %197)
  %199 = load i8*, i8** @IOCTL_MJ_FATAL_ERR_CHK_SEND_FALSE, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  store i8* %199, i8** %201, align 8
  br label %202

202:                                              ; preds = %194, %186
  %203 = load i8*, i8** @IOCTL_CALL_SUCCESS, align 8
  %204 = ptrtoint i8* %203 to i32
  store i32 %204, i32* %16, align 4
  br label %262

205:                                              ; preds = %169
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @IOCTL_MJ_FATAL_ERROR_DUMP_COMPLETE, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %245

211:                                              ; preds = %205
  %212 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %213 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @AGTIAPI_PRINTK(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* @AGTIAPI_SOFT_RESET, align 4
  %217 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %218 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  %221 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %222 = call i32 @agtiapi_ResetCard(%struct.agtiapi_softc* %221, i64* %21)
  store i32 %222, i32* %17, align 4
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* @AGTIAPI_SUCCESS, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %238

226:                                              ; preds = %211
  %227 = load i32, i32* @AGTIAPI_PORT_PANIC, align 4
  %228 = xor i32 %227, -1
  %229 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %230 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = and i32 %231, %228
  store i32 %232, i32* %230, align 8
  %233 = load i8*, i8** @IOCTL_MJ_FATAL_ERROR_SOFT_RESET_TRIG, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  store i8* %233, i8** %235, align 8
  %236 = load i8*, i8** @IOCTL_CALL_SUCCESS, align 8
  %237 = ptrtoint i8* %236 to i32
  store i32 %237, i32* %16, align 4
  br label %244

238:                                              ; preds = %211
  %239 = load i8*, i8** @IOCTL_CALL_FAIL, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  store i8* %239, i8** %241, align 8
  %242 = load i8*, i8** @IOCTL_CALL_FAIL, align 8
  %243 = ptrtoint i8* %242 to i32
  store i32 %243, i32* %16, align 4
  br label %244

244:                                              ; preds = %238, %226
  br label %261

245:                                              ; preds = %205
  %246 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %247 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %246, i32 0, i32 3
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %249 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %250 = call i32 @tiCOMMgntIOCTL(i32* %247, %struct.TYPE_10__* %248, %struct.agtiapi_softc* %249, i32* null, i32* null)
  store i32 %250, i32* %16, align 4
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* @IOCTL_CALL_PENDING, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %245
  %255 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %256 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %255, i32 0, i32 3
  %257 = call i32 @ostiIOCTLWaitForSignal(i32* %256, i32* null, i32* null, i32* null)
  %258 = load i8*, i8** @IOCTL_CALL_SUCCESS, align 8
  %259 = ptrtoint i8* %258 to i32
  store i32 %259, i32* %16, align 4
  br label %260

260:                                              ; preds = %254, %245
  br label %261

261:                                              ; preds = %260, %244
  br label %262

262:                                              ; preds = %261, %202
  br label %263

263:                                              ; preds = %262, %163
  br label %264

264:                                              ; preds = %263, %139
  br label %265

265:                                              ; preds = %264, %84
  %266 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %15, align 8
  %267 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %266, i32 0, i32 2
  store %struct.sema* null, %struct.sema** %267, align 8
  store i32 0, i32* %18, align 4
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @copyout(%struct.TYPE_10__* %268, i32 %271, i32 %274)
  store i32 %275, i32* %18, align 4
  %276 = load i32, i32* %18, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %265
  %279 = load i8*, i8** @IOCTL_CALL_FAIL, align 8
  %280 = ptrtoint i8* %279 to i32
  store i32 %280, i32* %16, align 4
  %281 = load i32, i32* %16, align 4
  store i32 %281, i32* %6, align 4
  br label %290

282:                                              ; preds = %265
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %284 = load i32, i32* @TEMP, align 4
  %285 = call i32 @free(%struct.TYPE_10__* %283, i32 %284)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %14, align 8
  br label %288

286:                                              ; preds = %5
  %287 = load i32, i32* @ENOTTY, align 4
  store i32 %287, i32* %19, align 4
  br label %288

288:                                              ; preds = %286, %282
  %289 = load i32, i32* %16, align 4
  store i32 %289, i32* %6, align 4
  br label %290

290:                                              ; preds = %288, %278, %49
  %291 = load i32, i32* %6, align 4
  ret i32 %291
}

declare dso_local %struct.TYPE_10__* @malloc(i32, i32, i32) #1

declare dso_local i32 @AGTIAPI_PRINTK(i8*, i32) #1

declare dso_local i32 @copyin(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @sema_init(%struct.sema*, i32, i8*) #1

declare dso_local i32 @agtiapi_getdevlist(%struct.agtiapi_softc*, %struct.TYPE_10__*) #1

declare dso_local i32 @agtiapi_getCardInfo(%struct.agtiapi_softc*, i32, i64) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @agtiapi_ResetCard(%struct.agtiapi_softc*, i64*) #1

declare dso_local i32 @tiCOMMgntIOCTL(i32*, %struct.TYPE_10__*, %struct.agtiapi_softc*, i32*, i32*) #1

declare dso_local i32 @ostiIOCTLWaitForSignal(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @copyout(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
