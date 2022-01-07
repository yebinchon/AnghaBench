; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_textbuf_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_textbuf_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_textbuf_buffer(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @ocs_textbuf_initialized(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %46

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %43, %12
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %38 [
    i32 34, label %23
    i32 39, label %26
    i32 60, label %29
    i32 62, label %32
    i32 38, label %35
  ]

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ocs_textbuf_puts(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %43

26:                                               ; preds = %19
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @ocs_textbuf_puts(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %43

29:                                               ; preds = %19
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @ocs_textbuf_puts(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %43

32:                                               ; preds = %19
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @ocs_textbuf_puts(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %43

35:                                               ; preds = %19
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @ocs_textbuf_puts(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %43

38:                                               ; preds = %19
  %39 = load i32*, i32** %4, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @ocs_textbuf_putc(i32* %39, i8 signext %41)
  br label %43

43:                                               ; preds = %38, %35, %32, %29, %26, %23
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %15

46:                                               ; preds = %11, %15
  ret void
}

declare dso_local i32 @ocs_textbuf_initialized(i32*) #1

declare dso_local i32 @ocs_textbuf_puts(i32*, i8*) #1

declare dso_local i32 @ocs_textbuf_putc(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
