; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_open_cd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_open_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@cdname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"/dev/cdrom\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"/dev/cd0\00", align 1
@ENXIO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"no disc in drive %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @open_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_cd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAXPATHLEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @fd, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %60

13:                                               ; preds = %0
  %14 = load i8*, i8** @cdname, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i8*, i8** @cdname, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @MAXPATHLEN, align 4
  %23 = load i8*, i8** @cdname, align 8
  %24 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %9, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %30

25:                                               ; preds = %16
  %26 = load i32, i32* @MAXPATHLEN, align 4
  %27 = load i8*, i8** @_PATH_DEV, align 8
  %28 = load i8*, i8** @cdname, align 8
  %29 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %9, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  br label %30

30:                                               ; preds = %25, %21
  store i8* %9, i8** %4, align 8
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = call i32 @open(i8* %9, i32 %31)
  store i32 %32, i32* @fd, align 4
  br label %46

33:                                               ; preds = %13
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %34 = load i32, i32* @O_RDONLY, align 4
  %35 = call i32 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 %35, i32* @fd, align 4
  %36 = load i32, i32* @fd, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %43 = load i32, i32* @O_RDONLY, align 4
  %44 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  store i32 %44, i32* @fd, align 4
  br label %45

45:                                               ; preds = %42, %38, %33
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* @fd, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @ENXIO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %60

56:                                               ; preds = %49
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %46
  store i32 1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %53, %12
  %61 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
