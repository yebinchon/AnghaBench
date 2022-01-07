; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneRenderActors_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneRenderActors_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_FRAME_9 = common dso_local global i64 0, align 8
@actors = common dso_local global i64* null, align 8
@scene_num_actors = common dso_local global i64 0, align 8
@ACTOR_SPRITE_OFFSET = common dso_local global i64 0, align 8
@SCX_REG = common dso_local global i64 0, align 8
@SCY_REG = common dso_local global i64 0, align 8
@win_pos_y = common dso_local global i64 0, align 8
@MENU_CLOSED_Y = common dso_local global i64 0, align 8
@win_pos_x = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneRenderActors_b() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = load i64, i64* @IS_FRAME_9, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %0
  %10 = load i64*, i64** @actors, align 8
  store i64* %10, i64** %6, align 8
  store i64 4, i64* %5, align 8
  store i64 0, i64* %1, align 8
  br label %11

11:                                               ; preds = %54, %9
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @scene_num_actors, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = load i64, i64* %1, align 8
  %17 = call i64 @MUL_2(i64 %16)
  %18 = load i64, i64* @ACTOR_SPRITE_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %2, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = call i64 @ACTOR_SPRITE(i64* %20)
  %22 = load i64*, i64** %6, align 8
  %23 = call i64 @ACTOR_FRAME(i64* %22)
  %24 = add nsw i64 %21, %23
  %25 = load i64*, i64** %6, align 8
  %26 = call i64 @ACTOR_FRAME_OFFSET(i64* %25)
  %27 = add nsw i64 %24, %26
  %28 = call i64 @MUL_4(i64 %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = call i64 @ACTOR_FLIP(i64* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %15
  %33 = load i64, i64* %2, align 8
  %34 = add nsw i64 %33, 1
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @set_sprite_tile(i64 %34, i64 %35)
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add nsw i64 %38, 2
  %40 = call i32 @set_sprite_tile(i64 %37, i64 %39)
  br label %50

41:                                               ; preds = %15
  %42 = load i64, i64* %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @set_sprite_tile(i64 %42, i64 %43)
  %45 = load i64, i64* %2, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i64, i64* %3, align 8
  %48 = add nsw i64 %47, 2
  %49 = call i32 @set_sprite_tile(i64 %46, i64 %48)
  br label %50

50:                                               ; preds = %41, %32
  %51 = load i64, i64* %5, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 %51
  store i64* %53, i64** %6, align 8
  br label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %1, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %1, align 8
  br label %11

57:                                               ; preds = %11
  br label %58

58:                                               ; preds = %57, %0
  %59 = load i64*, i64** @actors, align 8
  store i64* %59, i64** %6, align 8
  store i64 4, i64* %5, align 8
  store i64 0, i64* %1, align 8
  br label %60

60:                                               ; preds = %115, %58
  %61 = load i64, i64* %1, align 8
  %62 = load i64, i64* @scene_num_actors, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %118

64:                                               ; preds = %60
  %65 = load i64, i64* %1, align 8
  %66 = call i64 @MUL_2(i64 %65)
  %67 = load i64, i64* @ACTOR_SPRITE_OFFSET, align 8
  %68 = add nsw i64 %66, %67
  store i64 %68, i64* %2, align 8
  %69 = load i64*, i64** %6, align 8
  %70 = call i64 @ACTOR_X(i64* %69)
  %71 = load i64, i64* @SCX_REG, align 8
  %72 = sub nsw i64 %70, %71
  store i64 %72, i64* %3, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = call i64 @ACTOR_Y(i64* %73)
  %75 = load i64, i64* @SCY_REG, align 8
  %76 = sub nsw i64 %74, %75
  store i64 %76, i64* %4, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = call i64 @ACTOR_ENABLED(i64* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %64
  %81 = load i64, i64* @win_pos_y, align 8
  %82 = load i64, i64* @MENU_CLOSED_Y, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @win_pos_y, align 8
  %87 = add nsw i64 %86, 16
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i64, i64* %3, align 8
  %91 = load i64, i64* @win_pos_x, align 8
  %92 = add nsw i64 %91, 8
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %89, %84, %80
  %95 = load i64, i64* %2, align 8
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @move_sprite(i64 %95, i64 %96, i64 %97)
  %99 = load i64, i64* %2, align 8
  %100 = add nsw i64 %99, 1
  %101 = load i64, i64* %3, align 8
  %102 = add nsw i64 %101, 8
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @move_sprite(i64 %100, i64 %102, i64 %103)
  br label %111

105:                                              ; preds = %89, %64
  %106 = load i64, i64* %2, align 8
  %107 = call i32 @move_sprite(i64 %106, i64 0, i64 0)
  %108 = load i64, i64* %2, align 8
  %109 = add nsw i64 %108, 1
  %110 = call i32 @move_sprite(i64 %109, i64 0, i64 0)
  br label %111

111:                                              ; preds = %105, %94
  %112 = load i64, i64* %5, align 8
  %113 = load i64*, i64** %6, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 %112
  store i64* %114, i64** %6, align 8
  br label %115

115:                                              ; preds = %111
  %116 = load i64, i64* %1, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %1, align 8
  br label %60

118:                                              ; preds = %60
  ret void
}

declare dso_local i64 @MUL_2(i64) #1

declare dso_local i64 @MUL_4(i64) #1

declare dso_local i64 @ACTOR_SPRITE(i64*) #1

declare dso_local i64 @ACTOR_FRAME(i64*) #1

declare dso_local i64 @ACTOR_FRAME_OFFSET(i64*) #1

declare dso_local i64 @ACTOR_FLIP(i64*) #1

declare dso_local i32 @set_sprite_tile(i64, i64) #1

declare dso_local i64 @ACTOR_X(i64*) #1

declare dso_local i64 @ACTOR_Y(i64*) #1

declare dso_local i64 @ACTOR_ENABLED(i64*) #1

declare dso_local i32 @move_sprite(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
