; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_biosmptable.c_biosmptable_check_mpcth.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_biosmptable.c_biosmptable_check_mpcth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"bad mpcth address (0x%jx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"unable to malloc space for MP Configuration Table Header\00", align 1
@MPCTH_SIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"bad mpcth signature\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"unable to realloc space for mpcth (len %u)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"bad mpcth checksum (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i64)* @biosmptable_check_mpcth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @biosmptable_check_mpcth(i64 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = trunc i64 %9 to i32
  %11 = icmp sge i32 %10, 1048576
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %89

16:                                               ; preds = %1
  %17 = call %struct.TYPE_8__* @malloc(i32 8)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %89

22:                                               ; preds = %16
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = call i32 @memread(i64 %23, %struct.TYPE_8__* %24, i32 8)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %86

28:                                               ; preds = %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MPCTH_SIG, align 4
  %33 = load i32, i32* @MPCTH_SIG, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = call i64 @strncmp(i32 %31, i32 %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %86

39:                                               ; preds = %28
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.TYPE_8__* @realloc(%struct.TYPE_8__* %43, i32 %44)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %4, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = icmp eq %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %89

51:                                               ; preds = %39
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @memread(i64 %52, %struct.TYPE_8__* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %86

58:                                               ; preds = %51
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = bitcast %struct.TYPE_8__* %59 to i32*
  store i32* %60, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %75, %58
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %61

78:                                               ; preds = %61
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %86

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %2, align 8
  br label %89

86:                                               ; preds = %81, %57, %37, %27
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = call i32 @free(%struct.TYPE_8__* %87)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %89

89:                                               ; preds = %86, %84, %48, %20, %12
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %90
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @memread(i64, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.TYPE_8__* @realloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
