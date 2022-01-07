; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_state.c_gv_set_plex_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_state.c_gv_set_plex_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { i32, i32, %struct.gv_volume* }
%struct.gv_volume = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"gv_set_plex_state: NULL p\00", align 1
@GV_SETSTATE_FORCE = common dso_local global i32 0, align 4
@GV_ERR_SETSTATE = common dso_local global i32 0, align 4
@GV_SETSTATE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_set_plex_state(%struct.gv_plex* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gv_plex*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gv_volume*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gv_plex* %0, %struct.gv_plex** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %12 = icmp ne %struct.gv_plex* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %16 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %19 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %18, i32 0, i32 2
  %20 = load %struct.gv_volume*, %struct.gv_volume** %19, align 8
  store %struct.gv_volume* %20, %struct.gv_volume** %8, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %84 [
    i32 128, label %27
    i32 129, label %45
    i32 130, label %74
  ]

27:                                               ; preds = %25
  %28 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %29 = call i32 @gv_update_plex_state(%struct.gv_plex* %28)
  %30 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %31 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 128
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @GV_ERR_SETSTATE, align 4
  store i32 %40, i32* %4, align 4
  br label %101

41:                                               ; preds = %34, %27
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %44 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %84

45:                                               ; preds = %25
  %46 = load %struct.gv_volume*, %struct.gv_volume** %8, align 8
  %47 = icmp ne %struct.gv_volume* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load %struct.gv_volume*, %struct.gv_volume** %8, align 8
  %50 = call i32 @gv_plexdown(%struct.gv_volume* %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.gv_volume*, %struct.gv_volume** %8, align 8
  %52 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.gv_volume*, %struct.gv_volume** %8, align 8
  %57 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %69

62:                                               ; preds = %55, %48
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @GV_ERR_SETSTATE, align 4
  store i32 %68, i32* %4, align 4
  br label %101

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %73 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %84

74:                                               ; preds = %25
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @GV_SETSTATE_FORCE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %82 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %74
  br label %84

84:                                               ; preds = %25, %83, %70, %41
  %85 = load %struct.gv_volume*, %struct.gv_volume** %8, align 8
  %86 = icmp ne %struct.gv_volume* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.gv_volume*, %struct.gv_volume** %8, align 8
  %89 = call i32 @gv_update_vol_state(%struct.gv_volume* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @GV_SETSTATE_CONFIG, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %97 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @gv_save_config(i32 %98)
  br label %100

100:                                              ; preds = %95, %90
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %67, %39, %24
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @gv_update_plex_state(%struct.gv_plex*) #1

declare dso_local i32 @gv_plexdown(%struct.gv_volume*) #1

declare dso_local i32 @gv_update_vol_state(%struct.gv_volume*) #1

declare dso_local i32 @gv_save_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
