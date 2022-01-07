; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/upsdl/extr_upsdl.c_prepareFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/upsdl/extr_upsdl.c_prepareFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Creating file\00", align 1
@wbuffer = common dso_local global i32 0, align 4
@FILESIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Write failed\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"fsync failed\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"Mmap failed\00", align 1
@MS_INVALIDATE = common dso_local global i32 0, align 4
@MS_SYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Msync failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepareFile(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @O_CREAT, align 4
  %12 = load i32, i32* @O_TRUNC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @S_IRWXU, align 4
  %17 = call i32 @open(i8* %10, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %69

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @wbuffer, align 4
  %26 = load i32, i32* @FILESIZE, align 4
  %27 = call i32 @write(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %69

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @fsync(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %69

39:                                               ; preds = %32
  %40 = load i32, i32* @FILESIZE, align 4
  %41 = load i32, i32* @PROT_READ, align 4
  %42 = load i32, i32* @PROT_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MAP_SHARED, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i8* @mmap(i32* null, i32 %40, i32 %43, i32 %44, i32 %45, i32 0)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** @MAP_FAILED, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %69

52:                                               ; preds = %39
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* @FILESIZE, align 4
  %55 = load i32, i32* @MS_INVALIDATE, align 4
  %56 = load i32, i32* @MS_SYNC, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @msync(i8* %53, i32 %54, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %69

63:                                               ; preds = %52
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* @FILESIZE, align 4
  %66 = call i32 @munmap(i8* %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %61, %50, %37, %30, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msync(i8*, i32, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
