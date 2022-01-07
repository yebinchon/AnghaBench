; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneUpdateCamera_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneUpdateCamera_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@camera_settings = common dso_local global i32 0, align 4
@CAMERA_LOCK_FLAG = common dso_local global i32 0, align 4
@actors = common dso_local global %struct.TYPE_6__* null, align 8
@SCREEN_WIDTH_HALF = common dso_local global i8* null, align 8
@scene_width = common dso_local global i32 0, align 4
@camera_dest = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SCREEN_HEIGHT_HALF = common dso_local global i8* null, align 8
@scene_height = common dso_local global i32 0, align 4
@SCX_REG = common dso_local global i64 0, align 8
@SCY_REG = common dso_local global i64 0, align 8
@camera_moved = common dso_local global i32 0, align 4
@CAMERA_TRANSITION_FLAG = common dso_local global i32 0, align 4
@time = common dso_local global i32 0, align 4
@camera_speed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneUpdateCamera_b() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @camera_settings, align 4
  %4 = load i32, i32* @CAMERA_LOCK_FLAG, align 4
  %5 = and i32 %3, %4
  %6 = load i32, i32* @CAMERA_LOCK_FLAG, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** @SCREEN_WIDTH_HALF, align 8
  %15 = load i32, i32* @scene_width, align 4
  %16 = call i8* @MUL_8(i32 %15)
  %17 = load i8*, i8** @SCREEN_WIDTH_HALF, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = inttoptr i64 %20 to i8*
  %22 = call i8* @ClampUBYTE(i32 %13, i8* %14, i8* %21)
  store i8* %22, i8** %1, align 8
  %23 = load i8*, i8** %1, align 8
  %24 = load i8*, i8** @SCREEN_WIDTH_HALF, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @camera_dest, i32 0, i32 0), align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** @SCREEN_HEIGHT_HALF, align 8
  %34 = load i32, i32* @scene_height, align 4
  %35 = call i8* @MUL_8(i32 %34)
  %36 = load i8*, i8** @SCREEN_HEIGHT_HALF, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = inttoptr i64 %39 to i8*
  %41 = call i8* @ClampUBYTE(i32 %32, i8* %33, i8* %40)
  store i8* %41, i8** %2, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = load i8*, i8** @SCREEN_HEIGHT_HALF, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @camera_dest, i32 0, i32 1), align 8
  br label %47

47:                                               ; preds = %8, %0
  %48 = load i64, i64* @SCX_REG, align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @camera_dest, i32 0, i32 0), align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* @SCY_REG, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @camera_dest, i32 0, i32 1), align 8
  %54 = icmp ne i64 %52, %53
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ true, %47 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* @camera_moved, align 4
  %58 = load i32, i32* @camera_moved, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %107

60:                                               ; preds = %55
  %61 = load i32, i32* @camera_settings, align 4
  %62 = load i32, i32* @CAMERA_TRANSITION_FLAG, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @CAMERA_TRANSITION_FLAG, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %60
  %67 = load i32, i32* @time, align 4
  %68 = load i32, i32* @camera_speed, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %66
  %72 = load i64, i64* @SCX_REG, align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @camera_dest, i32 0, i32 0), align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, i64* @SCX_REG, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* @SCX_REG, align 8
  br label %86

78:                                               ; preds = %71
  %79 = load i64, i64* @SCX_REG, align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @camera_dest, i32 0, i32 0), align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i64, i64* @SCX_REG, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* @SCX_REG, align 8
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85, %75
  %87 = load i64, i64* @SCY_REG, align 8
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @camera_dest, i32 0, i32 1), align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i64, i64* @SCY_REG, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* @SCY_REG, align 8
  br label %101

93:                                               ; preds = %86
  %94 = load i64, i64* @SCY_REG, align 8
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @camera_dest, i32 0, i32 1), align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i64, i64* @SCY_REG, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* @SCY_REG, align 8
  br label %100

100:                                              ; preds = %97, %93
  br label %101

101:                                              ; preds = %100, %90
  br label %102

102:                                              ; preds = %101, %66
  br label %106

103:                                              ; preds = %60
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @camera_dest, i32 0, i32 0), align 8
  store i64 %104, i64* @SCX_REG, align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @camera_dest, i32 0, i32 1), align 8
  store i64 %105, i64* @SCY_REG, align 8
  br label %106

106:                                              ; preds = %103, %102
  br label %107

107:                                              ; preds = %106, %55
  ret void
}

declare dso_local i8* @ClampUBYTE(i32, i8*, i8*) #1

declare dso_local i8* @MUL_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
