; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/write/extr_write.c_search_utmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/write/extr_write.c_search_utmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i64, i8*, i8* }

@USER_PROCESS = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s is not logged in\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s has messages disabled\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s is logged in more than once; writing to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_utmp(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.utmpx*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %74, %58, %50, %43, %5
  %19 = call %struct.utmpx* (...) @getutxent()
  store %struct.utmpx* %19, %struct.utmpx** %11, align 8
  %20 = icmp ne %struct.utmpx* %19, null
  br i1 %20, label %21, label %75

21:                                               ; preds = %18
  %22 = load %struct.utmpx*, %struct.utmpx** %11, align 8
  %23 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USER_PROCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.utmpx*, %struct.utmpx** %11, align 8
  %30 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %28, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %27
  %35 = load i32, i32* %14, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.utmpx*, %struct.utmpx** %11, align 8
  %39 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @term_chk(i32 %37, i8* %40, i32* %16, i64* %13, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %18

44:                                               ; preds = %34
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %18

51:                                               ; preds = %47, %44
  %52 = load %struct.utmpx*, %struct.utmpx** %11, align 8
  %53 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i64 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %17, align 4
  br label %18

59:                                               ; preds = %51
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i64, i64* %13, align 8
  store i64 %66, i64* %12, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.utmpx*, %struct.utmpx** %11, align 8
  %69 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @MAXPATHLEN, align 4
  %72 = call i32 @strlcpy(i8* %67, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %59
  br label %74

74:                                               ; preds = %73, %27, %21
  br label %18

75:                                               ; preds = %18
  %76 = call i32 (...) @endutxent()
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, i32* %15, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* @MAXPATHLEN, align 4
  %92 = call i32 @strlcpy(i8* %89, i8* %90, i32 %91)
  br label %104

93:                                               ; preds = %85
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  br label %104

96:                                               ; preds = %82
  %97 = load i32, i32* %15, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %99, %96
  br label %104

104:                                              ; preds = %88, %103, %93
  ret void
}

declare dso_local %struct.utmpx* @getutxent(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @term_chk(i32, i8*, i32*, i64*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @endutxent(...) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
