; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneSetEmote_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneSetEmote_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUBBLE_SPRITE_LEFT = common dso_local global i32 0, align 4
@bank_data_ptrs = common dso_local global i64* null, align 8
@EMOTES_SPRITE_BANK = common dso_local global i64 0, align 8
@EMOTES_SPRITE_BANK_OFFSET = common dso_local global i32 0, align 4
@emote_timer = common dso_local global i32 0, align 4
@emote_actor = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneSetEmote_b(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @BUBBLE_SPRITE_LEFT, align 4
  %7 = call i32 @hide_sprite_pair(i32 %6)
  %8 = load i64*, i64** @bank_data_ptrs, align 8
  %9 = load i64, i64* @EMOTES_SPRITE_BANK, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @EMOTES_SPRITE_BANK_OFFSET, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* @EMOTES_SPRITE_BANK, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i64, i64* %4, align 8
  %18 = trunc i64 %17 to i32
  %19 = mul nsw i32 %18, 64
  %20 = add nsw i32 %16, %19
  %21 = call i32 @SetBankedSpriteData(i64 %15, i32 124, i32 4, i32 %20)
  %22 = load i32, i32* @BUBBLE_SPRITE_LEFT, align 4
  %23 = call i32 @set_sprite_tile_pair(i32 %22, i32 124, i32 126)
  store i32 1, i32* @emote_timer, align 4
  %24 = load i64, i64* %3, align 8
  store i64 %24, i64* @emote_actor, align 8
  ret void
}

declare dso_local i32 @hide_sprite_pair(i32) #1

declare dso_local i32 @SetBankedSpriteData(i64, i32, i32, i32) #1

declare dso_local i32 @set_sprite_tile_pair(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
