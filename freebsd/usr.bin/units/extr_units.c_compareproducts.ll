; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_compareproducts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_compareproducts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULLUNIT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**)* @compareproducts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compareproducts(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  br label %6

6:                                                ; preds = %67, %2
  %7 = load i8**, i8*** %4, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i1 [ true, %6 ], [ %13, %10 ]
  br i1 %15, label %16, label %68

16:                                               ; preds = %14
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** @NULLUNIT, align 8
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %69

26:                                               ; preds = %20, %16
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load i8**, i8*** %4, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** @NULLUNIT, align 8
  %34 = icmp ne i8* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %69

36:                                               ; preds = %30, %26
  %37 = load i8**, i8*** %4, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** @NULLUNIT, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8**, i8*** %4, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %4, align 8
  br label %67

44:                                               ; preds = %36
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** @NULLUNIT, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %51, i8*** %5, align 8
  br label %66

52:                                               ; preds = %44
  %53 = load i8**, i8*** %4, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %54, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %69

60:                                               ; preds = %52
  %61 = load i8**, i8*** %4, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %4, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %5, align 8
  br label %65

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %41
  br label %6

68:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %59, %35, %25
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
