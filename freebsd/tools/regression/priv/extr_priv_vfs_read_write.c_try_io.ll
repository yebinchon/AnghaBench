; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_read_write.c_try_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_read_write.c_try_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"%s(%s, %s): expected (%d, %d) got (-1, %d)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"!root\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"jail\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"!jail\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"%s(%s, %s): expected (%d, %d) got 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, i32, i32)* @try_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_io(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @open(i8* %16, i32 %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %7
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 (i8*, i8*, i8*, i8*, i32, i32, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %29, i8* %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %24, %21
  br label %58

39:                                               ; preds = %7
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 (i8*, i8*, i8*, i8*, i32, i32, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %43, i8* %47, i8* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %42, %39
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @close(i32 %56)
  br label %58

58:                                               ; preds = %55, %38
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warnx(i8*, i8*, i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
