; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/dscan/extr_dscan.c_init_kirai.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/dscan/extr_dscan.c_init_kirai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_KT = common dso_local global i64 0, align 8
@kf = common dso_local global i64* null, align 8
@DEF_KX = common dso_local global i32 0, align 4
@kx = common dso_local global i32* null, align 8
@DEF_KY = common dso_local global i32 0, align 4
@ky = common dso_local global i32* null, align 8
@DEF_KS = common dso_local global i64 0, align 8
@DEF_SP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_kirai() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %35, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @MAX_KT, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = load i64*, i64** @kf, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @DEF_KX, align 4
  %11 = load i32*, i32** @kx, align 8
  %12 = load i64, i64* %1, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @DEF_KY, align 4
  %15 = load i32*, i32** @ky, align 8
  %16 = load i64, i64* %1, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %14, i32* %17, align 4
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @DEF_KS, align 8
  %20 = add i64 %18, %19
  %21 = load i32, i32* @DEF_SP, align 4
  %22 = call i32 @set_sprite_tile(i64 %20, i32 %21)
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @DEF_KS, align 8
  %25 = add i64 %23, %24
  %26 = load i32*, i32** @kx, align 8
  %27 = load i64, i64* %1, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @ky, align 8
  %31 = load i64, i64* %1, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @move_sprite(i64 %25, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %6
  %36 = load i64, i64* %1, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %1, align 8
  br label %2

38:                                               ; preds = %2
  ret void
}

declare dso_local i32 @set_sprite_tile(i64, i32) #1

declare dso_local i32 @move_sprite(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
