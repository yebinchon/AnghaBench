; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.cam_sim = type { i32 }
%struct.cam_path = type opaque

@EIO = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@isp_timer_count = common dso_local global i32 0, align 4
@isp_timer = common dso_local global i32 0, align 4
@isp_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isp_attach(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_sim*, align 8
  %8 = alloca %struct.cam_path*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @device_get_nameunit(i32 %12)
  store i8* %13, i8** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_get_unit(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @cam_simq_alloc(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32* %21, i32** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @EIO, align 4
  store i32 %31, i32* %2, align 4
  br label %130

32:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @isp_attach_chan(%struct.TYPE_11__* %40, i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %90

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %33

53:                                               ; preds = %33
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = call i32 @callout_init_mtx(i32* %56, i32* %58, i32 0)
  %60 = load i32, i32* @hz, align 4
  %61 = ashr i32 %60, 2
  store i32 %61, i32* @isp_timer_count, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* @isp_timer_count, align 4
  %66 = load i32, i32* @isp_timer, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = call i32 @callout_reset(i32* %64, i32 %65, i32 %66, %struct.TYPE_11__* %67)
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @UID_ROOT, align 4
  %71 = load i32, i32* @GID_OPERATOR, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = call %struct.TYPE_12__* @make_dev(i32* @isp_cdevsw, i32 %69, i32 %70, i32 %71, i32 384, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = icmp ne %struct.TYPE_12__* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %53
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %88, align 8
  br label %89

89:                                               ; preds = %82, %53
  store i32 0, i32* %2, align 4
  br label %130

90:                                               ; preds = %48
  br label %91

91:                                               ; preds = %95, %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %6, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %91
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.cam_sim*, %struct.cam_sim** %7, align 8
  %99 = load %struct.cam_sim*, %struct.cam_sim** %7, align 8
  %100 = call i32 @ISP_GET_PC(%struct.TYPE_11__* %96, i32 %97, %struct.cam_sim* %98, %struct.cam_sim* %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.cam_path*, %struct.cam_path** %8, align 8
  %104 = bitcast %struct.cam_path* %103 to %struct.cam_sim*
  %105 = load %struct.cam_path*, %struct.cam_path** %8, align 8
  %106 = bitcast %struct.cam_path* %105 to %struct.cam_sim*
  %107 = call i32 @ISP_GET_PC(%struct.TYPE_11__* %101, i32 %102, %struct.cam_sim* %104, %struct.cam_sim* %106)
  %108 = load %struct.cam_path*, %struct.cam_path** %8, align 8
  %109 = bitcast %struct.cam_path* %108 to %struct.cam_sim*
  %110 = call i32 @xpt_free_path(%struct.cam_sim* %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = call i32 @ISP_LOCK(%struct.TYPE_11__* %111)
  %113 = load %struct.cam_sim*, %struct.cam_sim** %7, align 8
  %114 = call i32 @cam_sim_path(%struct.cam_sim* %113)
  %115 = call i32 @xpt_bus_deregister(i32 %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = call i32 @ISP_UNLOCK(%struct.TYPE_11__* %116)
  %118 = load %struct.cam_sim*, %struct.cam_sim** %7, align 8
  %119 = load i32, i32* @FALSE, align 4
  %120 = call i32 @cam_sim_free(%struct.cam_sim* %118, i32 %119)
  br label %91

121:                                              ; preds = %91
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @cam_simq_free(i32* %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i32* null, i32** %129, align 8
  store i32 -1, i32* %2, align 4
  br label %130

130:                                              ; preds = %121, %89, %30
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32* @cam_simq_alloc(i32) #1

declare dso_local i64 @isp_attach_chan(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @make_dev(i32*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ISP_GET_PC(%struct.TYPE_11__*, i32, %struct.cam_sim*, %struct.cam_sim*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_sim*) #1

declare dso_local i32 @ISP_LOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i32 @ISP_UNLOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i32 @cam_simq_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
