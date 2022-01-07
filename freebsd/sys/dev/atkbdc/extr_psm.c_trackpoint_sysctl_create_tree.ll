; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_trackpoint_sysctl_create_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_trackpoint_sysctl_create_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@_hw_psm = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"trackpoint\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"IBM/Lenovo TrackPoint\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"sensitivity\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLFLAG_ANYBODY = common dso_local global i32 0, align 4
@TRACKPOINT_SYSCTL_SENSITIVITY = common dso_local global i32 0, align 4
@trackpoint_sysctl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Sensitivity\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"negative_inertia\00", align 1
@TRACKPOINT_SYSCTL_NEGATIVE_INERTIA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Negative inertia factor\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"upper_plateau\00", align 1
@TRACKPOINT_SYSCTL_UPPER_PLATEAU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Transfer function upper plateau speed\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"backup_range\00", align 1
@TRACKPOINT_SYSCTL_BACKUP_RANGE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"Backup range\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"drag_hysteresis\00", align 1
@TRACKPOINT_SYSCTL_DRAG_HYSTERESIS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"Drag hysteresis\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"minimum_drag\00", align 1
@TRACKPOINT_SYSCTL_MINIMUM_DRAG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"Minimum drag\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"up_threshold\00", align 1
@TRACKPOINT_SYSCTL_UP_THRESHOLD = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"Up threshold for release\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@TRACKPOINT_SYSCTL_THRESHOLD = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"jenks_curvature\00", align 1
@TRACKPOINT_SYSCTL_JENKS_CURVATURE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"Jenks curvature\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"z_time\00", align 1
@TRACKPOINT_SYSCTL_Z_TIME = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"Z time constant\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"press_to_select\00", align 1
@TRACKPOINT_SYSCTL_PRESS_TO_SELECT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [16 x i8] c"Press to Select\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"skip_backups\00", align 1
@TRACKPOINT_SYSCTL_SKIP_BACKUPS = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [24 x i8] c"Skip backups from drags\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psm_softc*)* @trackpoint_sysctl_create_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trackpoint_sysctl_create_tree(%struct.psm_softc* %0) #0 {
  %2 = alloca %struct.psm_softc*, align 8
  store %struct.psm_softc* %0, %struct.psm_softc** %2, align 8
  %3 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %4 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 12
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %277

9:                                                ; preds = %1
  %10 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %11 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 13
  %13 = call i32 @sysctl_ctx_init(i32* %12)
  %14 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %15 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 13
  %17 = load i32, i32* @_hw_psm, align 4
  %18 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %17)
  %19 = load i32, i32* @OID_AUTO, align 4
  %20 = load i32, i32* @CTLFLAG_RD, align 4
  %21 = call i32* @SYSCTL_ADD_NODE(i32* %16, i32 %18, i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %23 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 12
  store i32* %21, i32** %24, align 8
  %25 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %26 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 128, i32* %27, align 8
  %28 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %29 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 13
  %31 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %32 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 12
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @SYSCTL_CHILDREN(i32* %34)
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLTYPE_INT, align 4
  %38 = load i32, i32* @CTLFLAG_RW, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %43 = load i32, i32* @TRACKPOINT_SYSCTL_SENSITIVITY, align 4
  %44 = load i32, i32* @trackpoint_sysctl, align 4
  %45 = call i32 @SYSCTL_ADD_PROC(i32* %30, i32 %35, i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %41, %struct.psm_softc* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %47 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 6, i32* %48, align 4
  %49 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %50 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 13
  %52 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %53 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 12
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @SYSCTL_CHILDREN(i32* %55)
  %57 = load i32, i32* @OID_AUTO, align 4
  %58 = load i32, i32* @CTLTYPE_INT, align 4
  %59 = load i32, i32* @CTLFLAG_RW, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %64 = load i32, i32* @TRACKPOINT_SYSCTL_NEGATIVE_INERTIA, align 4
  %65 = load i32, i32* @trackpoint_sysctl, align 4
  %66 = call i32 @SYSCTL_ADD_PROC(i32* %51, i32 %56, i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %62, %struct.psm_softc* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %67 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %68 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 97, i32* %69, align 8
  %70 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %71 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 13
  %73 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %74 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 12
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @SYSCTL_CHILDREN(i32* %76)
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLTYPE_INT, align 4
  %80 = load i32, i32* @CTLFLAG_RW, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %85 = load i32, i32* @TRACKPOINT_SYSCTL_UPPER_PLATEAU, align 4
  %86 = load i32, i32* @trackpoint_sysctl, align 4
  %87 = call i32 @SYSCTL_ADD_PROC(i32* %72, i32 %77, i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %83, %struct.psm_softc* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %88 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %89 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i32 10, i32* %90, align 4
  %91 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %92 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 13
  %94 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %95 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 12
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @SYSCTL_CHILDREN(i32* %97)
  %99 = load i32, i32* @OID_AUTO, align 4
  %100 = load i32, i32* @CTLTYPE_INT, align 4
  %101 = load i32, i32* @CTLFLAG_RW, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %106 = load i32, i32* @TRACKPOINT_SYSCTL_BACKUP_RANGE, align 4
  %107 = load i32, i32* @trackpoint_sysctl, align 4
  %108 = call i32 @SYSCTL_ADD_PROC(i32* %93, i32 %98, i32 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %104, %struct.psm_softc* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %109 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %110 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  store i32 255, i32* %111, align 8
  %112 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %113 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 13
  %115 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %116 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 12
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @SYSCTL_CHILDREN(i32* %118)
  %120 = load i32, i32* @OID_AUTO, align 4
  %121 = load i32, i32* @CTLTYPE_INT, align 4
  %122 = load i32, i32* @CTLFLAG_RW, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %127 = load i32, i32* @TRACKPOINT_SYSCTL_DRAG_HYSTERESIS, align 4
  %128 = load i32, i32* @trackpoint_sysctl, align 4
  %129 = call i32 @SYSCTL_ADD_PROC(i32* %114, i32 %119, i32 %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %125, %struct.psm_softc* %126, i32 %127, i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %130 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %131 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 5
  store i32 20, i32* %132, align 4
  %133 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %134 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 13
  %136 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %137 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 12
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @SYSCTL_CHILDREN(i32* %139)
  %141 = load i32, i32* @OID_AUTO, align 4
  %142 = load i32, i32* @CTLTYPE_INT, align 4
  %143 = load i32, i32* @CTLFLAG_RW, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %148 = load i32, i32* @TRACKPOINT_SYSCTL_MINIMUM_DRAG, align 4
  %149 = load i32, i32* @trackpoint_sysctl, align 4
  %150 = call i32 @SYSCTL_ADD_PROC(i32* %135, i32 %140, i32 %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %146, %struct.psm_softc* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %151 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %152 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 6
  store i32 255, i32* %153, align 8
  %154 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %155 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 13
  %157 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %158 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 12
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @SYSCTL_CHILDREN(i32* %160)
  %162 = load i32, i32* @OID_AUTO, align 4
  %163 = load i32, i32* @CTLTYPE_INT, align 4
  %164 = load i32, i32* @CTLFLAG_RW, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %169 = load i32, i32* @TRACKPOINT_SYSCTL_UP_THRESHOLD, align 4
  %170 = load i32, i32* @trackpoint_sysctl, align 4
  %171 = call i32 @SYSCTL_ADD_PROC(i32* %156, i32 %161, i32 %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %167, %struct.psm_softc* %168, i32 %169, i32 %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %172 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %173 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 7
  store i32 8, i32* %174, align 4
  %175 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %176 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 13
  %178 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %179 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 12
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @SYSCTL_CHILDREN(i32* %181)
  %183 = load i32, i32* @OID_AUTO, align 4
  %184 = load i32, i32* @CTLTYPE_INT, align 4
  %185 = load i32, i32* @CTLFLAG_RW, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %188 = or i32 %186, %187
  %189 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %190 = load i32, i32* @TRACKPOINT_SYSCTL_THRESHOLD, align 4
  %191 = load i32, i32* @trackpoint_sysctl, align 4
  %192 = call i32 @SYSCTL_ADD_PROC(i32* %177, i32 %182, i32 %183, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %188, %struct.psm_softc* %189, i32 %190, i32 %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %193 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %194 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 8
  store i32 135, i32* %195, align 8
  %196 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %197 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 13
  %199 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %200 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 12
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @SYSCTL_CHILDREN(i32* %202)
  %204 = load i32, i32* @OID_AUTO, align 4
  %205 = load i32, i32* @CTLTYPE_INT, align 4
  %206 = load i32, i32* @CTLFLAG_RW, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %209 = or i32 %207, %208
  %210 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %211 = load i32, i32* @TRACKPOINT_SYSCTL_JENKS_CURVATURE, align 4
  %212 = load i32, i32* @trackpoint_sysctl, align 4
  %213 = call i32 @SYSCTL_ADD_PROC(i32* %198, i32 %203, i32 %204, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 %209, %struct.psm_softc* %210, i32 %211, i32 %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %214 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %215 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 9
  store i32 38, i32* %216, align 4
  %217 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %218 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 13
  %220 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %221 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 12
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @SYSCTL_CHILDREN(i32* %223)
  %225 = load i32, i32* @OID_AUTO, align 4
  %226 = load i32, i32* @CTLTYPE_INT, align 4
  %227 = load i32, i32* @CTLFLAG_RW, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %230 = or i32 %228, %229
  %231 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %232 = load i32, i32* @TRACKPOINT_SYSCTL_Z_TIME, align 4
  %233 = load i32, i32* @trackpoint_sysctl, align 4
  %234 = call i32 @SYSCTL_ADD_PROC(i32* %219, i32 %224, i32 %225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 %230, %struct.psm_softc* %231, i32 %232, i32 %233, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %235 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %236 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 10
  store i32 0, i32* %237, align 8
  %238 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %239 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 13
  %241 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %242 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 12
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @SYSCTL_CHILDREN(i32* %244)
  %246 = load i32, i32* @OID_AUTO, align 4
  %247 = load i32, i32* @CTLTYPE_INT, align 4
  %248 = load i32, i32* @CTLFLAG_RW, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %251 = or i32 %249, %250
  %252 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %253 = load i32, i32* @TRACKPOINT_SYSCTL_PRESS_TO_SELECT, align 4
  %254 = load i32, i32* @trackpoint_sysctl, align 4
  %255 = call i32 @SYSCTL_ADD_PROC(i32* %240, i32 %245, i32 %246, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %251, %struct.psm_softc* %252, i32 %253, i32 %254, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  %256 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %257 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 11
  store i32 0, i32* %258, align 4
  %259 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %260 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 13
  %262 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %263 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 12
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @SYSCTL_CHILDREN(i32* %265)
  %267 = load i32, i32* @OID_AUTO, align 4
  %268 = load i32, i32* @CTLTYPE_INT, align 4
  %269 = load i32, i32* @CTLFLAG_RW, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %272 = or i32 %270, %271
  %273 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %274 = load i32, i32* @TRACKPOINT_SYSCTL_SKIP_BACKUPS, align 4
  %275 = load i32, i32* @trackpoint_sysctl, align 4
  %276 = call i32 @SYSCTL_ADD_PROC(i32* %261, i32 %266, i32 %267, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32 %272, %struct.psm_softc* %273, i32 %274, i32 %275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  br label %277

277:                                              ; preds = %9, %8
  ret void
}

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.psm_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
