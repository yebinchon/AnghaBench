; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_condvar.c__cv_timedwait_sbt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_condvar.c__cv_timedwait_sbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_3__ = type { %struct.lock_object }
%struct.lock_object = type { i32 }
%struct.cv = type { i32 }
%struct.lock_class = type { i32, i32 (%struct.lock_object*)*, i32 (%struct.lock_object*, i32)* }

@lock_witness = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Waiting on \22%s\22\00", align 1
@Giant = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@SLEEPQ_CONDVAR = common dso_local global i32 0, align 4
@LC_SLEEPABLE = common dso_local global i32 0, align 4
@KTR_CSW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_cv_timedwait_sbt(%struct.cv* %0, %struct.lock_object* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cv*, align 8
  %8 = alloca %struct.lock_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lock_class*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cv* %0, %struct.cv** %7, align 8
  store %struct.lock_object* %1, %struct.lock_object** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @lock_witness, align 4
  %17 = call i32 @WITNESS_SAVE_DECL(i32 %16)
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %18, %struct.thread** %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.cv*, %struct.cv** %7, align 8
  %20 = load %struct.lock_object*, %struct.lock_object** %8, align 8
  %21 = load %struct.thread*, %struct.thread** %13, align 8
  %22 = call i32 @CV_ASSERT(%struct.cv* %19, %struct.lock_object* %20, %struct.thread* %21)
  %23 = load i32, i32* @WARN_GIANTOK, align 4
  %24 = load i32, i32* @WARN_SLEEPOK, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.lock_object*, %struct.lock_object** %8, align 8
  %27 = load %struct.cv*, %struct.cv** %7, align 8
  %28 = getelementptr inbounds %struct.cv, %struct.cv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WITNESS_WARN(i32 %25, %struct.lock_object* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.lock_object*, %struct.lock_object** %8, align 8
  %32 = call %struct.lock_class* @LOCK_CLASS(%struct.lock_object* %31)
  store %struct.lock_class* %32, %struct.lock_class** %12, align 8
  %33 = load %struct.thread*, %struct.thread** %13, align 8
  %34 = call i64 @SCHEDULER_STOPPED_TD(%struct.thread* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %110

37:                                               ; preds = %5
  %38 = load %struct.cv*, %struct.cv** %7, align 8
  %39 = call i32 @sleepq_lock(%struct.cv* %38)
  %40 = load %struct.cv*, %struct.cv** %7, align 8
  %41 = call i32 @CV_WAITERS_INC(%struct.cv* %40)
  %42 = load %struct.lock_object*, %struct.lock_object** %8, align 8
  %43 = icmp eq %struct.lock_object* %42, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Giant, i32 0, i32 0)
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @MA_OWNED, align 4
  %46 = call i32 @mtx_assert(%struct.TYPE_3__* @Giant, i32 %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = call i32 (...) @DROP_GIANT()
  %49 = load %struct.cv*, %struct.cv** %7, align 8
  %50 = load %struct.lock_object*, %struct.lock_object** %8, align 8
  %51 = load %struct.cv*, %struct.cv** %7, align 8
  %52 = getelementptr inbounds %struct.cv, %struct.cv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SLEEPQ_CONDVAR, align 4
  %55 = call i32 @sleepq_add(%struct.cv* %49, %struct.lock_object* %50, i32 %53, i32 %54, i32 0)
  %56 = load %struct.cv*, %struct.cv** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @sleepq_set_timeout_sbt(%struct.cv* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.lock_object*, %struct.lock_object** %8, align 8
  %62 = icmp ne %struct.lock_object* %61, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Giant, i32 0, i32 0)
  br i1 %62, label %63, label %92

63:                                               ; preds = %47
  %64 = load %struct.lock_class*, %struct.lock_class** %12, align 8
  %65 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @LC_SLEEPABLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.cv*, %struct.cv** %7, align 8
  %72 = call i32 @sleepq_release(%struct.cv* %71)
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.lock_object*, %struct.lock_object** %8, align 8
  %75 = load i32, i32* @lock_witness, align 4
  %76 = call i32 @WITNESS_SAVE(%struct.lock_object* %74, i32 %75)
  %77 = load %struct.lock_class*, %struct.lock_class** %12, align 8
  %78 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %77, i32 0, i32 1
  %79 = load i32 (%struct.lock_object*)*, i32 (%struct.lock_object*)** %78, align 8
  %80 = load %struct.lock_object*, %struct.lock_object** %8, align 8
  %81 = call i32 %79(%struct.lock_object* %80)
  store i32 %81, i32* %14, align 4
  %82 = load %struct.lock_class*, %struct.lock_class** %12, align 8
  %83 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @LC_SLEEPABLE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load %struct.cv*, %struct.cv** %7, align 8
  %90 = call i32 @sleepq_lock(%struct.cv* %89)
  br label %91

91:                                               ; preds = %88, %73
  br label %92

92:                                               ; preds = %91, %47
  %93 = load %struct.cv*, %struct.cv** %7, align 8
  %94 = call i32 @sleepq_timedwait(%struct.cv* %93, i32 0)
  store i32 %94, i32* %15, align 4
  %95 = call i32 (...) @PICKUP_GIANT()
  %96 = load %struct.lock_object*, %struct.lock_object** %8, align 8
  %97 = icmp ne %struct.lock_object* %96, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Giant, i32 0, i32 0)
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load %struct.lock_class*, %struct.lock_class** %12, align 8
  %100 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %99, i32 0, i32 2
  %101 = load i32 (%struct.lock_object*, i32)*, i32 (%struct.lock_object*, i32)** %100, align 8
  %102 = load %struct.lock_object*, %struct.lock_object** %8, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call i32 %101(%struct.lock_object* %102, i32 %103)
  %105 = load %struct.lock_object*, %struct.lock_object** %8, align 8
  %106 = load i32, i32* @lock_witness, align 4
  %107 = call i32 @WITNESS_RESTORE(%struct.lock_object* %105, i32 %106)
  br label %108

108:                                              ; preds = %98, %92
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %108, %36
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @WITNESS_SAVE_DECL(i32) #1

declare dso_local i32 @CV_ASSERT(%struct.cv*, %struct.lock_object*, %struct.thread*) #1

declare dso_local i32 @WITNESS_WARN(i32, %struct.lock_object*, i8*, i32) #1

declare dso_local %struct.lock_class* @LOCK_CLASS(%struct.lock_object*) #1

declare dso_local i64 @SCHEDULER_STOPPED_TD(%struct.thread*) #1

declare dso_local i32 @sleepq_lock(%struct.cv*) #1

declare dso_local i32 @CV_WAITERS_INC(%struct.cv*) #1

declare dso_local i32 @mtx_assert(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @sleepq_add(%struct.cv*, %struct.lock_object*, i32, i32, i32) #1

declare dso_local i32 @sleepq_set_timeout_sbt(%struct.cv*, i32, i32, i32) #1

declare dso_local i32 @sleepq_release(%struct.cv*) #1

declare dso_local i32 @WITNESS_SAVE(%struct.lock_object*, i32) #1

declare dso_local i32 @sleepq_timedwait(%struct.cv*, i32) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

declare dso_local i32 @WITNESS_RESTORE(%struct.lock_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
