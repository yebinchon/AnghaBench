; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asmc_softc = type { i32, i32*, i32, i32*, i64, i32*, i64, i32, i32, %struct.sysctl_oid*, %struct.sysctl_oid*, %struct.sysctl_oid*, %struct.sysctl_oid**, %struct.asmc_model* }
%struct.sysctl_oid = type { i32 }
%struct.asmc_model = type { i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.sysctl_ctx_list = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to allocate IO port\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"asmc\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"fan\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Fan Root Tree\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Fan Subtree\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Fan ID\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"Fan speed in RPM\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"safespeed\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Fan safe speed in RPM\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"minspeed\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"Fan minimum speed in RPM\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"maxspeed\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Fan maximum speed in RPM\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"targetspeed\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Fan target speed in RPM\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Temperature sensors\00", align 1
@asmc_temp_sysctl = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Keyboard backlight sensors\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Keyboard backlight left sensor\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Keyboard backlight right sensor\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@CTLFLAG_ANYBODY = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [38 x i8] c"Keyboard backlight brightness control\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"sms\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Sudden Motion Sensor\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Sudden Motion Sensor X value\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Sudden Motion Sensor Y value\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"Sudden Motion Sensor Z value\00", align 1
@asmc_sms_task = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [11 x i8] c"asmc_taskq\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_REALTIME = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [13 x i8] c"%s sms taskq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [33 x i8] c"unable to allocate IRQ resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@asmc_sms_intrfast = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [25 x i8] c"unable to setup SMS IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @asmc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asmc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  %8 = alloca %struct.asmc_softc*, align 8
  %9 = alloca %struct.sysctl_ctx_list*, align 8
  %10 = alloca %struct.sysctl_oid*, align 8
  %11 = alloca %struct.asmc_model*, align 8
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.asmc_softc* @device_get_softc(i32 %12)
  store %struct.asmc_softc* %13, %struct.asmc_softc** %8, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_IOPORT, align 4
  %16 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %17 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %16, i32 0, i32 4
  %18 = load i32, i32* @RF_ACTIVE, align 4
  %19 = call i8* @bus_alloc_resource_any(i32 %14, i32 %15, i64* %17, i32 %18)
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %22 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %24 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %2, align 4
  br label %467

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %32)
  store %struct.sysctl_ctx_list* %33, %struct.sysctl_ctx_list** %9, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %34)
  store %struct.sysctl_oid* %35, %struct.sysctl_oid** %10, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call %struct.asmc_model* @asmc_match(i32 %36)
  store %struct.asmc_model* %37, %struct.asmc_model** %11, align 8
  %38 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %39 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %38, i32 0, i32 2
  %40 = load i32, i32* @MTX_SPIN, align 4
  %41 = call i32 @mtx_init(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %40)
  %42 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %43 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %44 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %43, i32 0, i32 13
  store %struct.asmc_model* %42, %struct.asmc_model** %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @asmc_init(i32 %45)
  %47 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %48 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %49 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %48)
  %50 = load i32, i32* @OID_AUTO, align 4
  %51 = load i32, i32* @CTLFLAG_RD, align 4
  %52 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %47, i32 %49, i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %53 = bitcast i8* %52 to %struct.sysctl_oid*
  %54 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %55 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %54, i32 0, i32 12
  %56 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %55, align 8
  %57 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %56, i64 0
  store %struct.sysctl_oid* %53, %struct.sysctl_oid** %57, align 8
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %204, %31
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %61 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sle i32 %59, %62
  br i1 %63, label %64, label %207

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 48, %67
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %69, i8* %70, align 1
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %71, align 1
  %72 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %73 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %74 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %73, i32 0, i32 12
  %75 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %74, align 8
  %76 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %75, i64 0
  %77 = load %struct.sysctl_oid*, %struct.sysctl_oid** %76, align 8
  %78 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %77)
  %79 = load i32, i32* @OID_AUTO, align 4
  %80 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %81 = load i32, i32* @CTLFLAG_RD, align 4
  %82 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %72, i32 %78, i32 %79, i8* %80, i32 %81, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %83 = bitcast i8* %82 to %struct.sysctl_oid*
  %84 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %85 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %84, i32 0, i32 12
  %86 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %86, i64 %88
  store %struct.sysctl_oid* %83, %struct.sysctl_oid** %89, align 8
  %90 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %91 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %92 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %91, i32 0, i32 12
  %93 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %93, i64 %95
  %97 = load %struct.sysctl_oid*, %struct.sysctl_oid** %96, align 8
  %98 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %97)
  %99 = load i32, i32* @OID_AUTO, align 4
  %100 = load i32, i32* @CTLTYPE_STRING, align 4
  %101 = load i32, i32* @CTLFLAG_RD, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %106 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %105, i32 0, i32 14
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %90, i32 %98, i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %102, i32 %103, i32 %104, i32* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %109 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %110 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %111 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %110, i32 0, i32 12
  %112 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %112, i64 %114
  %116 = load %struct.sysctl_oid*, %struct.sysctl_oid** %115, align 8
  %117 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %116)
  %118 = load i32, i32* @OID_AUTO, align 4
  %119 = load i32, i32* @CTLTYPE_INT, align 4
  %120 = load i32, i32* @CTLFLAG_RD, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %125 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %124, i32 0, i32 13
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %109, i32 %117, i32 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %121, i32 %122, i32 %123, i32* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %128 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %129 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %130 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %129, i32 0, i32 12
  %131 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %131, i64 %133
  %135 = load %struct.sysctl_oid*, %struct.sysctl_oid** %134, align 8
  %136 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %135)
  %137 = load i32, i32* @OID_AUTO, align 4
  %138 = load i32, i32* @CTLTYPE_INT, align 4
  %139 = load i32, i32* @CTLFLAG_RD, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %144 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %143, i32 0, i32 12
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %128, i32 %136, i32 %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %140, i32 %141, i32 %142, i32* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %147 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %148 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %149 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %148, i32 0, i32 12
  %150 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %150, i64 %152
  %154 = load %struct.sysctl_oid*, %struct.sysctl_oid** %153, align 8
  %155 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %154)
  %156 = load i32, i32* @OID_AUTO, align 4
  %157 = load i32, i32* @CTLTYPE_INT, align 4
  %158 = load i32, i32* @CTLFLAG_RW, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %163 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %162, i32 0, i32 11
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %147, i32 %155, i32 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %159, i32 %160, i32 %161, i32* %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %166 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %167 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %168 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %167, i32 0, i32 12
  %169 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %169, i64 %171
  %173 = load %struct.sysctl_oid*, %struct.sysctl_oid** %172, align 8
  %174 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %173)
  %175 = load i32, i32* @OID_AUTO, align 4
  %176 = load i32, i32* @CTLTYPE_INT, align 4
  %177 = load i32, i32* @CTLFLAG_RW, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %182 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %181, i32 0, i32 10
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %166, i32 %174, i32 %175, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %178, i32 %179, i32 %180, i32* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %185 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %186 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %187 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %186, i32 0, i32 12
  %188 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %188, i64 %190
  %192 = load %struct.sysctl_oid*, %struct.sysctl_oid** %191, align 8
  %193 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %192)
  %194 = load i32, i32* @OID_AUTO, align 4
  %195 = load i32, i32* @CTLTYPE_INT, align 4
  %196 = load i32, i32* @CTLFLAG_RW, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* %5, align 4
  %200 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %201 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %200, i32 0, i32 9
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %185, i32 %193, i32 %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %197, i32 %198, i32 %199, i32* %202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  br label %204

204:                                              ; preds = %64
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  br label %58

207:                                              ; preds = %58
  %208 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %209 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %210 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %209)
  %211 = load i32, i32* @OID_AUTO, align 4
  %212 = load i32, i32* @CTLFLAG_RD, align 4
  %213 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %208, i32 %210, i32 %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 %212, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %214 = bitcast i8* %213 to %struct.sysctl_oid*
  %215 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %216 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %215, i32 0, i32 11
  store %struct.sysctl_oid* %214, %struct.sysctl_oid** %216, align 8
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %254, %207
  %218 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %219 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %218, i32 0, i32 8
  %220 = load i64*, i64** %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %257

226:                                              ; preds = %217
  %227 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %228 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %229 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %228, i32 0, i32 11
  %230 = load %struct.sysctl_oid*, %struct.sysctl_oid** %229, align 8
  %231 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %230)
  %232 = load i32, i32* @OID_AUTO, align 4
  %233 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %234 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %233, i32 0, i32 0
  %235 = load i8**, i8*** %234, align 8
  %236 = load i32, i32* %4, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* @CTLTYPE_INT, align 4
  %241 = load i32, i32* @CTLFLAG_RD, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* %4, align 4
  %245 = load i32*, i32** @asmc_temp_sysctl, align 8
  %246 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %247 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %246, i32 0, i32 1
  %248 = load i8**, i8*** %247, align 8
  %249 = load i32, i32* %4, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %227, i32 %231, i32 %232, i8* %239, i32 %242, i32 %243, i32 %244, i32* %245, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %252)
  br label %254

254:                                              ; preds = %226
  %255 = load i32, i32* %4, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %4, align 4
  br label %217

257:                                              ; preds = %217
  %258 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %259 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %258, i32 0, i32 7
  %260 = load i32*, i32** %259, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %316

262:                                              ; preds = %257
  %263 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %264 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %265 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %264)
  %266 = load i32, i32* @OID_AUTO, align 4
  %267 = load i32, i32* @CTLFLAG_RD, align 4
  %268 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %263, i32 %265, i32 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %267, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  %269 = bitcast i8* %268 to %struct.sysctl_oid*
  %270 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %271 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %270, i32 0, i32 10
  store %struct.sysctl_oid* %269, %struct.sysctl_oid** %271, align 8
  %272 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %273 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %274 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %273, i32 0, i32 10
  %275 = load %struct.sysctl_oid*, %struct.sysctl_oid** %274, align 8
  %276 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %275)
  %277 = load i32, i32* @OID_AUTO, align 4
  %278 = load i32, i32* @CTLTYPE_INT, align 4
  %279 = load i32, i32* @CTLFLAG_RD, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* %3, align 4
  %282 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %283 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %282, i32 0, i32 7
  %284 = load i32*, i32** %283, align 8
  %285 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %272, i32 %276, i32 %277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %280, i32 %281, i32 0, i32* %284, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  %286 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %287 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %288 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %287, i32 0, i32 10
  %289 = load %struct.sysctl_oid*, %struct.sysctl_oid** %288, align 8
  %290 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %289)
  %291 = load i32, i32* @OID_AUTO, align 4
  %292 = load i32, i32* @CTLTYPE_INT, align 4
  %293 = load i32, i32* @CTLFLAG_RD, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* %3, align 4
  %296 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %297 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %296, i32 0, i32 6
  %298 = load i32*, i32** %297, align 8
  %299 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %286, i32 %290, i32 %291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 %294, i32 %295, i32 0, i32* %298, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0))
  %300 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %301 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %302 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %301, i32 0, i32 10
  %303 = load %struct.sysctl_oid*, %struct.sysctl_oid** %302, align 8
  %304 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %303)
  %305 = load i32, i32* @OID_AUTO, align 4
  %306 = load i32, i32* @CTLTYPE_INT, align 4
  %307 = load i32, i32* @CTLFLAG_RW, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* %3, align 4
  %312 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %313 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %312, i32 0, i32 5
  %314 = load i32*, i32** %313, align 8
  %315 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %300, i32 %304, i32 %305, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32 %310, i32 %311, i32 0, i32* %314, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0))
  br label %316

316:                                              ; preds = %262, %257
  %317 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %318 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %317, i32 0, i32 4
  %319 = load i32*, i32** %318, align 8
  %320 = icmp eq i32* %319, null
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  br label %432

322:                                              ; preds = %316
  %323 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %324 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %325 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %324)
  %326 = load i32, i32* @OID_AUTO, align 4
  %327 = load i32, i32* @CTLFLAG_RD, align 4
  %328 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %323, i32 %325, i32 %326, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 %327, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  %329 = bitcast i8* %328 to %struct.sysctl_oid*
  %330 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %331 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %330, i32 0, i32 9
  store %struct.sysctl_oid* %329, %struct.sysctl_oid** %331, align 8
  %332 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %333 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %334 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %333, i32 0, i32 9
  %335 = load %struct.sysctl_oid*, %struct.sysctl_oid** %334, align 8
  %336 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %335)
  %337 = load i32, i32* @OID_AUTO, align 4
  %338 = load i32, i32* @CTLTYPE_INT, align 4
  %339 = load i32, i32* @CTLFLAG_RD, align 4
  %340 = or i32 %338, %339
  %341 = load i32, i32* %3, align 4
  %342 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %343 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %342, i32 0, i32 4
  %344 = load i32*, i32** %343, align 8
  %345 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %332, i32 %336, i32 %337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 %340, i32 %341, i32 0, i32* %344, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  %346 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %347 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %348 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %347, i32 0, i32 9
  %349 = load %struct.sysctl_oid*, %struct.sysctl_oid** %348, align 8
  %350 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %349)
  %351 = load i32, i32* @OID_AUTO, align 4
  %352 = load i32, i32* @CTLTYPE_INT, align 4
  %353 = load i32, i32* @CTLFLAG_RD, align 4
  %354 = or i32 %352, %353
  %355 = load i32, i32* %3, align 4
  %356 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %357 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %356, i32 0, i32 3
  %358 = load i32*, i32** %357, align 8
  %359 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %346, i32 %350, i32 %351, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i32 %354, i32 %355, i32 0, i32* %358, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0))
  %360 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %361 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %362 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %361, i32 0, i32 9
  %363 = load %struct.sysctl_oid*, %struct.sysctl_oid** %362, align 8
  %364 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %363)
  %365 = load i32, i32* @OID_AUTO, align 4
  %366 = load i32, i32* @CTLTYPE_INT, align 4
  %367 = load i32, i32* @CTLFLAG_RD, align 4
  %368 = or i32 %366, %367
  %369 = load i32, i32* %3, align 4
  %370 = load %struct.asmc_model*, %struct.asmc_model** %11, align 8
  %371 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %370, i32 0, i32 2
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %360, i32 %364, i32 %365, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32 %368, i32 %369, i32 0, i32* %372, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0))
  %374 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %375 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %374, i32 0, i32 1
  store i32* null, i32** %375, align 8
  %376 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %377 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %376, i32 0, i32 8
  %378 = load i32, i32* @asmc_sms_task, align 4
  %379 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %380 = call i32 @TASK_INIT(i32* %377, i32 0, i32 %378, %struct.asmc_softc* %379)
  %381 = load i32, i32* @M_WAITOK, align 4
  %382 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %383 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %384 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %383, i32 0, i32 1
  %385 = call i32* @taskqueue_create_fast(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i32 %381, i32 %382, i32** %384)
  %386 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %387 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %386, i32 0, i32 1
  store i32* %385, i32** %387, align 8
  %388 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %389 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %388, i32 0, i32 1
  %390 = load i32, i32* @PI_REALTIME, align 4
  %391 = load i32, i32* %3, align 4
  %392 = call i32 @device_get_nameunit(i32 %391)
  %393 = call i32 @taskqueue_start_threads(i32** %389, i32 1, i32 %390, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 %392)
  %394 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %395 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %394, i32 0, i32 6
  store i64 0, i64* %395, align 8
  %396 = load i32, i32* %3, align 4
  %397 = load i32, i32* @SYS_RES_IRQ, align 4
  %398 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %399 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %398, i32 0, i32 6
  %400 = load i32, i32* @RF_ACTIVE, align 4
  %401 = call i8* @bus_alloc_resource_any(i32 %396, i32 %397, i64* %399, i32 %400)
  %402 = bitcast i8* %401 to i32*
  %403 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %404 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %403, i32 0, i32 5
  store i32* %402, i32** %404, align 8
  %405 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %406 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %405, i32 0, i32 5
  %407 = load i32*, i32** %406, align 8
  %408 = icmp eq i32* %407, null
  br i1 %408, label %409, label %413

409:                                              ; preds = %322
  %410 = load i32, i32* %3, align 4
  %411 = call i32 @device_printf(i32 %410, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0))
  %412 = load i32, i32* @ENXIO, align 4
  store i32 %412, i32* %6, align 4
  br label %443

413:                                              ; preds = %322
  %414 = load i32, i32* %3, align 4
  %415 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %416 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %415, i32 0, i32 5
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* @INTR_TYPE_MISC, align 4
  %419 = load i32, i32* @INTR_MPSAFE, align 4
  %420 = or i32 %418, %419
  %421 = load i32, i32* @asmc_sms_intrfast, align 4
  %422 = load i32, i32* %3, align 4
  %423 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %424 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %423, i32 0, i32 7
  %425 = call i32 @bus_setup_intr(i32 %414, i32* %417, i32 %420, i32 %421, i32* null, i32 %422, i32* %424)
  store i32 %425, i32* %6, align 4
  %426 = load i32, i32* %6, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %413
  %429 = load i32, i32* %3, align 4
  %430 = call i32 @device_printf(i32 %429, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0))
  br label %433

431:                                              ; preds = %413
  br label %432

432:                                              ; preds = %431, %321
  store i32 0, i32* %2, align 4
  br label %467

433:                                              ; preds = %428
  %434 = load i32, i32* %3, align 4
  %435 = load i32, i32* @SYS_RES_IRQ, align 4
  %436 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %437 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %436, i32 0, i32 6
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %440 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %439, i32 0, i32 5
  %441 = load i32*, i32** %440, align 8
  %442 = call i32 @bus_release_resource(i32 %434, i32 %435, i64 %438, i32* %441)
  br label %443

443:                                              ; preds = %433, %409
  %444 = load i32, i32* %3, align 4
  %445 = load i32, i32* @SYS_RES_IOPORT, align 4
  %446 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %447 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %446, i32 0, i32 4
  %448 = load i64, i64* %447, align 8
  %449 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %450 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %449, i32 0, i32 3
  %451 = load i32*, i32** %450, align 8
  %452 = call i32 @bus_release_resource(i32 %444, i32 %445, i64 %448, i32* %451)
  %453 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %454 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %453, i32 0, i32 2
  %455 = call i32 @mtx_destroy(i32* %454)
  %456 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %457 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %456, i32 0, i32 1
  %458 = load i32*, i32** %457, align 8
  %459 = icmp ne i32* %458, null
  br i1 %459, label %460, label %465

460:                                              ; preds = %443
  %461 = load %struct.asmc_softc*, %struct.asmc_softc** %8, align 8
  %462 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %461, i32 0, i32 1
  %463 = load i32*, i32** %462, align 8
  %464 = call i32 @taskqueue_free(i32* %463)
  br label %465

465:                                              ; preds = %460, %443
  %466 = load i32, i32* %6, align 4
  store i32 %466, i32* %2, align 4
  br label %467

467:                                              ; preds = %465, %432, %27
  %468 = load i32, i32* %2, align 4
  ret i32 %468
}

declare dso_local %struct.asmc_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.asmc_model* @asmc_match(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @asmc_init(i32) #1

declare dso_local i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32*, i8*, i8*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.asmc_softc*) #1

declare dso_local i32* @taskqueue_create_fast(i8*, i32, i32, i32**) #1

declare dso_local i32 @taskqueue_start_threads(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
