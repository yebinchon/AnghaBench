; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_main.c_setup_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_main.c_setup_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"/tmp/priv.XXXXXXXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"test %s: mkstemp\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"test %s: fchown(%s, %d, %d)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"test %s: chmod(%s, 0%o)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_file(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @strcpy(i8* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @mkstemp(i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i32, i8*, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @fchown(i32 %22, i32 %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i32, i8*, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %28, i8* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @fchmod(i32 %34, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i8*, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %39, i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @close(i32 %44)
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i64 @fchown(i32, i32, i32) #1

declare dso_local i64 @fchmod(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
