; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_scroll.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@screen = common dso_local global i32 0, align 4
@msgCount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"On last screenful of messages\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"On first screenful of messages\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unrecognized scrolling command \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scroll(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %4, align 8
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %9, align 4
  %10 = call i32 (...) @screensize()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @screen, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %35 [
    i32 0, label %15
    i32 43, label %15
    i32 45, label %27
  ]

15:                                               ; preds = %1, %1
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* @msgCount, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %41

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* @screen, align 4
  br label %38

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* @screen, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i32 1, i32* %2, align 4
  br label %41

38:                                               ; preds = %33, %25
  %39 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %40 = call i32 @headers(i32* %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %35, %31, %23
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @screensize(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @headers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
