; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_deregister_sim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_deregister_sim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqisrc_softstate = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i32, i32*, i32*, i8*, i32 }
%struct.ccb_setasync = type { %struct.pqisrc_softstate*, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.ccb = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@smartpqi_async = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deregister_sim(%struct.pqisrc_softstate* %0) #0 {
  %2 = alloca %struct.pqisrc_softstate*, align 8
  %3 = alloca %struct.ccb_setasync, align 8
  store %struct.pqisrc_softstate* %0, %struct.pqisrc_softstate** %2, align 8
  %4 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %6 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %12 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = call i32 @mtx_lock(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 3
  %17 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %18 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %16, i32 %20, i32 5)
  %22 = load i32, i32* @XPT_SASYNC_CB, align 4
  %23 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @smartpqi_async, align 4
  %27 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %29 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %3, i32 0, i32 0
  store %struct.pqisrc_softstate* %28, %struct.pqisrc_softstate** %29, align 8
  %30 = bitcast %struct.ccb_setasync* %3 to %union.ccb*
  %31 = call i32 @xpt_action(%union.ccb* %30)
  %32 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %33 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @xpt_free_path(i32 %35)
  %37 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %38 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @xpt_release_simq(i32* %40, i32 0)
  %42 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %43 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @cam_sim_path(i32* %45)
  %47 = call i32 @xpt_bus_deregister(i32 %46)
  %48 = load i8*, i8** @FALSE, align 8
  %49 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %50 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  store i8* %48, i8** %51, align 8
  %52 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %53 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %15
  %58 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %59 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i8*, i8** @FALSE, align 8
  %63 = call i32 @cam_sim_free(i32* %61, i8* %62)
  %64 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %65 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %57, %15
  %68 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %69 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %75 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = call i32 @mtx_unlock(i32* %76)
  br label %78

78:                                               ; preds = %73, %67
  %79 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %80 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %86 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @cam_simq_free(i32* %88)
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %92 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %98 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = call i32 @mtx_destroy(i32* %99)
  %101 = load i8*, i8** @FALSE, align 8
  %102 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %103 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  br label %105

105:                                              ; preds = %96, %90
  %106 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %2, align 8
  %107 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = call i32 @mtx_destroy(i32* %108)
  %110 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_release_simq(i32*, i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cam_simq_free(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
