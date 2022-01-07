; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_biosmptable.c_biosmptable_search_mpfps.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_biosmptable.c_biosmptable_search_mpfps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"unable to malloc space for MP Floating Pointer Structure\00", align 1
@MPFPS_SIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"bad mpfps length (%d)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"bad mpfps checksum (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i64, i32)* @biosmptable_search_mpfps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @biosmptable_search_mpfps(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call %struct.TYPE_6__* @malloc(i32 8)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %85

16:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %79, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = call i32 @memread(i64 %25, %struct.TYPE_6__* %26, i32 8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %82

30:                                               ; preds = %21
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MPFPS_SIG, align 4
  %35 = load i32, i32* @MPFPS_SIG, align 4
  %36 = call i32 @strlen(i32 %35)
  %37 = call i32 @strncmp(i32 %33, i32 %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %78, label %39

39:                                               ; preds = %30
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = bitcast %struct.TYPE_6__* %40 to i32*
  store i32* %41, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %79

51:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %67, %51
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 16
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %52

70:                                               ; preds = %52
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %79

76:                                               ; preds = %70
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %3, align 8
  br label %85

78:                                               ; preds = %30
  br label %79

79:                                               ; preds = %78, %73, %46
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 16
  store i32 %81, i32* %9, align 4
  br label %17

82:                                               ; preds = %29, %17
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = call i32 @free(%struct.TYPE_6__* %83)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %85

85:                                               ; preds = %82, %76, %14
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %86
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @memread(i64, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
