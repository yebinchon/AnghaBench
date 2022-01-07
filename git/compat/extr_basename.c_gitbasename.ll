; ModuleID = '/home/carl/AnghaBench/git/compat/extr_basename.c_gitbasename.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_basename.c_gitbasename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gitbasename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @skip_dos_drive_prefix(i8** %3)
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %9
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %66

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %61, %17
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @is_dir_sep(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %61

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %33, %29
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @is_dir_sep(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %30, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i8*, i8** %3, align 8
  store i8* %43, i8** %4, align 8
  br label %60

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %3, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %3, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @is_dir_sep(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ false, %45 ], [ %54, %50 ]
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = load i8*, i8** %3, align 8
  store i8 0, i8* %58, align 1
  br label %45

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60, %28
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %3, align 8
  br label %19

64:                                               ; preds = %19
  %65 = load i8*, i8** %4, align 8
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %64, %16
  %67 = load i8*, i8** %2, align 8
  ret i8* %67
}

declare dso_local i32 @skip_dos_drive_prefix(i8**) #1

declare dso_local i64 @is_dir_sep(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
