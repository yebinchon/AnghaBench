; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_et.c_et_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_et.c_et_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i32, i64, i64, {}*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"et_start: negative period\00", align 1
@ET_FLAGS_PERIODIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"et_start: period specified for oneshot-only timer\00", align 1
@ET_FLAGS_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"et_start: period not specified for periodic-only timer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et_start(%struct.eventtimer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eventtimer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.eventtimer* %0, %struct.eventtimer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %9 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %4, align 4
  br label %106

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp sge i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %20 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ET_FLAGS_PERIODIC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 0
  br label %28

28:                                               ; preds = %25, %14
  %29 = phi i1 [ true, %14 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %33 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ET_FLAGS_ONESHOT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %38, %28
  %42 = phi i1 [ true, %28 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %50 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %55 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %7, align 8
  br label %68

57:                                               ; preds = %47
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %60 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %65 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %72, %69
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %78 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %83 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %6, align 8
  br label %96

85:                                               ; preds = %75
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %88 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %93 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %6, align 8
  br label %95

95:                                               ; preds = %91, %85
  br label %96

96:                                               ; preds = %95, %81
  br label %97

97:                                               ; preds = %96, %72
  %98 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %99 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %98, i32 0, i32 3
  %100 = bitcast {}** %99 to i32 (%struct.eventtimer*, i64, i64)**
  %101 = load i32 (%struct.eventtimer*, i64, i64)*, i32 (%struct.eventtimer*, i64, i64)** %100, align 8
  %102 = load %struct.eventtimer*, %struct.eventtimer** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 %101(%struct.eventtimer* %102, i64 %103, i64 %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %97, %12
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
