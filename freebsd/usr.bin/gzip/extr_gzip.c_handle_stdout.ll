; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_handle_stdout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_handle_stdout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1
@fflag = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"standard output is a terminal -- ignoring\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Can't stat stdin\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@vflag = common dso_local global i64 0, align 8
@tflag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @handle_stdout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_stdout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 @infile_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = load i64, i64* @fflag, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i32, i32* @STDOUT_FILENO, align 4
  %12 = call i64 @isatty(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @maybe_warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %63

16:                                               ; preds = %10, %0
  %17 = load i32, i32* @STDIN_FILENO, align 4
  %18 = call i32 @fstat(i32 %17, %struct.stat* %3)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @maybe_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %63

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISREG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @infile_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  br label %43

34:                                               ; preds = %23
  %35 = call i32 @time(i32* null)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @maybe_warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %63

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %40, %28
  %44 = load i32, i32* @STDIN_FILENO, align 4
  %45 = load i32, i32* @STDOUT_FILENO, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @gz_compress(i32 %44, i32 %45, i32* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 %46)
  store i32 %47, i32* %2, align 4
  %48 = load i64, i64* @vflag, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load i32, i32* @tflag, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %2, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %1, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @print_verbage(i32* null, i32* null, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %14, %21, %38, %59, %56, %53, %50, %43
  ret void
}

declare dso_local i32 @infile_set(i8*, i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @maybe_warnx(i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @maybe_warn(i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @gz_compress(i32, i32, i32*, i8*, i64) #1

declare dso_local i32 @print_verbage(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
