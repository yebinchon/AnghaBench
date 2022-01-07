; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_get_srcdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_get_srcdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"../..\00", align 1
@srcdir = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to find root of source tree\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_srcdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_srcdir() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca %struct.stat, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load i8*, i8** @srcdir, align 8
  %7 = call i32* @realpath(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  %11 = call i32 @err(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %0
  %13 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %68

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 47
  br i1 %19, label %20, label %68

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strdup(i8* %21)
  store i8* %22, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %68

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @strrchr(i8* %29, i8 signext 47)
  store i8* %30, i8** %3, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @free(i8* %33)
  br label %68

35:                                               ; preds = %28
  %36 = load i8*, i8** %3, align 8
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %25

40:                                               ; preds = %25
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @stat(i8* %41, %struct.stat* %1)
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load i8*, i8** @srcdir, align 8
  %46 = call i32 @stat(i8* %45, %struct.stat* %2)
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i8*, i8** @srcdir, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* @MAXPATHLEN, align 4
  %64 = call i32 @strlcpy(i8* %61, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %54, %48, %44, %40
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @free(i8* %66)
  br label %68

68:                                               ; preds = %32, %65, %20, %15, %12
  ret void
}

declare dso_local i32* @realpath(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
