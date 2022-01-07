; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b1.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPLAY_OFF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@scene_loaded = common dso_local global i8* null, align 8
@scene_input_ready = common dso_local global i8* null, align 8
@SCX_REG = common dso_local global i64 0, align 8
@SCY_REG = common dso_local global i64 0, align 8
@MAXWNDPOSX = common dso_local global i32 0, align 4
@WX_REG = common dso_local global i32 0, align 4
@MAXWNDPOSY = common dso_local global i32 0, align 4
@WY_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneInit_b1() #0 {
  %1 = load i32, i32* @DISPLAY_OFF, align 4
  %2 = load i8*, i8** @FALSE, align 8
  store i8* %2, i8** @scene_loaded, align 8
  %3 = load i8*, i8** @FALSE, align 8
  store i8* %3, i8** @scene_input_ready, align 8
  %4 = call i32 (...) @SpritesReset()
  %5 = call i32 (...) @UIInit()
  store i64 0, i64* @SCX_REG, align 8
  store i64 0, i64* @SCY_REG, align 8
  %6 = load i32, i32* @MAXWNDPOSX, align 4
  store i32 %6, i32* @WX_REG, align 4
  %7 = load i32, i32* @MAXWNDPOSY, align 4
  store i32 %7, i32* @WY_REG, align 4
  ret void
}

declare dso_local i32 @SpritesReset(...) #1

declare dso_local i32 @UIInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
