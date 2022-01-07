; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/w/extr_pr_time.c_pr_attime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/w/extr_pr_time.c_pr_attime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64 }

@pr_attime.buf = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i32] [i32 37, i32 100, i32 37, i32 98, i32 37, i32 121, i32 0], align 4
@use_ampm = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i32] [i32 37, i32 97, i32 37, i32 73, i32 37, i32 112, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 37, i32 97, i32 37, i32 72, i32 0], align 4
@.str.3 = private unnamed_addr constant [8 x i32] [i32 37, i32 108, i32 58, i32 37, i32 77, i32 37, i32 112, i32 0], align 4
@.str.4 = private unnamed_addr constant [6 x i32] [i32 37, i32 107, i32 58, i32 37, i32 77, i32 0], align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"since\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"{:login-time/%-7.7ls/%ls}\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"{:login-time/%ls}%.*s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"{:login-time/%ls}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pr_attime(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tm, align 8
  %6 = alloca %struct.tm, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.tm* @localtime(i32* %12)
  %14 = bitcast %struct.tm* %5 to i8*
  %15 = bitcast %struct.tm* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.tm* @localtime(i32* %16)
  %18 = bitcast %struct.tm* %6 to i8*
  %19 = bitcast %struct.tm* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %21, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 604800
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i8* bitcast ([7 x i32]* @.str to i8*), i8** %8, align 8
  br label %59

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40, %34, %28
  %47 = load i64, i64* @use_ampm, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.2, i64 0, i64 0)
  %51 = bitcast i32* %50 to i8*
  store i8* %51, i8** %8, align 8
  br label %58

52:                                               ; preds = %40
  %53 = load i64, i64* @use_ampm, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.4, i64 0, i64 0)
  %57 = bitcast i32* %56 to i8*
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %52, %46
  br label %59

59:                                               ; preds = %58, %27
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @wcsftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pr_attime.buf, i64 0, i64 0), i32 256, i8* %60, %struct.tm* %5)
  %62 = call i32 @wcslen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pr_attime.buf, i64 0, i64 0))
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @wcswidth(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pr_attime.buf, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 @xo_attr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 @xo_attr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pr_attime.buf, i64 0, i64 0))
  br label %89

77:                                               ; preds = %59
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 7
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 7, %81
  %83 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pr_attime.buf, i64 0, i64 0), i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %88

84:                                               ; preds = %77
  %85 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pr_attime.buf, i64 0, i64 0))
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %86, 7
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local %struct.tm* @localtime(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wcsftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @wcswidth(i8*, i32) #1

declare dso_local i32 @xo_attr(i8*, i8*, i64) #1

declare dso_local i32 @xo_emit(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
