; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/nfsmmap/test1/extr_test1.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/nfsmmap/test1/extr_test1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"test1.data\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"opening file\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"seeking\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"writing ones\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"test1.scratch\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"creating scratch\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"writing scratch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [200 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 0, i32 4096)
  %13 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i32 1, i32 200)
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = call i64 @lseek(i32 %22, i32 600, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %31 = call i64 @write(i32 %29, i8* %30, i32 200)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @fsync(i32 %36)
  %38 = load i32, i32* @PROT_READ, align 4
  %39 = load i32, i32* @PROT_WRITE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MAP_PRIVATE, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @mmap(i32 0, i32 4096, i32 %40, i32 %41, i32 %42, i32 0)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** @MAP_FAILED, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %35
  %50 = call i32 @unlink(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %51 = load i32, i32* @O_RDWR, align 4
  %52 = load i32, i32* @O_CREAT, align 4
  %53 = or i32 %51, %52
  %54 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %53, i32 438)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %49
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = call i64 @write(i32 %60, i8* %61, i32 4096)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
