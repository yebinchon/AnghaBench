; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 (%struct.ipmi_softc*)*, i32, i8*, i32, i32, i64, %struct.TYPE_2__*, i8*, i8*, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.ipmi_softc* }
%struct.ipmi_request = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"ipmi requests\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ipmi io\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ipmireq\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to initialize interface: %d\0A\00", align 1
@IPMI_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_DEVICE_ID = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Timed out waiting for GET_DEVICE_ID\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed GET_DEVICE_ID: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Bad completion code for GET_DEVICE_ID: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Short reply for GET_DEVICE_ID: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [84 x i8] c"IPMI device rev. %d, firmware rev. %d.%d%d, version %d.%d, device support mask %#x\0A\00", align 1
@IPMI_CLEAR_FLAGS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Clear flags is busy\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Clear flags illegal\0A\00", align 1
@IPMI_GET_CHANNEL_INFO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Number of channels %d\0A\00", align 1
@IPMI_GET_WDOG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"Attached watchdog\0A\00", align 1
@watchdog_list = common dso_local global i32 0, align 4
@ipmi_wd_event = common dso_local global i32 0, align 4
@shutdown_pre_sync = common dso_local global i32 0, align 4
@ipmi_shutdown_event = common dso_local global i32 0, align 4
@ipmi_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"ipmi%d\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Failed to create cdev\0A\00", align 1
@on = common dso_local global i64 0, align 8
@wd_startup_countdown = common dso_local global i64 0, align 8
@IPMI_SET_WD_ACTION_POWER_CYCLE = common dso_local global i32 0, align 4
@wd_timer_actions = common dso_local global i32 0, align 4
@wd_pretimeout_countdown = common dso_local global i32 0, align 4
@IPMI_ADS_CHASSIS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"Establishing power cycle handler\0A\00", align 1
@shutdown_final = common dso_local global i32 0, align 4
@ipmi_power_cycle = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ipmi_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ipmi_softc*, align 8
  %4 = alloca %struct.ipmi_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ipmi_softc*
  store %struct.ipmi_softc* %9, %struct.ipmi_softc** %3, align 8
  %10 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %10, i32 0, i32 15
  %12 = call i32 @config_intrhook_disestablish(i32* %11)
  %13 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %16, i32 0, i32 13
  %18 = load i32, i32* @MTX_DEF, align 4
  %19 = call i32 @mtx_init(i32* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 %18)
  %20 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %20, i32 0, i32 12
  %22 = load i32, i32* @MTX_DEF, align 4
  %23 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %22)
  %24 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %24, i32 0, i32 11
  %26 = call i32 @cv_init(i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %27, i32 0, i32 10
  %29 = call i32 @TAILQ_INIT(i32* %28)
  %30 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %30, i32 0, i32 0
  %32 = load i32 (%struct.ipmi_softc*)*, i32 (%struct.ipmi_softc*)** %31, align 8
  %33 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %34 = call i32 %32(%struct.ipmi_softc* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %306

41:                                               ; preds = %1
  %42 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %43 = load i32, i32* @IPMI_APP_REQUEST, align 4
  %44 = call i32 @IPMI_ADDR(i32 %43, i32 0)
  %45 = load i32, i32* @IPMI_GET_DEVICE_ID, align 4
  %46 = call i32 @IPMI_ALLOC_DRIVER_REQUEST(%struct.ipmi_request* %42, i32 %44, i32 %45, i32 0, i32 15)
  %47 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %48 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %49 = load i32, i32* @MAX_TIMEOUT, align 4
  %50 = call i32 @ipmi_submit_driver_request(%struct.ipmi_softc* %47, %struct.ipmi_request* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @EWOULDBLOCK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %306

57:                                               ; preds = %41
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  br label %306

64:                                               ; preds = %57
  %65 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %66 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %72 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  br label %306

75:                                               ; preds = %64
  %76 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %77 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 5
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %83 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  br label %306

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %92 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 15
  %97 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %98 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 127
  %103 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %104 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 4
  %109 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %110 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 15
  %115 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %116 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 15
  %121 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %122 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 4
  %127 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %128 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.8, i64 0, i64 0), i32 %96, i32 %102, i32 %108, i32 %114, i32 %120, i32 %126, i32 %131)
  %133 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %134 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %139 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %141 = load i32, i32* @IPMI_APP_REQUEST, align 4
  %142 = call i32 @IPMI_ADDR(i32 %141, i32 0)
  %143 = load i32, i32* @IPMI_CLEAR_FLAGS, align 4
  %144 = call i32 @IPMI_INIT_DRIVER_REQUEST(%struct.ipmi_request* %140, i32 %142, i32 %143, i32 1, i32 0)
  %145 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %146 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %147 = call i32 @ipmi_submit_driver_request(%struct.ipmi_softc* %145, %struct.ipmi_request* %146, i32 0)
  %148 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %149 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 192
  br i1 %151, label %152, label %155

152:                                              ; preds = %89
  %153 = load i32, i32* %5, align 4
  %154 = call i32 (i32, i8*, ...) @device_printf(i32 %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %89
  %156 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %157 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 193
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* %5, align 4
  %162 = call i32 (i32, i8*, ...) @device_printf(i32 %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %155
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %187, %163
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %165, 8
  br i1 %166, label %167, label %190

167:                                              ; preds = %164
  %168 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %169 = load i32, i32* @IPMI_APP_REQUEST, align 4
  %170 = call i32 @IPMI_ADDR(i32 %169, i32 0)
  %171 = load i32, i32* @IPMI_GET_CHANNEL_INFO, align 4
  %172 = call i32 @IPMI_INIT_DRIVER_REQUEST(%struct.ipmi_request* %168, i32 %170, i32 %171, i32 1, i32 0)
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %175 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  store i32 %173, i32* %177, align 4
  %178 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %179 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %180 = call i32 @ipmi_submit_driver_request(%struct.ipmi_softc* %178, %struct.ipmi_request* %179, i32 0)
  %181 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %182 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %167
  br label %190

186:                                              ; preds = %167
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  br label %164

190:                                              ; preds = %185, %164
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 (i32, i8*, ...) @device_printf(i32 %191, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %192)
  %194 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %195 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %194, i32 0, i32 9
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %227

198:                                              ; preds = %190
  %199 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %200 = load i32, i32* @IPMI_APP_REQUEST, align 4
  %201 = call i32 @IPMI_ADDR(i32 %200, i32 0)
  %202 = load i32, i32* @IPMI_GET_WDOG, align 4
  %203 = call i32 @IPMI_INIT_DRIVER_REQUEST(%struct.ipmi_request* %199, i32 %201, i32 %202, i32 0, i32 0)
  %204 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %205 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %206 = call i32 @ipmi_submit_driver_request(%struct.ipmi_softc* %204, %struct.ipmi_request* %205, i32 0)
  %207 = load %struct.ipmi_request*, %struct.ipmi_request** %4, align 8
  %208 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %198
  %212 = load i32, i32* %5, align 4
  %213 = call i32 (i32, i8*, ...) @device_printf(i32 %212, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %214 = load i32, i32* @watchdog_list, align 4
  %215 = load i32, i32* @ipmi_wd_event, align 4
  %216 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %217 = call i8* @EVENTHANDLER_REGISTER(i32 %214, i32 %215, %struct.ipmi_softc* %216, i64 0)
  %218 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %219 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %218, i32 0, i32 8
  store i8* %217, i8** %219, align 8
  %220 = load i32, i32* @shutdown_pre_sync, align 4
  %221 = load i32, i32* @ipmi_shutdown_event, align 4
  %222 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %223 = call i8* @EVENTHANDLER_REGISTER(i32 %220, i32 %221, %struct.ipmi_softc* %222, i64 0)
  %224 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %225 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %224, i32 0, i32 7
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %211, %198
  br label %227

227:                                              ; preds = %226, %190
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @device_get_unit(i32 %228)
  %230 = load i32, i32* @UID_ROOT, align 4
  %231 = load i32, i32* @GID_OPERATOR, align 4
  %232 = load i32, i32* %5, align 4
  %233 = call i32 @device_get_unit(i32 %232)
  %234 = call %struct.TYPE_2__* @make_dev(i32* @ipmi_cdevsw, i32 %229, i32 %230, i32 %231, i32 432, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %233)
  %235 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %236 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %235, i32 0, i32 6
  store %struct.TYPE_2__* %234, %struct.TYPE_2__** %236, align 8
  %237 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %238 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %237, i32 0, i32 6
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = icmp eq %struct.TYPE_2__* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %227
  %242 = load i32, i32* %5, align 4
  %243 = call i32 (i32, i8*, ...) @device_printf(i32 %242, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  br label %306

244:                                              ; preds = %227
  %245 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %246 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %247 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %246, i32 0, i32 6
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  store %struct.ipmi_softc* %245, %struct.ipmi_softc** %249, align 8
  %250 = load i64, i64* @on, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %281

252:                                              ; preds = %244
  %253 = load i64, i64* @wd_startup_countdown, align 8
  %254 = icmp sgt i64 %253, 0
  br i1 %254, label %255, label %281

255:                                              ; preds = %252
  %256 = load i32, i32* @IPMI_SET_WD_ACTION_POWER_CYCLE, align 4
  store i32 %256, i32* @wd_timer_actions, align 4
  %257 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %258 = load i64, i64* @wd_startup_countdown, align 8
  %259 = call i32 @ipmi_set_watchdog(%struct.ipmi_softc* %257, i64 %258)
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %275

261:                                              ; preds = %255
  %262 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %263 = call i64 @ipmi_reset_watchdog(%struct.ipmi_softc* %262)
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %261
  %266 = load i64, i64* @wd_startup_countdown, align 8
  %267 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %268 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %267, i32 0, i32 5
  store i64 %266, i64* %268, align 8
  %269 = load i32, i32* @wd_timer_actions, align 4
  %270 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %271 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %270, i32 0, i32 4
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* @wd_pretimeout_countdown, align 4
  %273 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %274 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %273, i32 0, i32 3
  store i32 %272, i32* %274, align 8
  br label %278

275:                                              ; preds = %261, %255
  %276 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %277 = call i32 @ipmi_set_watchdog(%struct.ipmi_softc* %276, i64 0)
  br label %278

278:                                              ; preds = %275, %265
  %279 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %280 = call i64 @ipmi_reset_watchdog(%struct.ipmi_softc* %279)
  br label %288

281:                                              ; preds = %252, %244
  %282 = load i64, i64* @on, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %281
  %285 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %286 = call i32 @ipmi_set_watchdog(%struct.ipmi_softc* %285, i64 0)
  br label %287

287:                                              ; preds = %284, %281
  br label %288

288:                                              ; preds = %287, %278
  %289 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %290 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @IPMI_ADS_CHASSIS, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %306

295:                                              ; preds = %288
  %296 = load i32, i32* %5, align 4
  %297 = call i32 (i32, i8*, ...) @device_printf(i32 %296, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  %298 = load i32, i32* @shutdown_final, align 4
  %299 = load i32, i32* @ipmi_power_cycle, align 4
  %300 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %301 = load i64, i64* @SHUTDOWN_PRI_LAST, align 8
  %302 = sub nsw i64 %301, 2
  %303 = call i8* @EVENTHANDLER_REGISTER(i32 %298, i32 %299, %struct.ipmi_softc* %300, i64 %302)
  %304 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %305 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %304, i32 0, i32 2
  store i8* %303, i8** %305, align 8
  br label %306

306:                                              ; preds = %37, %54, %60, %69, %80, %241, %295, %288
  ret void
}

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @IPMI_ALLOC_DRIVER_REQUEST(%struct.ipmi_request*, i32, i32, i32, i32) #1

declare dso_local i32 @IPMI_ADDR(i32, i32) #1

declare dso_local i32 @ipmi_submit_driver_request(%struct.ipmi_softc*, %struct.ipmi_request*, i32) #1

declare dso_local i32 @IPMI_INIT_DRIVER_REQUEST(%struct.ipmi_request*, i32, i32, i32, i32) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, %struct.ipmi_softc*, i64) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ipmi_set_watchdog(%struct.ipmi_softc*, i64) #1

declare dso_local i64 @ipmi_reset_watchdog(%struct.ipmi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
