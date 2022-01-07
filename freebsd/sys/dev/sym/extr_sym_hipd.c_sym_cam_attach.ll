; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_cam_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_cam_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.cam_sim*, %struct.cam_path*, i32, i32, i32, i32 }
%struct.cam_sim = type { i32 }
%struct.cam_path = type { i32 }
%struct.cam_devq = type { i32 }

@INTR_ENTROPY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@sym_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"bus_setup_intr() failed: %d\0A\00", align 1
@SYM_CONF_MAX_START = common dso_local global i32 0, align 4
@sym_action = common dso_local global i32 0, align 4
@sym_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sym\00", align 1
@SYM_SETUP_MAX_TAG = common dso_local global i32 0, align 4
@CAM_SUCCESS = common dso_local global i64 0, align 8
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@sym_async = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @sym_cam_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_cam_attach(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.cam_devq*, align 8
  %5 = alloca %struct.cam_sim*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.cam_devq* null, %struct.cam_devq** %4, align 8
  store %struct.cam_sim* null, %struct.cam_sim** %5, align 8
  store %struct.cam_path* null, %struct.cam_path** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @INTR_ENTROPY, align 4
  %15 = load i32, i32* @INTR_MPSAFE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @INTR_TYPE_CAM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @sym_intr, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  %23 = call i32 @bus_setup_intr(i32 %10, i32 %13, i32 %18, i32* null, i32 %19, %struct.TYPE_7__* %20, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %96

32:                                               ; preds = %1
  %33 = load i32, i32* @SYM_CONF_MAX_START, align 4
  %34 = call %struct.cam_devq* @cam_simq_alloc(i32 %33)
  store %struct.cam_devq* %34, %struct.cam_devq** %4, align 8
  %35 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %36 = icmp ne %struct.cam_devq* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %96

38:                                               ; preds = %32
  %39 = load i32, i32* @sym_action, align 4
  %40 = load i32, i32* @sym_poll, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @device_get_unit(i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32, i32* @SYM_SETUP_MAX_TAG, align 4
  %49 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %50 = call %struct.cam_sim* @cam_sim_alloc(i32 %39, i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %41, i32 %45, i32* %47, i32 1, i32 %48, %struct.cam_devq* %49)
  store %struct.cam_sim* %50, %struct.cam_sim** %5, align 8
  %51 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %52 = icmp ne %struct.cam_sim* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  br label %96

54:                                               ; preds = %38
  %55 = call i32 (...) @SYM_LOCK()
  %56 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @xpt_bus_register(%struct.cam_sim* %56, i32 %59, i32 0)
  %61 = load i64, i64* @CAM_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %96

64:                                               ; preds = %54
  %65 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store %struct.cam_sim* %65, %struct.cam_sim** %67, align 8
  store %struct.cam_sim* null, %struct.cam_sim** %5, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.cam_sim*, %struct.cam_sim** %69, align 8
  %71 = call i32 @cam_sim_path(%struct.cam_sim* %70)
  %72 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %73 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %74 = call i64 @xpt_create_path(%struct.cam_path** %6, i32* null, i32 %71, i32 %72, i32 %73)
  %75 = load i64, i64* @CAM_REQ_CMP, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %96

78:                                               ; preds = %64
  %79 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store %struct.cam_path* %79, %struct.cam_path** %81, align 8
  %82 = load i32, i32* @AC_LOST_DEVICE, align 4
  %83 = load i32, i32* @sym_async, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.cam_sim*, %struct.cam_sim** %85, align 8
  %87 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %88 = call i64 @xpt_register_async(i32 %82, i32 %83, %struct.cam_sim* %86, %struct.cam_path* %87)
  %89 = load i64, i64* @CAM_REQ_CMP, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %96

92:                                               ; preds = %78
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = call i32 @sym_init(%struct.TYPE_7__* %93, i32 0)
  %95 = call i32 (...) @SYM_UNLOCK()
  store i32 1, i32* %2, align 4
  br label %113

96:                                               ; preds = %91, %77, %63, %53, %37, %26
  %97 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %98 = icmp ne %struct.cam_sim* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %101 = load i32, i32* @FALSE, align 4
  %102 = call i32 @cam_sim_free(%struct.cam_sim* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %105 = icmp ne %struct.cam_devq* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %108 = call i32 @cam_simq_free(%struct.cam_devq* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = call i32 (...) @SYM_UNLOCK()
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = call i32 @sym_cam_free(%struct.TYPE_7__* %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %92
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local %struct.cam_sim* @cam_sim_alloc(i32, i32, i8*, %struct.TYPE_7__*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @SYM_LOCK(...) #1

declare dso_local i64 @xpt_bus_register(%struct.cam_sim*, i32, i32) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i64 @xpt_register_async(i32, i32, %struct.cam_sim*, %struct.cam_path*) #1

declare dso_local i32 @sym_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @SYM_UNLOCK(...) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @sym_cam_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
