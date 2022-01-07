; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_hints.c_resource_unset_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_hints.c_resource_unset_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hint.\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resource_unset_value(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @resource_find(i32* %12, i32* null, i8* %14, i32* %6, i8* %15, i32* null, i8** %9, i32* null, i32* null, i32* null, i32* null, i8** %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %46

21:                                               ; preds = %3
  %22 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %9, align 8
  %24 = sext i32 %22 to i64
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sub nsw i64 %31, 1
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ugt i64 %33, 127
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %21
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @memcpy(i8* %38, i8* %39, i64 %40)
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %45 = call i32 @kern_unsetenv(i8* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %37, %35, %19
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @resource_find(i32*, i32*, i8*, i32*, i8*, i32*, i8**, i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kern_unsetenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
