; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/dscan/extr_dscan.c_init_tama.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/dscan/extr_dscan.c_init_tama.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TT = common dso_local global i64 0, align 8
@tf = common dso_local global i64* null, align 8
@DEF_TX = common dso_local global i64 0, align 8
@tx = common dso_local global i64* null, align 8
@DEF_TY = common dso_local global i32 0, align 4
@ty = common dso_local global i32* null, align 8
@DEF_TS = common dso_local global i64 0, align 8
@DEF_TC = common dso_local global i64 0, align 8
@foreCGB = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_tama() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %56, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @MAX_TT, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %59

6:                                                ; preds = %2
  %7 = load i64*, i64** @tf, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* %1, align 8
  %11 = mul i64 %10, 4
  %12 = load i64, i64* @DEF_TX, align 8
  %13 = add i64 %11, %12
  %14 = load i64*, i64** @tx, align 8
  %15 = load i64, i64* %1, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 %13, i64* %16, align 8
  %17 = load i32, i32* @DEF_TY, align 4
  %18 = load i32*, i32** @ty, align 8
  %19 = load i64, i64* %1, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @DEF_TS, align 8
  %23 = add i64 %21, %22
  %24 = load i64*, i64** @tf, align 8
  %25 = load i64, i64* %1, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DEF_TC, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @set_sprite_tile(i64 %23, i64 %29)
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @DEF_TS, align 8
  %33 = add i64 %31, %32
  %34 = load i32*, i32** @foreCGB, align 8
  %35 = load i64*, i64** @tf, align 8
  %36 = load i64, i64* %1, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DEF_TC, align 8
  %40 = add i64 %38, %39
  %41 = getelementptr inbounds i32, i32* %34, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_sprite_attrb(i64 %33, i32 %42)
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @DEF_TS, align 8
  %46 = add i64 %44, %45
  %47 = load i64*, i64** @tx, align 8
  %48 = load i64, i64* %1, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i32*, i32** @ty, align 8
  %52 = load i64, i64* %1, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @move_sprite(i64 %46, i64 %50, i32 %54)
  br label %56

56:                                               ; preds = %6
  %57 = load i64, i64* %1, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %1, align 8
  br label %2

59:                                               ; preds = %2
  ret void
}

declare dso_local i32 @set_sprite_tile(i64, i64) #1

declare dso_local i32 @set_sprite_attrb(i64, i32) #1

declare dso_local i32 @move_sprite(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
