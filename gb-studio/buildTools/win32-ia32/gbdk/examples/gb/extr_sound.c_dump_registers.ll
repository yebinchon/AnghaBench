; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_sound.c_dump_registers.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_sound.c_dump_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_X = common dso_local global i64 0, align 8
@TITLE_Y = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Register Dump\00", align 1
@FIRST_Y = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"0xFF\00", align 1
@UNSIGNED = common dso_local global i32 0, align 4
@VAL_X = common dso_local global i64 0, align 8
@soundReg = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_registers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @cls()
  %5 = load i64, i64* @FIRST_X, align 8
  %6 = load i64, i64* @TITLE_Y, align 8
  %7 = call i32 @gotoxy(i64 %5, i64 %6)
  %8 = call i32 @print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %86, %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 22
  br i1 %11, label %12, label %91

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 15
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %3, align 4
  %23 = srem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i64, i64* @FIRST_X, align 8
  %27 = load i64, i64* @FIRST_Y, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @gotoxy(i64 %26, i64 %31)
  %33 = call i32 @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %44

34:                                               ; preds = %21
  %35 = load i64, i64* @FIRST_X, align 8
  %36 = add nsw i64 %35, 6
  %37 = load i64, i64* @FIRST_Y, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = call i32 @gotoxy(i64 %36, i64 %41)
  %43 = call i32 @putchar(i8 signext 45)
  br label %44

44:                                               ; preds = %34, %25
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 16
  %47 = load i32, i32* @UNSIGNED, align 4
  %48 = call i32 @printn(i32 %46, i32 16, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = srem i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load i64, i64* @VAL_X, align 8
  %54 = load i64, i64* @FIRST_Y, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sdiv i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = call i32 @gotoxy(i64 %53, i64 %58)
  br label %70

60:                                               ; preds = %44
  %61 = load i64, i64* @VAL_X, align 8
  %62 = add nsw i64 %61, 2
  %63 = load i64, i64* @FIRST_Y, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sdiv i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %63, %66
  %68 = call i32 @gotoxy(i64 %62, i64 %67)
  %69 = call i32 @putchar(i8 signext 45)
  br label %70

70:                                               ; preds = %60, %52
  %71 = load i64, i64* @soundReg, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* %1, align 4
  %78 = and i32 %77, 240
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %70
  %81 = call i32 @putchar(i8 signext 48)
  br label %82

82:                                               ; preds = %80, %70
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @UNSIGNED, align 4
  %85 = call i32 @printn(i32 %83, i32 16, i32 %84)
  br label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %2, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %2, align 4
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %9

91:                                               ; preds = %9
  ret void
}

declare dso_local i32 @cls(...) #1

declare dso_local i32 @gotoxy(i64, i64) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printn(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
