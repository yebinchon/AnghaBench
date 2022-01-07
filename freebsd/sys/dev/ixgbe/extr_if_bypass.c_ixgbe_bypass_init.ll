; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_bypass.c_ixgbe_bypass_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_bypass.c_ixgbe_bypass_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@IXGBE_FEATURE_BYPASS = common dso_local global i32 0, align 4
@BYPASS_CTL1_TIME_M = common dso_local global i32 0, align 4
@BYPASS_CTL1_VALID_M = common dso_local global i32 0, align 4
@BYPASS_CTL1_OFFTRST_M = common dso_local global i32 0, align 4
@BYPASS_CTL1_VALID = common dso_local global i32 0, align 4
@BYPASS_CTL1_OFFTRST = common dso_local global i32 0, align 4
@BYPASS_PAGE_CTL1 = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"bypass_log\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@ixgbe_bp_log = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Bypass Log\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bypass\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Bypass\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@ixgbe_bp_version = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"Bypass Version\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@ixgbe_bp_set_state = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Bypass State\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@ixgbe_bp_timeout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"Bypass Timeout\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"main_on\00", align 1
@ixgbe_bp_main_on = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"Bypass Main On\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"main_off\00", align 1
@ixgbe_bp_main_off = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"Bypass Main Off\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"aux_on\00", align 1
@ixgbe_bp_aux_on = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"Bypass Aux On\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"aux_off\00", align 1
@ixgbe_bp_aux_off = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"Bypass Aux Off\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"wd_set\00", align 1
@ixgbe_bp_wd_set = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"Set BP Watchdog\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"wd_reset\00", align 1
@CTLFLAG_WR = common dso_local global i32 0, align 4
@ixgbe_bp_wd_reset = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Bypass WD Reset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_bypass_init(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 3
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %3, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IXGBE_FEATURE_BYPASS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %169

23:                                               ; preds = %1
  %24 = call i32 @ixgbe_get_bypass_time(i32* %10, i32* %9)
  %25 = load i32, i32* @BYPASS_CTL1_TIME_M, align 4
  %26 = load i32, i32* @BYPASS_CTL1_VALID_M, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BYPASS_CTL1_OFFTRST_M, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @BYPASS_CTL1_TIME_M, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @BYPASS_CTL1_VALID, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BYPASS_CTL1_OFFTRST, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = call i32 @ixgbe_bypass_mutex_enter(%struct.adapter* %37)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %42, align 8
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = bitcast %struct.ixgbe_hw* %44 to %struct.ixgbe_hw.0*
  %46 = load i32, i32* @BYPASS_PAGE_CTL1, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 %43(%struct.ixgbe_hw.0* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.adapter*, %struct.adapter** %2, align 8
  %51 = call i32 @ixgbe_bypass_mutex_clear(%struct.adapter* %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @device_get_sysctl_ctx(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %54)
  %56 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %55)
  %57 = load i32, i32* @OID_AUTO, align 4
  %58 = load i32, i32* @CTLTYPE_INT, align 4
  %59 = load i32, i32* @CTLFLAG_RW, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.adapter*, %struct.adapter** %2, align 8
  %62 = load i32, i32* @ixgbe_bp_log, align 4
  %63 = call i32 @SYSCTL_ADD_PROC(i32 %53, %struct.sysctl_oid_list* %56, i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %60, %struct.adapter* %61, i32 0, i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @device_get_sysctl_ctx(i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %66)
  %68 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %67)
  %69 = load i32, i32* @OID_AUTO, align 4
  %70 = load i32, i32* @CTLFLAG_RD, align 4
  %71 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32 %65, %struct.sysctl_oid_list* %68, i32 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sysctl_oid* %71, %struct.sysctl_oid** %5, align 8
  %72 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %73 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %72)
  store %struct.sysctl_oid_list* %73, %struct.sysctl_oid_list** %6, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @device_get_sysctl_ctx(i32 %74)
  %76 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %77 = load i32, i32* @OID_AUTO, align 4
  %78 = load i32, i32* @CTLTYPE_INT, align 4
  %79 = load i32, i32* @CTLFLAG_RD, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.adapter*, %struct.adapter** %2, align 8
  %82 = load i32, i32* @ixgbe_bp_version, align 4
  %83 = call i32 @SYSCTL_ADD_PROC(i32 %75, %struct.sysctl_oid_list* %76, i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %80, %struct.adapter* %81, i32 0, i32 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @device_get_sysctl_ctx(i32 %84)
  %86 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %87 = load i32, i32* @OID_AUTO, align 4
  %88 = load i32, i32* @CTLTYPE_INT, align 4
  %89 = load i32, i32* @CTLFLAG_RW, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = load i32, i32* @ixgbe_bp_set_state, align 4
  %93 = call i32 @SYSCTL_ADD_PROC(i32 %85, %struct.sysctl_oid_list* %86, i32 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %90, %struct.adapter* %91, i32 0, i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @device_get_sysctl_ctx(i32 %94)
  %96 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %97 = load i32, i32* @OID_AUTO, align 4
  %98 = load i32, i32* @CTLTYPE_INT, align 4
  %99 = load i32, i32* @CTLFLAG_RW, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.adapter*, %struct.adapter** %2, align 8
  %102 = load i32, i32* @ixgbe_bp_timeout, align 4
  %103 = call i32 @SYSCTL_ADD_PROC(i32 %95, %struct.sysctl_oid_list* %96, i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %100, %struct.adapter* %101, i32 0, i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @device_get_sysctl_ctx(i32 %104)
  %106 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %107 = load i32, i32* @OID_AUTO, align 4
  %108 = load i32, i32* @CTLTYPE_INT, align 4
  %109 = load i32, i32* @CTLFLAG_RW, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.adapter*, %struct.adapter** %2, align 8
  %112 = load i32, i32* @ixgbe_bp_main_on, align 4
  %113 = call i32 @SYSCTL_ADD_PROC(i32 %105, %struct.sysctl_oid_list* %106, i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %110, %struct.adapter* %111, i32 0, i32 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @device_get_sysctl_ctx(i32 %114)
  %116 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %117 = load i32, i32* @OID_AUTO, align 4
  %118 = load i32, i32* @CTLTYPE_INT, align 4
  %119 = load i32, i32* @CTLFLAG_RW, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.adapter*, %struct.adapter** %2, align 8
  %122 = load i32, i32* @ixgbe_bp_main_off, align 4
  %123 = call i32 @SYSCTL_ADD_PROC(i32 %115, %struct.sysctl_oid_list* %116, i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %120, %struct.adapter* %121, i32 0, i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @device_get_sysctl_ctx(i32 %124)
  %126 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %127 = load i32, i32* @OID_AUTO, align 4
  %128 = load i32, i32* @CTLTYPE_INT, align 4
  %129 = load i32, i32* @CTLFLAG_RW, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.adapter*, %struct.adapter** %2, align 8
  %132 = load i32, i32* @ixgbe_bp_aux_on, align 4
  %133 = call i32 @SYSCTL_ADD_PROC(i32 %125, %struct.sysctl_oid_list* %126, i32 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %130, %struct.adapter* %131, i32 0, i32 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @device_get_sysctl_ctx(i32 %134)
  %136 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %137 = load i32, i32* @OID_AUTO, align 4
  %138 = load i32, i32* @CTLTYPE_INT, align 4
  %139 = load i32, i32* @CTLFLAG_RW, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.adapter*, %struct.adapter** %2, align 8
  %142 = load i32, i32* @ixgbe_bp_aux_off, align 4
  %143 = call i32 @SYSCTL_ADD_PROC(i32 %135, %struct.sysctl_oid_list* %136, i32 %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %140, %struct.adapter* %141, i32 0, i32 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @device_get_sysctl_ctx(i32 %144)
  %146 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %147 = load i32, i32* @OID_AUTO, align 4
  %148 = load i32, i32* @CTLTYPE_INT, align 4
  %149 = load i32, i32* @CTLFLAG_RW, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.adapter*, %struct.adapter** %2, align 8
  %152 = load i32, i32* @ixgbe_bp_wd_set, align 4
  %153 = call i32 @SYSCTL_ADD_PROC(i32 %145, %struct.sysctl_oid_list* %146, i32 %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %150, %struct.adapter* %151, i32 0, i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @device_get_sysctl_ctx(i32 %154)
  %156 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %157 = load i32, i32* @OID_AUTO, align 4
  %158 = load i32, i32* @CTLTYPE_INT, align 4
  %159 = load i32, i32* @CTLFLAG_WR, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.adapter*, %struct.adapter** %2, align 8
  %162 = load i32, i32* @ixgbe_bp_wd_reset, align 4
  %163 = call i32 @SYSCTL_ADD_PROC(i32 %155, %struct.sysctl_oid_list* %156, i32 %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %160, %struct.adapter* %161, i32 0, i32 %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %164 = load i32, i32* @IXGBE_FEATURE_BYPASS, align 4
  %165 = load %struct.adapter*, %struct.adapter** %2, align 8
  %166 = getelementptr inbounds %struct.adapter, %struct.adapter* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %23, %22
  ret void
}

declare dso_local i32 @ixgbe_get_bypass_time(i32*, i32*) #1

declare dso_local i32 @ixgbe_bypass_mutex_enter(%struct.adapter*) #1

declare dso_local i32 @ixgbe_bypass_mutex_clear(%struct.adapter*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.adapter*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
