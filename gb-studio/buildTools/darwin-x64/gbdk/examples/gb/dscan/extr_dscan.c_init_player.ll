; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/dscan/extr_dscan.c_init_player.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/dscan/extr_dscan.c_init_player.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pf = common dso_local global i64 0, align 8
@DEF_PX = common dso_local global i64 0, align 8
@px = common dso_local global i64 0, align 8
@foreCGB = common dso_local global i32* null, align 8
@DEF_PY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_player() #0 {
  store i64 0, i64* @pf, align 8
  %1 = load i64, i64* @DEF_PX, align 8
  store i64 %1, i64* @px, align 8
  %2 = call i32 @set_sprite_tile(i32 0, i32 0)
  %3 = load i32*, i32** @foreCGB, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @set_sprite_attrb(i32 0, i32 %5)
  %7 = load i64, i64* @px, align 8
  %8 = load i32, i32* @DEF_PY, align 4
  %9 = call i32 @move_sprite(i32 0, i64 %7, i32 %8)
  %10 = call i32 @set_sprite_tile(i32 1, i32 1)
  %11 = load i32*, i32** @foreCGB, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_sprite_attrb(i32 1, i32 %13)
  %15 = load i64, i64* @px, align 8
  %16 = add nsw i64 %15, 8
  %17 = load i32, i32* @DEF_PY, align 4
  %18 = call i32 @move_sprite(i32 1, i64 %16, i32 %17)
  ret void
}

declare dso_local i32 @set_sprite_tile(i32, i32) #1

declare dso_local i32 @set_sprite_attrb(i32, i32) #1

declare dso_local i32 @move_sprite(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
