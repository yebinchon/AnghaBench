; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/dscan/extr_dscan.c_kirai.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/dscan/extr_dscan.c_kirai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_KT = common dso_local global i64 0, align 8
@kf = common dso_local global i32* null, align 8
@ky = common dso_local global i64* null, align 8
@kx = common dso_local global i32* null, align 8
@px = common dso_local global i32 0, align 4
@pf = common dso_local global i32 0, align 4
@DEF_KX = common dso_local global i32 0, align 4
@DEF_KY = common dso_local global i64 0, align 8
@MIN_KY = common dso_local global i64 0, align 8
@DEF_KS = common dso_local global i64 0, align 8
@DEF_KC = common dso_local global i32 0, align 4
@foreCGB = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kirai() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %127, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @MAX_KT, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %130

6:                                                ; preds = %2
  %7 = load i32*, i32** @kf, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %126

12:                                               ; preds = %6
  %13 = load i64*, i64** @ky, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load i32*, i32** @kf, align 8
  %19 = load i64, i64* %1, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 3
  br i1 %22, label %23, label %68

23:                                               ; preds = %12
  %24 = load i32*, i32** @kf, align 8
  %25 = load i64, i64* %1, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** @kx, align 8
  %30 = load i64, i64* %1, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @px, align 4
  %34 = sub nsw i32 %33, 5
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %23
  %37 = load i32*, i32** @kx, align 8
  %38 = load i64, i64* %1, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @px, align 4
  %42 = add nsw i32 %41, 12
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, i32* @pf, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 2, i32* @pf, align 4
  br label %48

48:                                               ; preds = %47, %44
  br label %49

49:                                               ; preds = %48, %36, %23
  %50 = load i32*, i32** @kf, align 8
  %51 = load i64, i64* %1, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 6
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i32*, i32** @kf, align 8
  %57 = load i64, i64* %1, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @DEF_KX, align 4
  %60 = load i32*, i32** @kx, align 8
  %61 = load i64, i64* %1, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* @DEF_KY, align 8
  %64 = load i64*, i64** @ky, align 8
  %65 = load i64, i64* %1, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %55, %49
  br label %89

68:                                               ; preds = %12
  %69 = load i64*, i64** @ky, align 8
  %70 = load i64, i64* %1, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MIN_KY, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32*, i32** @kf, align 8
  %77 = load i64, i64* %1, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 3, i32* %78, align 4
  br label %88

79:                                               ; preds = %68
  %80 = load i32*, i32** @kf, align 8
  %81 = load i64, i64* %1, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 3, %83
  %85 = load i32*, i32** @kf, align 8
  %86 = load i64, i64* %1, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %79, %75
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i64, i64* %1, align 8
  %91 = load i64, i64* @DEF_KS, align 8
  %92 = add i64 %90, %91
  %93 = load i32*, i32** @kf, align 8
  %94 = load i64, i64* %1, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @DEF_KC, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @set_sprite_tile(i64 %92, i32 %98)
  %100 = load i64, i64* %1, align 8
  %101 = load i64, i64* @DEF_KS, align 8
  %102 = add i64 %100, %101
  %103 = load i32*, i32** @foreCGB, align 8
  %104 = load i32*, i32** @kf, align 8
  %105 = load i64, i64* %1, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @DEF_KC, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %103, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @set_sprite_attrb(i64 %102, i32 %112)
  %114 = load i64, i64* %1, align 8
  %115 = load i64, i64* @DEF_KS, align 8
  %116 = add i64 %114, %115
  %117 = load i32*, i32** @kx, align 8
  %118 = load i64, i64* %1, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i64*, i64** @ky, align 8
  %122 = load i64, i64* %1, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @move_sprite(i64 %116, i32 %120, i64 %124)
  br label %126

126:                                              ; preds = %89, %6
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %1, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %1, align 8
  br label %2

130:                                              ; preds = %2
  ret void
}

declare dso_local i32 @set_sprite_tile(i64, i32) #1

declare dso_local i32 @set_sprite_attrb(i64, i32) #1

declare dso_local i32 @move_sprite(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
