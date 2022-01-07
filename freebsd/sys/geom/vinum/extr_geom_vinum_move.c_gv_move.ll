; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_move.c_gv_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_move.c_gv_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.gctl_req = type { i32 }
%struct.gv_sd = type { i32 }
%struct.gv_drive = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"no arguments given\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no flags given\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"no destination given\00", align 1
@GV_TYPE_DRIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"destination '%s' is not a drive\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"argv%d\00", align 1
@GV_TYPE_SD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"you can only move subdisks; '%s' is not a subdisk\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"unknown subdisk '%s'\00", align 1
@GV_EVENT_MOVE_SD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_move(%struct.g_geom* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.gv_softc*, align 8
  %6 = alloca %struct.gv_sd*, align 8
  %7 = alloca %struct.gv_drive*, align 8
  %8 = alloca [20 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %15 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %16 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %15, i32 0, i32 0
  %17 = load %struct.gv_softc*, %struct.gv_softc** %16, align 8
  store %struct.gv_softc* %17, %struct.gv_softc** %5, align 8
  %18 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %19 = call i32* @gctl_get_paraml(%struct.gctl_req* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %24 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %102

25:                                               ; preds = %2
  %26 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %27 = call i32* @gctl_get_paraml(%struct.gctl_req* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %32 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %102

33:                                               ; preds = %25
  %34 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %35 = call i8* @gctl_get_param(%struct.gctl_req* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %40 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %102

41:                                               ; preds = %33
  %42 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @gv_object_type(%struct.gv_softc* %42, i8* %43)
  %45 = load i32, i32* @GV_TYPE_DRIVE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %49)
  br label %102

51:                                               ; preds = %41
  %52 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call %struct.gv_drive* @gv_find_drive(%struct.gv_softc* %52, i8* %53)
  store %struct.gv_drive* %54, %struct.gv_drive** %7, align 8
  store i32 1, i32* %13, align 4
  br label %55

55:                                               ; preds = %99, %51
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %102

60:                                               ; preds = %55
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @snprintf(i8* %61, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  %64 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %66 = call i8* @gctl_get_param(%struct.gctl_req* %64, i8* %65, i32* null)
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %99

70:                                               ; preds = %60
  %71 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @gv_object_type(%struct.gv_softc* %71, i8* %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @GV_TYPE_SD, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %78, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* %79)
  br label %102

81:                                               ; preds = %70
  %82 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call %struct.gv_sd* @gv_find_sd(%struct.gv_softc* %82, i8* %83)
  store %struct.gv_sd* %84, %struct.gv_sd** %6, align 8
  %85 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %86 = icmp eq %struct.gv_sd* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %89)
  br label %102

91:                                               ; preds = %81
  %92 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %93 = load i32, i32* @GV_EVENT_MOVE_SD, align 4
  %94 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %95 = load %struct.gv_drive*, %struct.gv_drive** %7, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @gv_post_event(%struct.gv_softc* %92, i32 %93, %struct.gv_sd* %94, %struct.gv_drive* %95, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %91, %69
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %55

102:                                              ; preds = %22, %30, %38, %47, %77, %87, %55
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gv_object_type(%struct.gv_softc*, i8*) #1

declare dso_local %struct.gv_drive* @gv_find_drive(%struct.gv_softc*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.gv_sd* @gv_find_sd(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_post_event(%struct.gv_softc*, i32, %struct.gv_sd*, %struct.gv_drive*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
