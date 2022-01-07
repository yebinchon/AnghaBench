; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_regex.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32 }

@LINE_MAX = common dso_local global i32 0, align 4
@regexp_flags = common dso_local global i32 0, align 4
@F_IGNCASE = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s: %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"-iregex\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-regex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @c_regex(%struct.TYPE_9__* %0, i8*** %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %11 = load i32, i32* @LINE_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = call i32* @malloc(i32 4)
  store i32* %15, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @err(i32 1, i32* null)
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load i8***, i8**** %4, align 8
  %22 = call i8* @nextarg(%struct.TYPE_9__* %20, i8*** %21)
  store i8* %22, i8** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @regexp_flags, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @F_IGNCASE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @REG_ICASE, align 4
  br label %35

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = or i32 %25, %36
  %38 = call i32 @regcomp(i32* %23, i8* %24, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = trunc i64 %12 to i32
  %44 = call i32 @regerror(i32 %41, i32* %42, i8* %14, i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @F_IGNCASE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @errx(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %53, i8* %14)
  br label %55

55:                                               ; preds = %40, %35
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = call %struct.TYPE_8__* @palloc(%struct.TYPE_9__* %56)
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %62)
  ret %struct.TYPE_8__* %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @err(i32, i32*) #2

declare dso_local i8* @nextarg(%struct.TYPE_9__*, i8***) #2

declare dso_local i32 @regcomp(i32*, i8*, i32) #2

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*, i8*, i8*, i8*) #2

declare dso_local %struct.TYPE_8__* @palloc(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
