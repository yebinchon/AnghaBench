; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b8.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@collision_tiles_len = common dso_local global i64 0, align 8
@col_bank = common dso_local global i32 0, align 4
@scene_load_col_ptr = common dso_local global i32 0, align 4
@scene_col_tiles = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneInit_b8() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %15, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @collision_tiles_len, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = load i32, i32* @col_bank, align 4
  %8 = load i32, i32* @scene_load_col_ptr, align 4
  %9 = call i32 @ReadBankedUBYTE(i32 %7, i32 %8)
  %10 = load i32*, i32** @scene_col_tiles, align 8
  %11 = load i64, i64* %1, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @scene_load_col_ptr, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @scene_load_col_ptr, align 4
  br label %15

15:                                               ; preds = %6
  %16 = load i64, i64* %1, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %2

18:                                               ; preds = %2
  ret void
}

declare dso_local i32 @ReadBankedUBYTE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
