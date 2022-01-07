; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_state.c_gv_update_sd_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_state.c_gv_update_sd_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_sd = type { i32, i32, i32*, i32, %struct.gv_drive* }
%struct.gv_drive = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"gv_update_sd_state: NULL s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"gv_update_sd_state: NULL d\00", align 1
@GV_DRIVE_UP = common dso_local global i64 0, align 8
@GV_SD_DOWN = common dso_local global i32 0, align 4
@GV_SD_NEWBORN = common dso_local global i32 0, align 4
@GV_SD_UP = common dso_local global i8* null, align 8
@GV_SD_CANGOUP = common dso_local global i32 0, align 4
@GV_SD_STALE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"subdisk %s state change: %s -> %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_update_sd_state(%struct.gv_sd* %0) #0 {
  %2 = alloca %struct.gv_sd*, align 8
  %3 = alloca %struct.gv_drive*, align 8
  %4 = alloca i32, align 4
  store %struct.gv_sd* %0, %struct.gv_sd** %2, align 8
  %5 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %6 = icmp ne %struct.gv_sd* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %10 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %9, i32 0, i32 4
  %11 = load %struct.gv_drive*, %struct.gv_drive** %10, align 8
  store %struct.gv_drive* %11, %struct.gv_drive** %3, align 8
  %12 = load %struct.gv_drive*, %struct.gv_drive** %3, align 8
  %13 = icmp ne %struct.gv_drive* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %17 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.gv_drive*, %struct.gv_drive** %3, align 8
  %20 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GV_DRIVE_UP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @GV_SD_DOWN, align 4
  %26 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %27 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %85

28:                                               ; preds = %1
  %29 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %30 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GV_SD_NEWBORN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load i8*, i8** @GV_SD_UP, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %39 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @GV_SD_NEWBORN, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %43 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %84

46:                                               ; preds = %28
  %47 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %48 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load i8*, i8** @GV_SD_UP, align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %46
  %55 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %56 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GV_SD_CANGOUP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load i8*, i8** @GV_SD_UP, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %65 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @GV_SD_CANGOUP, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %69 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %77

72:                                               ; preds = %54
  %73 = load i8*, i8** @GV_SD_STALE, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %76 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %61
  br label %83

78:                                               ; preds = %46
  %79 = load i8*, i8** @GV_SD_UP, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %82 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %78, %77
  br label %84

84:                                               ; preds = %83, %35
  br label %85

85:                                               ; preds = %84, %24
  %86 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %87 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %93 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @gv_sdstate(i32 %95)
  %97 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %98 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @gv_sdstate(i32 %99)
  %101 = call i32 @G_VINUM_DEBUG(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %96, i32 %100)
  br label %102

102:                                              ; preds = %91, %85
  %103 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %104 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.gv_sd*, %struct.gv_sd** %2, align 8
  %109 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @gv_update_plex_state(i32* %110)
  br label %112

112:                                              ; preds = %107, %102
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @gv_sdstate(i32) #1

declare dso_local i32 @gv_update_plex_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
