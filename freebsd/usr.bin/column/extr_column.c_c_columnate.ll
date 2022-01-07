; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/column/extr_column.c_c_columnate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/column/extr_column.c_c_columnate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@termwidth = common dso_local global i32 0, align 4
@maxlength = common dso_local global i32 0, align 4
@list = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 115, i32 0], align 4
@entries = common dso_local global i32 0, align 4
@TAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @c_columnate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_columnate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = load i32, i32* @termwidth, align 4
  %8 = load i32, i32* @maxlength, align 4
  %9 = sdiv i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @maxlength, align 4
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  %11 = load i32**, i32*** @list, align 8
  store i32** %11, i32*** %6, align 8
  br label %12

12:                                               ; preds = %51, %0
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @wprintf(i8* bitcast ([4 x i32]* @.str to i8*), i32* %14)
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @width(i32* %17)
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @entries, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* @entries, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %12
  br label %54

27:                                               ; preds = %12
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  %33 = load i32, i32* @maxlength, align 4
  store i32 %33, i32* %4, align 4
  %34 = call i32 @putwchar(i8 signext 10)
  br label %50

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %43, %35
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* @TAB, align 4
  %40 = call i32 @roundup(i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = call i32 @putwchar(i8 signext 9)
  %45 = load i32, i32* %3, align 4
  store i32 %45, i32* %1, align 4
  br label %36

46:                                               ; preds = %36
  %47 = load i32, i32* @maxlength, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %32
  br label %51

51:                                               ; preds = %50
  %52 = load i32**, i32*** %6, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i32 1
  store i32** %53, i32*** %6, align 8
  br label %12

54:                                               ; preds = %26
  %55 = load i32, i32* %1, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @putwchar(i8 signext 10)
  br label %59

59:                                               ; preds = %57, %54
  ret void
}

declare dso_local i32 @wprintf(i8*, i32*) #1

declare dso_local i64 @width(i32*) #1

declare dso_local i32 @putwchar(i8 signext) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
