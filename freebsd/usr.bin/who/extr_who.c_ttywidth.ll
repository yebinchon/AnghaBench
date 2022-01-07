; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/who/extr_who.c_ttywidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/who/extr_who.c_ttywidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@errno = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid COLUMNS environment variable ignored\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ttywidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttywidth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.winsize, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %40

8:                                                ; preds = %0
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  store i64 0, i64* @errno, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strtol(i8* %14, i8** %5, i32 10)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* @errno, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @INT_MAX, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %25, %21, %18, %13
  %35 = call i32 @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %39

36:                                               ; preds = %29
  %37 = load i64, i64* %3, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %1, align 4
  br label %49

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %8, %0
  %41 = load i32, i32* @STDOUT_FILENO, align 4
  %42 = load i32, i32* @TIOCGWINSZ, align 4
  %43 = call i32 @ioctl(i32 %41, i32 %42, %struct.winsize* %2)
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %1, align 4
  br label %49

48:                                               ; preds = %40
  store i32 80, i32* %1, align 4
  br label %49

49:                                               ; preds = %48, %45, %36
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
