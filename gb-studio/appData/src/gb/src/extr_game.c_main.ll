; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_game.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_game.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i32, %struct.TYPE_7__, %struct.TYPE_6__, i8*, i8*, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@LCDC_REG = common dso_local global i32 0, align 4
@VBL_IFLAG = common dso_local global i32 0, align 4
@LCD_IFLAG = common dso_local global i32 0, align 4
@STAT_REG = common dso_local global i32 0, align 4
@BGP_REG = common dso_local global i32 0, align 4
@OBP0_REG = common dso_local global i32 0, align 4
@MAXWNDPOSY = common dso_local global i64 0, align 8
@WY_REG = common dso_local global i64 0, align 8
@actors = common dso_local global %struct.TYPE_10__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@START_SCENE_X = common dso_local global i32 0, align 4
@map_next_pos = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@START_SCENE_Y = common dso_local global i32 0, align 4
@START_SCENE_DIR_X = common dso_local global i32 0, align 4
@map_next_dir = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@START_SCENE_DIR_Y = common dso_local global i32 0, align 4
@START_PLAYER_SPRITE = common dso_local global i32 0, align 4
@map_next_sprite = common dso_local global i32 0, align 4
@PLAYER_INPUT = common dso_local global i32 0, align 4
@START_PLAYER_MOVE_SPEED = common dso_local global i32 0, align 4
@START_PLAYER_ANIM_SPEED = common dso_local global i32 0, align 4
@START_SCENE_INDEX = common dso_local global i8* null, align 8
@scene_index = common dso_local global i8* null, align 8
@scene_next_index = common dso_local global i8* null, align 8
@DISPLAY_ON = common dso_local global i32 0, align 4
@SHOW_SPRITES = common dso_local global i32 0, align 4
@CGB_TYPE = common dso_local global i64 0, align 8
@_cpu = common dso_local global i64 0, align 8
@custom_bg_pal = common dso_local global i32 0, align 4
@custom_spr1_pal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 103, i32* @LCDC_REG, align 4
  %2 = load i32, i32* @VBL_IFLAG, align 4
  %3 = load i32, i32* @LCD_IFLAG, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @set_interrupts(i32 %4)
  store i32 69, i32* @STAT_REG, align 4
  store i32 228, i32* @BGP_REG, align 4
  store i32 210, i32* @OBP0_REG, align 4
  %6 = load i64, i64* @MAXWNDPOSY, align 8
  %7 = sub nsw i64 %6, 7
  store i64 %7, i64* @WY_REG, align 8
  %8 = load i64, i64* @MAXWNDPOSY, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* @WY_REG, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** @TRUE, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 7
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** @TRUE, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 6
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* @START_SCENE_X, align 4
  %22 = shl i32 %21, 3
  %23 = add nsw i32 %22, 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @map_next_pos, i32 0, i32 0), align 4
  %28 = load i32, i32* @START_SCENE_Y, align 4
  %29 = shl i32 %28, 3
  %30 = add nsw i32 %29, 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @map_next_pos, i32 0, i32 1), align 4
  %35 = load i32, i32* @START_SCENE_DIR_X, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_dir, i32 0, i32 1), align 4
  %40 = load i32, i32* @START_SCENE_DIR_Y, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_dir, i32 0, i32 0), align 4
  %45 = load i32, i32* @START_PLAYER_SPRITE, align 4
  store i32 %45, i32* @map_next_sprite, align 4
  %46 = load i32, i32* @PLAYER_INPUT, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = load i8*, i8** @TRUE, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* @START_PLAYER_MOVE_SPEED, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @START_PLAYER_ANIM_SPEED, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load i8*, i8** @START_SCENE_INDEX, align 8
  store i8* %62, i8** @scene_index, align 8
  %63 = load i8*, i8** @START_SCENE_INDEX, align 8
  store i8* %63, i8** @scene_next_index, align 8
  %64 = call i32 (...) @UIInit()
  %65 = call i32 (...) @FadeInit()
  %66 = load i32, i32* @DISPLAY_ON, align 4
  %67 = load i32, i32* @SHOW_SPRITES, align 4
  br label %68

68:                                               ; preds = %0, %68
  %69 = call i32 (...) @game_loop()
  br label %68
}

declare dso_local i32 @set_interrupts(i32) #1

declare dso_local i32 @UIInit(...) #1

declare dso_local i32 @FadeInit(...) #1

declare dso_local i32 @game_loop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
