; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/dscan/extr_dscan.c_init_enemy.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/dscan/extr_dscan.c_init_enemy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ET = common dso_local global i64 0, align 8
@ef = common dso_local global i64* null, align 8
@ex = common dso_local global i64* null, align 8
@ey = common dso_local global i64* null, align 8
@DEF_ES0 = common dso_local global i64 0, align 8
@DEF_SP = common dso_local global i32 0, align 4
@DEF_ES1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_enemy() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %54, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @MAX_ET, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %57

6:                                                ; preds = %2
  %7 = load i64*, i64** @ef, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** @ex, align 8
  %11 = load i64, i64* %1, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 0, i64* %12, align 8
  %13 = load i64*, i64** @ey, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* %1, align 8
  %17 = mul i64 %16, 2
  %18 = load i64, i64* @DEF_ES0, align 8
  %19 = add i64 %17, %18
  %20 = load i32, i32* @DEF_SP, align 4
  %21 = call i32 @set_sprite_tile(i64 %19, i32 %20)
  %22 = load i64, i64* %1, align 8
  %23 = mul i64 %22, 2
  %24 = load i64, i64* @DEF_ES1, align 8
  %25 = add i64 %23, %24
  %26 = load i32, i32* @DEF_SP, align 4
  %27 = call i32 @set_sprite_tile(i64 %25, i32 %26)
  %28 = load i64, i64* %1, align 8
  %29 = mul i64 %28, 2
  %30 = load i64, i64* @DEF_ES0, align 8
  %31 = add i64 %29, %30
  %32 = load i64*, i64** @ex, align 8
  %33 = load i64, i64* %1, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** @ey, align 8
  %37 = load i64, i64* %1, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @move_sprite(i64 %31, i64 %35, i64 %39)
  %41 = load i64, i64* %1, align 8
  %42 = mul i64 %41, 2
  %43 = load i64, i64* @DEF_ES1, align 8
  %44 = add i64 %42, %43
  %45 = load i64*, i64** @ex, align 8
  %46 = load i64, i64* %1, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** @ey, align 8
  %50 = load i64, i64* %1, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @move_sprite(i64 %44, i64 %48, i64 %52)
  br label %54

54:                                               ; preds = %6
  %55 = load i64, i64* %1, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %1, align 8
  br label %2

57:                                               ; preds = %2
  ret void
}

declare dso_local i32 @set_sprite_tile(i64, i32) #1

declare dso_local i32 @move_sprite(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
