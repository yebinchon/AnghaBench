; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/dscan/extr_dscan.c_init_screen.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/dscan/extr_dscan.c_init_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_cpu = common dso_local global i64 0, align 8
@CGB_TYPE = common dso_local global i64 0, align 8
@bkg_p = common dso_local global i32* null, align 8
@obj_p = common dso_local global i32* null, align 8
@bkg_c = common dso_local global i32 0, align 4
@bkg_m = common dso_local global i32 0, align 4
@pw = common dso_local global i32 0, align 4
@bkg = common dso_local global i32 0, align 4
@msg_1up = common dso_local global i32 0, align 4
@msg_lv = common dso_local global i32 0, align 4
@SHOW_BKG = common dso_local global i32 0, align 4
@SPRITES_8x8 = common dso_local global i32 0, align 4
@fore = common dso_local global i32 0, align 4
@SHOW_SPRITES = common dso_local global i32 0, align 4
@DEF_SP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_screen() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @_cpu, align 8
  %3 = load i64, i64* @CGB_TYPE, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %58

5:                                                ; preds = %0
  %6 = load i32*, i32** @bkg_p, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = call i32 @set_bkg_palette(i32 0, i32 1, i32* %7)
  %9 = load i32*, i32** @bkg_p, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 4
  %11 = call i32 @set_bkg_palette(i32 1, i32 1, i32* %10)
  %12 = load i32*, i32** @bkg_p, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 8
  %14 = call i32 @set_bkg_palette(i32 2, i32 1, i32* %13)
  %15 = load i32*, i32** @bkg_p, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 12
  %17 = call i32 @set_bkg_palette(i32 3, i32 1, i32* %16)
  %18 = load i32*, i32** @bkg_p, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 16
  %20 = call i32 @set_bkg_palette(i32 4, i32 1, i32* %19)
  %21 = load i32*, i32** @bkg_p, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 20
  %23 = call i32 @set_bkg_palette(i32 5, i32 1, i32* %22)
  %24 = load i32*, i32** @bkg_p, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 24
  %26 = call i32 @set_bkg_palette(i32 6, i32 1, i32* %25)
  %27 = load i32*, i32** @bkg_p, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 28
  %29 = call i32 @set_bkg_palette(i32 7, i32 1, i32* %28)
  %30 = load i32*, i32** @obj_p, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = call i32 @set_sprite_palette(i32 0, i32 1, i32* %31)
  %33 = load i32*, i32** @obj_p, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = call i32 @set_sprite_palette(i32 1, i32 1, i32* %34)
  %36 = load i32*, i32** @obj_p, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  %38 = call i32 @set_sprite_palette(i32 2, i32 1, i32* %37)
  %39 = load i32*, i32** @obj_p, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 12
  %41 = call i32 @set_sprite_palette(i32 3, i32 1, i32* %40)
  %42 = load i32*, i32** @obj_p, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 16
  %44 = call i32 @set_sprite_palette(i32 4, i32 1, i32* %43)
  %45 = load i32*, i32** @obj_p, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 20
  %47 = call i32 @set_sprite_palette(i32 5, i32 1, i32* %46)
  %48 = load i32*, i32** @obj_p, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 24
  %50 = call i32 @set_sprite_palette(i32 6, i32 1, i32* %49)
  %51 = load i32*, i32** @obj_p, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 28
  %53 = call i32 @set_sprite_palette(i32 7, i32 1, i32* %52)
  %54 = load i32, i32* @bkg_c, align 4
  %55 = call i32 @set_bkg_attr(i32 0, i32 0, i32 20, i32 18, i32 %54)
  %56 = load i32, i32* @bkg_c, align 4
  %57 = call i32 @set_bkg_tiles(i32 0, i32 0, i32 20, i32 18, i32 %56)
  br label %61

58:                                               ; preds = %0
  %59 = load i32, i32* @bkg_m, align 4
  %60 = call i32 @set_bkg_tiles(i32 0, i32 0, i32 20, i32 18, i32 %59)
  br label %61

61:                                               ; preds = %58, %5
  store i32 50, i32* @pw, align 4
  %62 = load i32, i32* @bkg, align 4
  %63 = call i32 @set_bkg_data(i32 0, i32 96, i32 %62)
  %64 = load i32, i32* @msg_1up, align 4
  %65 = call i32 @set_bkg_tiles(i32 0, i32 0, i32 3, i32 1, i32 %64)
  %66 = load i32, i32* @msg_lv, align 4
  %67 = call i32 @set_bkg_tiles(i32 16, i32 0, i32 2, i32 1, i32 %66)
  %68 = load i32, i32* @SHOW_BKG, align 4
  %69 = load i32, i32* @SPRITES_8x8, align 4
  %70 = load i32, i32* @fore, align 4
  %71 = call i32 @set_sprite_data(i32 0, i32 128, i32 %70)
  %72 = load i32, i32* @SHOW_SPRITES, align 4
  store i32 0, i32* %1, align 4
  br label %73

73:                                               ; preds = %82, %61
  %74 = load i32, i32* %1, align 4
  %75 = icmp slt i32 %74, 40
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* @DEF_SP, align 4
  %79 = call i32 @set_sprite_tile(i32 %77, i32 %78)
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @move_sprite(i32 %80, i32 0, i32 0)
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  br label %73

85:                                               ; preds = %73
  ret void
}

declare dso_local i32 @set_bkg_palette(i32, i32, i32*) #1

declare dso_local i32 @set_sprite_palette(i32, i32, i32*) #1

declare dso_local i32 @set_bkg_attr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bkg_tiles(i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bkg_data(i32, i32, i32) #1

declare dso_local i32 @set_sprite_data(i32, i32, i32) #1

declare dso_local i32 @set_sprite_tile(i32, i32) #1

declare dso_local i32 @move_sprite(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
