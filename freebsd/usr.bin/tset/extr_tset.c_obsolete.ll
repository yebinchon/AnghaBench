; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_tset.c_obsolete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_tset.c_obsolete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"-e^H\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-i^C\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-k^U\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obsolete(i8** %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  br label %3

3:                                                ; preds = %81, %1
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %84

7:                                                ; preds = %3
  %8 = load i8**, i8*** %2, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 45
  br i1 %14, label %60, label %15

15:                                               ; preds = %7
  %16 = load i8**, i8*** %2, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i8**, i8*** %2, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %60, label %28

28:                                               ; preds = %20, %15
  %29 = load i8**, i8*** %2, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 101
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = load i8**, i8*** %2, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 105
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i8**, i8*** %2, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 107
  br i1 %51, label %60, label %52

52:                                               ; preds = %44, %36, %28
  %53 = load i8**, i8*** %2, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52, %44, %20, %7
  br label %81

61:                                               ; preds = %52
  %62 = load i8**, i8*** %2, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  switch i32 %67, label %80 [
    i32 101, label %68
    i32 105, label %72
    i32 107, label %76
  ]

68:                                               ; preds = %61
  %69 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %70 = load i8**, i8*** %2, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  store i8* %69, i8** %71, align 8
  br label %80

72:                                               ; preds = %61
  %73 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i8**, i8*** %2, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  store i8* %73, i8** %75, align 8
  br label %80

76:                                               ; preds = %61
  %77 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i8**, i8*** %2, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %61, %76, %72, %68
  br label %81

81:                                               ; preds = %80, %60
  %82 = load i8**, i8*** %2, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %83, i8*** %2, align 8
  br label %3

84:                                               ; preds = %3
  ret void
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
