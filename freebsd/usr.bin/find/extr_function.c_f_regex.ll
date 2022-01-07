; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_f_regex.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_f_regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_7__ = type { i64, i32 }

@LINE_MAX = common dso_local global i32 0, align 4
@REG_STARTEND = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@F_IGNCASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"-iregex\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-regex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_regex(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %13 = load i32, i32* @LINE_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %12, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @REG_STARTEND, align 4
  %31 = call i32 @regexec(i32* %28, i8* %29, i32 1, %struct.TYPE_7__* %8, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @REG_NOMATCH, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = trunc i64 %14 to i32
  %42 = call i32 @regerror(i32 %39, i32* %40, i8* %16, i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @F_IGNCASE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %51 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %16)
  br label %52

52:                                               ; preds = %38, %34, %2
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %59, %55, %52
  %66 = load i32, i32* %12, align 4
  %67 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @regexec(i32*, i8*, i32, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
