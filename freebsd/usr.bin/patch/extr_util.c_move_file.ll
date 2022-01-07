; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_util.c_move_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_util.c_move_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"internal error, can't reopen %s\00", align 1
@buf = common dso_local global i32 0, align 4
@buf_size = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Can't backup %s, output is in %s: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EXDEV = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Can't create %s, output is in %s: %s\0A\00", align 1
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @move_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strEQ(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i8* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @buf, align 4
  %24 = load i32, i32* @buf_size, align 4
  %25 = call i64 @read(i32 %22, i32 %23, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i32, i32* @STDOUT_FILENO, align 4
  %29 = load i32, i32* @buf, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @write(i32 %28, i32 %29, i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %27
  br label %21

37:                                               ; preds = %21
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @close(i32 %38)
  store i32 0, i32* %3, align 4
  br label %72

40:                                               ; preds = %2
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @backup_file(i8* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* @errno, align 8
  %48 = call i32 @strerror(i64 %47)
  %49 = call i32 (i8*, i8*, ...) @say(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %45, i8* %46, i32 %48)
  store i32 -1, i32* %3, align 4
  br label %72

50:                                               ; preds = %40
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @rename(i8* %51, i8* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EXDEV, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @copy_file(i8* %60, i8* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59, %55
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load i64, i64* @errno, align 8
  %68 = call i32 @strerror(i64 %67)
  %69 = call i32 (i8*, i8*, ...) @say(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %65, i8* %66, i32 %68)
  store i32 -1, i32* %3, align 4
  br label %72

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %50
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %64, %44, %37
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @strEQ(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @pfatal(i8*, ...) #1

declare dso_local i64 @read(i32, i32, i32) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @backup_file(i8*) #1

declare dso_local i32 @say(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i64 @copy_file(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
