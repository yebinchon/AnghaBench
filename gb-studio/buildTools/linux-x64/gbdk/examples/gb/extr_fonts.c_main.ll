; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_fonts.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_fonts.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@font_ibm = common dso_local global i32 0, align 4
@font_italic = common dso_local global i32 0, align 4
@WHITE = common dso_local global i32 0, align 4
@DKGREY = common dso_local global i32 0, align 4
@SOLID = common dso_local global i32 0, align 4
@font_min = common dso_local global i32 0, align 4
@M_NO_SCROLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Font demo.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"IBM Font #!?123\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"In italics, line %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Minimal 36 tile font\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\0ADone!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @font_init()
  %6 = load i32, i32* @font_ibm, align 4
  %7 = call i32 @font_load(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @font_italic, align 4
  %9 = call i32 @font_load(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @WHITE, align 4
  %11 = load i32, i32* @DKGREY, align 4
  %12 = load i32, i32* @SOLID, align 4
  %13 = call i32 @color(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @font_min, align 4
  %15 = call i32 @font_load(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = call i32 (...) @get_mode()
  %17 = load i32, i32* @M_NO_SCROLL, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @mode(i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @font_set(i32 %20)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @font_set(i32 %24)
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %32, %0
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 5
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %26

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @font_set(i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @font_set(i32 %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @font_init(...) #1

declare dso_local i32 @font_load(i32) #1

declare dso_local i32 @color(i32, i32, i32) #1

declare dso_local i32 @mode(i32) #1

declare dso_local i32 @get_mode(...) #1

declare dso_local i32 @font_set(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
