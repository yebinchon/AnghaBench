; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_rand.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_rand.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@accu = common dso_local global i32* null, align 8
@accua = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"Getting seed\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Push any key (1)\00", align 1
@DIV_REG = common dso_local global i32 0, align 4
@seed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Push any key (2)\00", align 1
@LTGREY = common dso_local global i32 0, align 4
@SOLID = common dso_local global i32 0, align 4
@DKGREY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %17, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 80
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i32*, i32** @accu, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** @accua, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %5

20:                                               ; preds = %5
  %21 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @waitpad(i32 255)
  %24 = call i32 (...) @waitpadup()
  %25 = load i32, i32* @DIV_REG, align 4
  store i32 %25, i32* @seed, align 4
  %26 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @waitpad(i32 255)
  %28 = call i32 (...) @waitpadup()
  %29 = load i32, i32* @DIV_REG, align 4
  %30 = shl i32 %29, 8
  %31 = load i32, i32* @seed, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @seed, align 4
  %33 = load i32, i32* @seed, align 4
  %34 = call i32 @initarand(i32 %33)
  br label %35

35:                                               ; preds = %77, %20
  %36 = call i32 (...) @rand()
  store i32 %36, i32* %1, align 4
  %37 = call i32 (...) @arand()
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %1, align 4
  %39 = icmp slt i32 %38, 80
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32*, i32** @accu, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 144, %48
  %50 = load i32, i32* @LTGREY, align 4
  %51 = load i32, i32* @SOLID, align 4
  %52 = call i32 @plot(i32 %47, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %40, %35
  %54 = load i32, i32* %2, align 4
  %55 = icmp slt i32 %54, 80
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i32*, i32** @accua, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 80
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 144, %65
  %67 = load i32, i32* @DKGREY, align 4
  %68 = load i32, i32* @SOLID, align 4
  %69 = call i32 @plot(i32 %64, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %56, %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 144
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 144
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ false, %71 ], [ %76, %74 ]
  br i1 %78, label %35, label %79

79:                                               ; preds = %77
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @waitpad(i32) #1

declare dso_local i32 @waitpadup(...) #1

declare dso_local i32 @initarand(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @arand(...) #1

declare dso_local i32 @plot(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
