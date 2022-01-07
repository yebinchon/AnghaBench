; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_excludes.c_read_excludes_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_excludes.c_read_excludes_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exclude = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"memory allocation error\00", align 1
@excludes = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_excludes_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.exclude*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %69, %34, %15
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @fgetln(i32* %17, i64* %7)
  store i8* %18, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %16

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  %38 = trunc i64 %37 to i32
  %39 = call i8* @malloc(i32 %38)
  store i8* %39, i8** %5, align 8
  %40 = call i8* @malloc(i32 16)
  %41 = bitcast i8* %40 to %struct.exclude*
  store %struct.exclude* %41, %struct.exclude** %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load %struct.exclude*, %struct.exclude** %6, align 8
  %46 = icmp eq %struct.exclude* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %35
  %48 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.exclude*, %struct.exclude** %6, align 8
  %52 = getelementptr inbounds %struct.exclude, %struct.exclude* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @memcpy(i8* %53, i8* %54, i64 %55)
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @strchr(i8* %60, i8 signext 47)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load %struct.exclude*, %struct.exclude** %6, align 8
  %65 = getelementptr inbounds %struct.exclude, %struct.exclude* %64, i32 0, i32 1
  store i32 1, i32* %65, align 8
  br label %69

66:                                               ; preds = %49
  %67 = load %struct.exclude*, %struct.exclude** %6, align 8
  %68 = getelementptr inbounds %struct.exclude, %struct.exclude* %67, i32 0, i32 1
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.exclude*, %struct.exclude** %6, align 8
  %71 = load i32, i32* @link, align 4
  %72 = call i32 @LIST_INSERT_HEAD(i32* @excludes, %struct.exclude* %70, i32 %71)
  br label %16

73:                                               ; preds = %16
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @fclose(i32* %74)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.exclude*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
