; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_setup_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_setup_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@screen_width = common dso_local global i32 0, align 4
@setup_buffer_bufsiz = common dso_local global i32 0, align 4
@SETUPBUFFER_MIN_SCREENWIDTH = common dso_local global i32 0, align 4
@SETUPBUFFER_REQUIRED_ADDBUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can't allocate sufficient memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @setup_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setup_buffer(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @screen_width, align 4
  store i32 %8, i32* @setup_buffer_bufsiz, align 4
  %9 = load i32, i32* @setup_buffer_bufsiz, align 4
  %10 = load i32, i32* @SETUPBUFFER_MIN_SCREENWIDTH, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @SETUPBUFFER_MIN_SCREENWIDTH, align 4
  store i32 %13, i32* @setup_buffer_bufsiz, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @setup_buffer_bufsiz, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @SETUPBUFFER_REQUIRED_ADDBUFSIZ, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i8* @calloc(i64 %21, i32 1)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = call i32 @errx(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %14
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @strlen(i8* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 %36, 1
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i64, i64* %6, align 8
  br label %44

41:                                               ; preds = %30
  %42 = load i64, i64* %5, align 8
  %43 = sub i64 %42, 1
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i64 [ %40, %39 ], [ %43, %41 ]
  %46 = call i32 @memcpy(i8* %33, i8* %34, i64 %45)
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @free(i8* %47)
  br label %49

49:                                               ; preds = %44, %27
  %50 = load i8*, i8** %7, align 8
  ret i8* %50
}

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
