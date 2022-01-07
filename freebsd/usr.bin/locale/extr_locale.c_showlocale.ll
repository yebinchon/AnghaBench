; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_showlocale.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_showlocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"LANG=%s\0A\00", align 1
@NLCINFO = common dso_local global i64 0, align 8
@lcinfo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s=\22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"LC_ALL=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @showlocale() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @LC_ALL, align 4
  %6 = call i8* @setlocale(i32 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %11

11:                                               ; preds = %10, %0
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  store i64 0, i64* %1, align 8
  br label %14

14:                                               ; preds = %60, %11
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @NLCINFO, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcinfo, align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @setlocale(i32 %23, i8* null)
  store i8* %24, i8** %3, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcinfo, align 8
  %26 = load i64, i64* %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @getenv(i8* %29)
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %18
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @strcmp(i8* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %2, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcinfo, align 8
  %45 = load i64, i64* %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %48, i8* %49)
  br label %59

51:                                               ; preds = %38, %33, %18
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcinfo, align 8
  %53 = load i64, i64* %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %56, i8* %57)
  br label %59

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %1, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %1, align 8
  br label %14

63:                                               ; preds = %14
  %64 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %64, i8** %3, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %68

68:                                               ; preds = %67, %63
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %69)
  ret void
}

declare dso_local i8* @setlocale(i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
