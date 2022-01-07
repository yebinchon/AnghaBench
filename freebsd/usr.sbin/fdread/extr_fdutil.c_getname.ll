; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdutil.c_getname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdutil.c_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"unknown drive type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"360K\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"5.25\22 double-density\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1.2M\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"5.25\22 high-density\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"720K\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"3.5\22 double-density\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"1.44M\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"3.5\22 high-density\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"2.88M\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"3.5\22 extra-density\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getname(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %8 [
    i32 129, label %11
    i32 132, label %14
    i32 128, label %17
    i32 131, label %20
    i32 130, label %23
  ]

8:                                                ; preds = %3
  %9 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %26

11:                                               ; preds = %3
  %12 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %13 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %26

14:                                               ; preds = %3
  %15 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  %16 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %26

17:                                               ; preds = %3
  %18 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %18, align 8
  %19 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  br label %26

20:                                               ; preds = %3
  %21 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %21, align 8
  %22 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8** %22, align 8
  br label %26

23:                                               ; preds = %3
  %24 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %24, align 8
  %25 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %25, align 8
  br label %26

26:                                               ; preds = %23, %20, %17, %14, %11, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
