; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/extr_rand.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/extr_rand.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Getting seed\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Push any key (1)\00", align 1
@DIV_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Push any key (2)\00", align 1
@accu = common dso_local global i32* null, align 8
@LTGREY = common dso_local global i32 0, align 4
@SOLID = common dso_local global i32 0, align 4
@accua = common dso_local global i32* null, align 8
@DKGREY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @waitpad(i32 255)
  %9 = call i32 (...) @waitpadup()
  %10 = load i32, i32* @DIV_REG, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @waitpad(i32 255)
  %13 = call i32 (...) @waitpadup()
  %14 = load i32, i32* @DIV_REG, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @initarand(i32 %18)
  br label %20

20:                                               ; preds = %62, %0
  %21 = call i32 (...) @rand()
  store i32 %21, i32* %1, align 4
  %22 = call i32 (...) @arand()
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp slt i32 %23, 80
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32*, i32** @accu, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 144, %33
  %35 = load i32, i32* @LTGREY, align 4
  %36 = load i32, i32* @SOLID, align 4
  %37 = call i32 @plot(i32 %32, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %25, %20
  %39 = load i32, i32* %2, align 4
  %40 = icmp slt i32 %39, 80
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32*, i32** @accua, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 80
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 144, %50
  %52 = load i32, i32* @DKGREY, align 4
  %53 = load i32, i32* @SOLID, align 4
  %54 = call i32 @plot(i32 %49, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %41, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 144
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 144
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i1 [ false, %56 ], [ %61, %59 ]
  br i1 %63, label %20, label %64

64:                                               ; preds = %62
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
