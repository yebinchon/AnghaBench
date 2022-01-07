; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpo.c_vpo_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpo.c_vpo_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpo_data = type { i32*, i32, i64 }
%struct.ppb_data = type { i32 }
%struct.cam_devq = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@vpo_action = common dso_local global i32 0, align 4
@vpo_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vpo\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vpo_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpo_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpo_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ppb_data*, align 8
  %7 = alloca %struct.cam_devq*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.vpo_data* @DEVTOSOFTC(i32 %9)
  store %struct.vpo_data* %10, %struct.vpo_data** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.ppb_data* @device_get_softc(i32 %13)
  store %struct.ppb_data* %14, %struct.ppb_data** %6, align 8
  %15 = load %struct.vpo_data*, %struct.vpo_data** %4, align 8
  %16 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.vpo_data*, %struct.vpo_data** %4, align 8
  %21 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %20, i32 0, i32 1
  %22 = call i32 @imm_attach(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %2, align 4
  br label %84

26:                                               ; preds = %19
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.vpo_data*, %struct.vpo_data** %4, align 8
  %29 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %28, i32 0, i32 1
  %30 = call i32 @vpoio_attach(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %84

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %26
  %36 = call %struct.cam_devq* @cam_simq_alloc(i32 1)
  store %struct.cam_devq* %36, %struct.cam_devq** %7, align 8
  %37 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %38 = icmp eq %struct.cam_devq* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %84

41:                                               ; preds = %35
  %42 = load i32, i32* @vpo_action, align 4
  %43 = load i32, i32* @vpo_poll, align 4
  %44 = load %struct.vpo_data*, %struct.vpo_data** %4, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_get_unit(i32 %45)
  %47 = load %struct.ppb_data*, %struct.ppb_data** %6, align 8
  %48 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %51 = call i32* @cam_sim_alloc(i32 %42, i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.vpo_data* %44, i32 %46, i32 %49, i32 1, i32 0, %struct.cam_devq* %50)
  %52 = load %struct.vpo_data*, %struct.vpo_data** %4, align 8
  %53 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = load %struct.vpo_data*, %struct.vpo_data** %4, align 8
  %55 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %41
  %59 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %60 = call i32 @cam_simq_free(%struct.cam_devq* %59)
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %2, align 4
  br label %84

62:                                               ; preds = %41
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @ppb_lock(i32 %63)
  %65 = load %struct.vpo_data*, %struct.vpo_data** %4, align 8
  %66 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @xpt_bus_register(i32* %67, i32 %68, i32 0)
  %70 = load i64, i64* @CAM_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = load %struct.vpo_data*, %struct.vpo_data** %4, align 8
  %74 = getelementptr inbounds %struct.vpo_data, %struct.vpo_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @TRUE, align 4
  %77 = call i32 @cam_sim_free(i32* %75, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @ppb_unlock(i32 %78)
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %2, align 4
  br label %84

81:                                               ; preds = %62
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @ppb_unlock(i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %72, %58, %39, %32, %24
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.vpo_data* @DEVTOSOFTC(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.ppb_data* @device_get_softc(i32) #1

declare dso_local i32 @imm_attach(i32*) #1

declare dso_local i32 @vpoio_attach(i32*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.vpo_data*, i32, i32, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
