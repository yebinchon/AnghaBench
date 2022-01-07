; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_summary_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_summary_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8**)* @summary_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @summary_format(i8* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [6 x i8], align 1
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %78, %3
  %13 = load i8**, i8*** %6, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %6, align 8
  %15 = load i8*, i8** %13, align 8
  store i8* %15, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %79

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %18, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %17
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 75
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i8* @format_k(i32 %31)
  %33 = call i8* @stpcpy(i8* %30, i8* %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i8* @stpcpy(i8* %34, i8* %36)
  store i8* %37, i8** %7, align 8
  br label %69

38:                                               ; preds = %23
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 58
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 -2
  %48 = load i32, i32* %47, align 4
  %49 = sitofp i32 %48 to float
  %50 = load i32, i32* %8, align 4
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %49, %51
  %53 = call i32 @snprintf(i8* %45, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), float %52)
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %56 = call i8* @stpcpy(i8* %54, i8* %55)
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i8* @stpcpy(i8* %57, i8* %58)
  store i8* %59, i8** %7, align 8
  br label %68

60:                                               ; preds = %38
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i8* @itoa(i32 %62)
  %64 = call i8* @stpcpy(i8* %61, i8* %63)
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i8* @stpcpy(i8* %65, i8* %66)
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %60, %44
  br label %69

69:                                               ; preds = %68, %29
  br label %78

70:                                               ; preds = %17
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i8* @stpcpy(i8* %74, i8* %75)
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %73, %70
  br label %78

78:                                               ; preds = %77, %69
  br label %12

79:                                               ; preds = %12
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 -2
  store i8* %81, i8** %7, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = icmp uge i8* %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 44
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i8*, i8** %7, align 8
  store i8 0, i8* %98, align 1
  br label %99

99:                                               ; preds = %97, %91, %85, %79
  ret void
}

declare dso_local i8* @stpcpy(i8*, i8*) #1

declare dso_local i8* @format_k(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, float) #1

declare dso_local i8* @itoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
