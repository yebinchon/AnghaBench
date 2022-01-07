; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/write/extr_write.c_do_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/write/extr_write.c_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"openat(%s%s)\00", align 1
@_PATH_DEV = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"\0D\0A\07\07\07Message from %s@%s on %s at %s ...\0D\0A\00", align 1
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_write(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [512 x i32], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = call i32 @openat(i32 %19, i8* %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @_PATH_DEV, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %25, %4
  %30 = load i32*, i32** @stdout, align 8
  %31 = call i32 @fclose(i32* %30)
  %32 = load i32, i32* %14, align 4
  %33 = call i32* @fdopen(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** @stdout, align 8
  %34 = load i32*, i32** @stdout, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @_PATH_DEV, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %37, i8* %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* @SIGINT, align 4
  %42 = load i32, i32* @done, align 4
  %43 = call i32 @signal(i32 %41, i32 %42)
  %44 = load i32, i32* @SIGHUP, align 4
  %45 = load i32, i32* @done, align 4
  %46 = call i32 @signal(i32 %44, i32 %45)
  %47 = trunc i64 %16 to i32
  %48 = call i64 @gethostname(i8* %18, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %40
  %53 = call i32 @time(i32* null)
  store i32 %53, i32* %10, align 4
  %54 = call i8* @ctime(i32* %10)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 16
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 11
  %61 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %57, i8* %18, i8* %58, i8* %60)
  br label %62

62:                                               ; preds = %67, %52
  %63 = getelementptr inbounds [512 x i32], [512 x i32]* %13, i64 0, i64 0
  %64 = load i32, i32* @stdin, align 4
  %65 = call i32* @fgetws(i32* %63, i32 512, i32 %64)
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = getelementptr inbounds [512 x i32], [512 x i32]* %13, i64 0, i64 0
  %69 = call i32 @wr_fputs(i32* %68)
  br label %62

70:                                               ; preds = %62
  %71 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @openat(i32, i8*, i32) #2

declare dso_local i32 @err(i32, i8*, i32, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i64 @gethostname(i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i8* @ctime(i32*) #2

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32* @fgetws(i32*, i32, i32) #2

declare dso_local i32 @wr_fputs(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
