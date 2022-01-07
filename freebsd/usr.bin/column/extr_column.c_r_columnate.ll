; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/column/extr_column.c_r_columnate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/column/extr_column.c_r_columnate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@termwidth = common dso_local global i32 0, align 4
@maxlength = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 115, i32 0], align 4
@list = common dso_local global i32* null, align 8
@TAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @r_columnate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_columnate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @termwidth, align 4
  %10 = load i32, i32* @maxlength, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @entries, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @entries, align 4
  %16 = load i32, i32* %6, align 4
  %17 = srem i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %0
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %77, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %23
  %28 = load i32, i32* @maxlength, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %1, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %72, %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  %35 = load i32*, i32** @list, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wprintf(i8* bitcast ([4 x i32]* @.str to i8*), i32 %39)
  %41 = load i32*, i32** @list, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @width(i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* @entries, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %34
  br label %75

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %65, %57
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @TAB, align 4
  %62 = call i32 @roundup(i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = call i32 @putwchar(i8 signext 9)
  %67 = load i32, i32* %3, align 4
  store i32 %67, i32* %2, align 4
  br label %58

68:                                               ; preds = %58
  %69 = load i32, i32* @maxlength, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %30

75:                                               ; preds = %56, %30
  %76 = call i32 @putwchar(i8 signext 10)
  br label %77

77:                                               ; preds = %75
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %23

80:                                               ; preds = %23
  ret void
}

declare dso_local i32 @wprintf(i8*, i32) #1

declare dso_local i64 @width(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @putwchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
