; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/dscan/extr_dscan.c_bombs.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/dscan/extr_dscan.c_bombs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TT = common dso_local global i64 0, align 8
@tf = common dso_local global i32* null, align 8
@ty = common dso_local global i64* null, align 8
@MAX_TY = common dso_local global i64 0, align 8
@DEF_TX = common dso_local global i64 0, align 8
@tx = common dso_local global i64* null, align 8
@DEF_TY = common dso_local global i64 0, align 8
@DEF_TS = common dso_local global i64 0, align 8
@DEF_TC = common dso_local global i32 0, align 4
@foreCGB = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bombs() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %86, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @MAX_TT, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %89

6:                                                ; preds = %2
  %7 = load i32*, i32** @tf, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %85

12:                                               ; preds = %6
  %13 = load i64*, i64** @ty, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = load i64*, i64** @ty, align 8
  %19 = load i64, i64* %1, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_TY, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %12
  %25 = load i32*, i32** @tf, align 8
  %26 = load i64, i64* %1, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 0, i32* %27, align 4
  %28 = load i64, i64* %1, align 8
  %29 = mul i64 %28, 4
  %30 = load i64, i64* @DEF_TX, align 8
  %31 = add i64 %29, %30
  %32 = load i64*, i64** @tx, align 8
  %33 = load i64, i64* %1, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 %31, i64* %34, align 8
  %35 = load i64, i64* @DEF_TY, align 8
  %36 = load i64*, i64** @ty, align 8
  %37 = load i64, i64* %1, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 %35, i64* %38, align 8
  br label %48

39:                                               ; preds = %12
  %40 = load i32*, i32** @tf, align 8
  %41 = load i64, i64* %1, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 3, %43
  %45 = load i32*, i32** @tf, align 8
  %46 = load i64, i64* %1, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %24
  %49 = load i64, i64* %1, align 8
  %50 = load i64, i64* @DEF_TS, align 8
  %51 = add i64 %49, %50
  %52 = load i32*, i32** @tf, align 8
  %53 = load i64, i64* %1, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DEF_TC, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @set_sprite_tile(i64 %51, i32 %57)
  %59 = load i64, i64* %1, align 8
  %60 = load i64, i64* @DEF_TS, align 8
  %61 = add i64 %59, %60
  %62 = load i32*, i32** @foreCGB, align 8
  %63 = load i32*, i32** @tf, align 8
  %64 = load i64, i64* %1, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DEF_TC, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %62, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @set_sprite_attrb(i64 %61, i32 %71)
  %73 = load i64, i64* %1, align 8
  %74 = load i64, i64* @DEF_TS, align 8
  %75 = add i64 %73, %74
  %76 = load i64*, i64** @tx, align 8
  %77 = load i64, i64* %1, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** @ty, align 8
  %81 = load i64, i64* %1, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @move_sprite(i64 %75, i64 %79, i64 %83)
  br label %85

85:                                               ; preds = %48, %6
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %1, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %1, align 8
  br label %2

89:                                               ; preds = %2
  ret void
}

declare dso_local i32 @set_sprite_tile(i64, i32) #1

declare dso_local i32 @set_sprite_attrb(i64, i32) #1

declare dso_local i32 @move_sprite(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
