; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_state.c_gv_set_vol_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_state.c_gv_set_vol_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_volume = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"gv_set_vol_state: NULL v\00", align 1
@GV_SETSTATE_FORCE = common dso_local global i32 0, align 4
@GV_ERR_SETSTATE = common dso_local global i32 0, align 4
@GV_ERR_ISBUSY = common dso_local global i32 0, align 4
@GV_SETSTATE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_set_vol_state(%struct.gv_volume* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gv_volume*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gv_volume* %0, %struct.gv_volume** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.gv_volume*, %struct.gv_volume** %5, align 8
  %10 = icmp ne %struct.gv_volume* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.gv_volume*, %struct.gv_volume** %5, align 8
  %14 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %68

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %57 [
    i32 128, label %22
    i32 129, label %40
  ]

22:                                               ; preds = %20
  %23 = load %struct.gv_volume*, %struct.gv_volume** %5, align 8
  %24 = call i32 @gv_update_vol_state(%struct.gv_volume* %23)
  %25 = load %struct.gv_volume*, %struct.gv_volume** %5, align 8
  %26 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 128
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @GV_ERR_SETSTATE, align 4
  store i32 %35, i32* %4, align 4
  br label %68

36:                                               ; preds = %29, %22
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.gv_volume*, %struct.gv_volume** %5, align 8
  %39 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %57

40:                                               ; preds = %20
  %41 = load %struct.gv_volume*, %struct.gv_volume** %5, align 8
  %42 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gv_provider_is_open(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @GV_ERR_ISBUSY, align 4
  store i32 %52, i32* %4, align 4
  br label %68

53:                                               ; preds = %46, %40
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.gv_volume*, %struct.gv_volume** %5, align 8
  %56 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %20, %53, %36
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @GV_SETSTATE_CONFIG, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.gv_volume*, %struct.gv_volume** %5, align 8
  %64 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gv_save_config(i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %51, %34, %19
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @gv_update_vol_state(%struct.gv_volume*) #1

declare dso_local i32 @gv_provider_is_open(i32) #1

declare dso_local i32 @gv_save_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
