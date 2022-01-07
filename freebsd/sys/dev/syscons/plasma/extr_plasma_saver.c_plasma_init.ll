; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/plasma/extr_plasma_saver.c_plasma_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/plasma/extr_plasma_saver.c_plasma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@modes = common dso_local global i64* null, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: no supported video modes\0A\00", align 1
@SAVER_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@scrmode = common dso_local global i64 0, align 8
@scrw = common dso_local global i32 0, align 4
@scrh = common dso_local global i32 0, align 4
@plasma_pal = common dso_local global %struct.TYPE_6__* null, align 8
@FOCI = common dso_local global i32 0, align 4
@plasma_foci = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @plasma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plasma_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i64*, i64** @modes, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %6
  %14 = load i32*, i32** %3, align 8
  %15 = load i64*, i64** @modes, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @vidd_get_info(i32* %14, i64 %19, %struct.TYPE_5__* %4)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %27

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %6

27:                                               ; preds = %22, %6
  %28 = load i64*, i64** @modes, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* @LOG_NOTICE, align 4
  %36 = load i32, i32* @SAVER_NAME, align 4
  %37 = call i32 @log(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  store i32 %38, i32* %2, align 4
  br label %114

39:                                               ; preds = %27
  %40 = load i64*, i64** @modes, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* @scrmode, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* @scrw, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* @scrh, align 4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %69, %39
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 256
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plasma_pal, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i32 %53, i32* %58, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plasma_pal, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %53, i32* %63, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @plasma_pal, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %53, i32* %68, align 4
  br label %69

69:                                               ; preds = %52
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %49

72:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %110, %72
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @FOCI, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %73
  %78 = call i32 (...) @random()
  %79 = load i32, i32* @scrw, align 4
  %80 = srem i32 %78, %79
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @plasma_foci, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 4
  %86 = call i32 (...) @random()
  %87 = load i32, i32* @scrh, align 4
  %88 = srem i32 %86, %87
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @plasma_foci, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  %94 = call i32 (...) @random()
  %95 = srem i32 %94, 5
  %96 = sub nsw i32 %95, 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @plasma_foci, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i32 %96, i32* %101, align 4
  %102 = call i32 (...) @random()
  %103 = srem i32 %102, 5
  %104 = sub nsw i32 %103, 2
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @plasma_foci, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  store i32 %104, i32* %109, align 4
  br label %110

110:                                              ; preds = %77
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %73

113:                                              ; preds = %73
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %34
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @vidd_get_info(i32*, i64, %struct.TYPE_5__*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
