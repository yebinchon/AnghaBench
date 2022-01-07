; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wbwd/extr_wbwd.c_wb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wbwd/extr_wbwd.c_wb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wb_softc = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@WB_LDN8_CR30_ACTIVE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Before watchdog attach\00", align 1
@WB_LDN8_CRF5_KEYB_P20 = common dso_local global i32 0, align 4
@WB_LDN8_CRF5_KBRST = common dso_local global i32 0, align 4
@WB_LDN8_CRF7_MOUSE = common dso_local global i32 0, align 4
@WB_LDN8_CRF7_TS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"hw.wbwd.timeout_override\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"timeout_override\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Timeout in seconds overriding default watchdog timeout\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"debug_verbose\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Enables extra debugging information\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@sysctl_wb_debug = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Selected register information from last change by driver\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"debug_current\00", align 1
@CTLFLAG_SKIP = common dso_local global i32 0, align 4
@sysctl_wb_debug_current = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"Selected register information (may interfere)\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"force_timeout\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@sysctl_wb_force_test_nmi = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Enable to force watchdog to fire.\00", align 1
@watchdog_list = common dso_local global i32 0, align 4
@wb_watchdog_fn = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"After watchdog attach\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wb_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.wb_softc* @device_get_softc(i32 %8)
  store %struct.wb_softc* %9, %struct.wb_softc** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %12 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %11, i32 0, i32 10
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @WB_LDN8_CR30_ACTIVE, align 4
  %15 = call i32 @superio_dev_enable(i32 %13, i32 %14)
  %16 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %17 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %33 [
    i32 129, label %19
    i32 128, label %19
    i32 148, label %26
  ]

19:                                               ; preds = %1, %1
  %20 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %21 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %20, i32 0, i32 1
  store i32 243, i32* %21, align 4
  %22 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %23 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %22, i32 0, i32 2
  store i32 244, i32* %23, align 8
  %24 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %25 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %24, i32 0, i32 3
  store i32 247, i32* %25, align 4
  br label %40

26:                                               ; preds = %1
  %27 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %28 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %27, i32 0, i32 1
  store i32 240, i32* %28, align 4
  %29 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %30 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %29, i32 0, i32 2
  store i32 241, i32* %30, align 8
  %31 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %31, i32 0, i32 3
  store i32 242, i32* %32, align 4
  br label %40

33:                                               ; preds = %1
  %34 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %35 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %34, i32 0, i32 1
  store i32 245, i32* %35, align 4
  %36 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %37 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %36, i32 0, i32 2
  store i32 246, i32* %37, align 8
  %38 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %39 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %38, i32 0, i32 3
  store i32 247, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %26, %19
  %41 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %42 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %117 [
    i32 137, label %44
    i32 136, label %44
    i32 129, label %51
    i32 128, label %60
    i32 135, label %67
    i32 140, label %75
    i32 139, label %75
    i32 133, label %95
    i32 130, label %96
    i32 138, label %103
    i32 134, label %103
    i32 132, label %103
    i32 131, label %103
    i32 147, label %103
    i32 146, label %103
    i32 145, label %103
    i32 144, label %103
    i32 143, label %103
    i32 142, label %103
    i32 141, label %103
    i32 148, label %103
  ]

44:                                               ; preds = %40, %40
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @superio_read(i32 %45, i32 43)
  %47 = and i32 %46, -17
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @superio_write(i32 %48, i32 43, i32 %49)
  br label %118

51:                                               ; preds = %40
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @superio_read(i32 %52, i32 41)
  %54 = and i32 %53, -97
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 32
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @superio_write(i32 %57, i32 41, i32 %58)
  br label %118

60:                                               ; preds = %40
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @superio_read(i32 %61, i32 43)
  %63 = and i32 %62, -5
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @superio_write(i32 %64, i32 43, i32 %65)
  br label %118

67:                                               ; preds = %40
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @superio_read(i32 %68, i32 43)
  %70 = and i32 %69, -9
  %71 = or i32 %70, 4
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @superio_write(i32 %72, i32 43, i32 %73)
  br label %118

75:                                               ; preds = %40, %40
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @superio_read(i32 %76, i32 45)
  %78 = and i32 %77, -2
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @superio_write(i32 %79, i32 45, i32 %80)
  %82 = load i32, i32* %2, align 4
  %83 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %84 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @superio_read(i32 %82, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, 2
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %2, align 4
  %90 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %91 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @superio_write(i32 %89, i32 %92, i32 %93)
  br label %118

95:                                               ; preds = %40
  br label %118

96:                                               ; preds = %40
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @superio_read(i32 %97, i32 44)
  %99 = and i32 %98, -129
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @superio_write(i32 %100, i32 44, i32 %101)
  br label %118

103:                                              ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %104 = load i32, i32* %2, align 4
  %105 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %106 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @superio_read(i32 %104, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, 2
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %2, align 4
  %112 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %113 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @superio_write(i32 %111, i32 %114, i32 %115)
  br label %118

117:                                              ; preds = %40
  br label %118

118:                                              ; preds = %117, %103, %96, %95, %75, %67, %60, %51, %44
  %119 = load i32, i32* %2, align 4
  %120 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %121 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @superio_read(i32 %119, i32 %122)
  %124 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %125 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %2, align 4
  %127 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %128 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @superio_read(i32 %126, i32 %129)
  %131 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %132 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %2, align 4
  %134 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %135 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @superio_read(i32 %133, i32 %136)
  %138 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %139 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  %140 = load i64, i64* @bootverbose, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %118
  %143 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %144 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142, %118
  %148 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %149 = call i32 @wb_print_state(%struct.wb_softc* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i32, i32* @WB_LDN8_CRF5_KEYB_P20, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %154 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* @WB_LDN8_CRF5_KBRST, align 4
  %158 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %159 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* %2, align 4
  %163 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %164 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %167 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @superio_write(i32 %162, i32 %165, i32 %168)
  %170 = load i32, i32* @WB_LDN8_CRF7_MOUSE, align 4
  %171 = load i32, i32* @WB_LDN8_CRF7_TS, align 4
  %172 = or i32 %170, %171
  %173 = xor i32 %172, -1
  %174 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %175 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load i32, i32* %2, align 4
  %179 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %180 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %183 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @superio_write(i32 %178, i32 %181, i32 %184)
  %186 = call i64 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64* %6)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %150
  %189 = load i64, i64* %6, align 8
  %190 = icmp ugt i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i64, i64* %6, align 8
  %193 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %194 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %193, i32 0, i32 7
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %191, %188
  br label %196

196:                                              ; preds = %195, %150
  %197 = load i32, i32* %2, align 4
  %198 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %197)
  store %struct.sysctl_ctx_list* %198, %struct.sysctl_ctx_list** %4, align 8
  %199 = load i32, i32* %2, align 4
  %200 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %199)
  store %struct.sysctl_oid* %200, %struct.sysctl_oid** %5, align 8
  %201 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %202 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %203 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %202)
  %204 = load i32, i32* @OID_AUTO, align 4
  %205 = load i32, i32* @CTLFLAG_RW, align 4
  %206 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %207 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %206, i32 0, i32 7
  %208 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %201, i32 %203, i32 %204, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %205, i64* %207, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %209 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %210 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %211 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %210)
  %212 = load i32, i32* @OID_AUTO, align 4
  %213 = load i32, i32* @CTLFLAG_RW, align 4
  %214 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %215 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %214, i32 0, i32 9
  %216 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %209, i32 %211, i32 %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %213, i32* %215, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %217 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %218 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %219 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %218)
  %220 = load i32, i32* @OID_AUTO, align 4
  %221 = load i32, i32* @CTLTYPE_STRING, align 4
  %222 = load i32, i32* @CTLFLAG_RD, align 4
  %223 = or i32 %221, %222
  %224 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %225 = load i32, i32* @sysctl_wb_debug, align 4
  %226 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %217, i32 %219, i32 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %223, %struct.wb_softc* %224, i32 0, i32 %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %227 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %228 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %229 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %228)
  %230 = load i32, i32* @OID_AUTO, align 4
  %231 = load i32, i32* @CTLTYPE_STRING, align 4
  %232 = load i32, i32* @CTLFLAG_RD, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @CTLFLAG_SKIP, align 4
  %235 = or i32 %233, %234
  %236 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %237 = load i32, i32* @sysctl_wb_debug_current, align 4
  %238 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %227, i32 %229, i32 %230, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %235, %struct.wb_softc* %236, i32 0, i32 %237, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %239 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %240 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %241 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %240)
  %242 = load i32, i32* @OID_AUTO, align 4
  %243 = load i32, i32* @CTLTYPE_INT, align 4
  %244 = load i32, i32* @CTLFLAG_RW, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @CTLFLAG_SKIP, align 4
  %247 = or i32 %245, %246
  %248 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %249 = load i32, i32* @sysctl_wb_force_test_nmi, align 4
  %250 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %239, i32 %241, i32 %242, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %247, %struct.wb_softc* %248, i32 0, i32 %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %251 = load i32, i32* @watchdog_list, align 4
  %252 = load i32, i32* @wb_watchdog_fn, align 4
  %253 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %254 = call i32 @EVENTHANDLER_REGISTER(i32 %251, i32 %252, %struct.wb_softc* %253, i32 0)
  %255 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %256 = getelementptr inbounds %struct.wb_softc, %struct.wb_softc* %255, i32 0, i32 8
  store i32 %254, i32* %256, align 8
  %257 = load i64, i64* @bootverbose, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %196
  %260 = load %struct.wb_softc*, %struct.wb_softc** %3, align 8
  %261 = call i32 @wb_print_state(%struct.wb_softc* %260, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %196
  ret i32 0
}

declare dso_local %struct.wb_softc* @device_get_softc(i32) #1

declare dso_local i32 @superio_dev_enable(i32, i32) #1

declare dso_local i32 @superio_read(i32, i32) #1

declare dso_local i32 @superio_write(i32, i32, i32) #1

declare dso_local i32 @wb_print_state(%struct.wb_softc*, i8*) #1

declare dso_local i64 @TUNABLE_ULONG_FETCH(i8*, i64*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i64*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.wb_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.wb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
