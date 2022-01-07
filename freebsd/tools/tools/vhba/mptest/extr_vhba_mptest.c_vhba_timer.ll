; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/mptest/extr_vhba_mptest.c_vhba_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/mptest/extr_vhba_mptest.c_vhba_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.cam_path = type { i32 }
%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.cam_path* }

@vhba_stop_lun = common dso_local global i32 0, align 4
@vhba_notify_stop = common dso_local global i64 0, align 8
@xpt_periph = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@vhba_start_lun = common dso_local global i32 0, align 4
@vhba_notify_start = common dso_local global i64 0, align 8
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@VMP_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vhba_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhba_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca %union.ccb*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load i32, i32* @vhba_stop_lun, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %76

15:                                               ; preds = %1
  %16 = load i32, i32* @vhba_stop_lun, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %70

26:                                               ; preds = %23, %15
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %26
  %36 = load i64, i64* @vhba_notify_stop, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load i32, i32* @xpt_periph, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cam_sim_path(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @xpt_create_path(%struct.cam_path** %6, i32 %39, i32 %43, i32 0, i32 %44)
  %46 = load i64, i64* @CAM_REQ_CMP, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %150

49:                                               ; preds = %38
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* @AC_LOST_DEVICE, align 4
  %57 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %58 = call i32 @xpt_async(i32 %56, %struct.cam_path* %57, i32* null)
  %59 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %60 = call i32 @xpt_free_path(%struct.cam_path* %59)
  br label %68

61:                                               ; preds = %35
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %49
  br label %69

69:                                               ; preds = %68, %26
  br label %70

70:                                               ; preds = %69, %23
  %71 = load i32, i32* %3, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* @vhba_stop_lun, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* @vhba_stop_lun, align 4
  br label %149

76:                                               ; preds = %1
  %77 = load i32, i32* @vhba_start_lun, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %148

79:                                               ; preds = %76
  %80 = load i32, i32* @vhba_start_lun, align 4
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 0, i32 1
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %3, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %142

90:                                               ; preds = %87, %79
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %141

99:                                               ; preds = %90
  %100 = load i64, i64* @vhba_notify_start, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %99
  %103 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %103, %union.ccb** %7, align 8
  %104 = load %union.ccb*, %union.ccb** %7, align 8
  %105 = icmp eq %union.ccb* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %150

107:                                              ; preds = %102
  %108 = load %union.ccb*, %union.ccb** %7, align 8
  %109 = bitcast %union.ccb* %108 to %struct.TYPE_5__*
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* @xpt_periph, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @cam_sim_path(i32 %114)
  %116 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %117 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %118 = call i64 @xpt_create_path(%struct.cam_path** %110, i32 %111, i32 %115, i32 %116, i32 %117)
  %119 = load i64, i64* @CAM_REQ_CMP, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %107
  %122 = load %union.ccb*, %union.ccb** %7, align 8
  %123 = call i32 @xpt_free_ccb(%union.ccb* %122)
  br label %150

124:                                              ; preds = %107
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 1, i32* %130, align 4
  %131 = load %union.ccb*, %union.ccb** %7, align 8
  %132 = call i32 @xpt_rescan(%union.ccb* %131)
  br label %140

133:                                              ; preds = %99
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 1, i32* %139, align 4
  br label %140

140:                                              ; preds = %133, %124
  br label %141

141:                                              ; preds = %140, %90
  br label %142

142:                                              ; preds = %141, %87
  %143 = load i32, i32* %3, align 4
  %144 = shl i32 1, %143
  %145 = xor i32 %144, -1
  %146 = load i32, i32* @vhba_start_lun, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* @vhba_start_lun, align 4
  br label %148

148:                                              ; preds = %142, %76
  br label %149

149:                                              ; preds = %148, %70
  br label %150

150:                                              ; preds = %149, %121, %106, %48
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* @VMP_TIME, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = call i32 @callout_reset(i32* %152, i32 %153, void (i8*)* @vhba_timer, %struct.TYPE_6__* %154)
  ret void
}

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, i32*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
