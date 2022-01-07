; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_condvar.c__cv_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_condvar.c__cv_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_3__ = type { %struct.lock_object }
%struct.lock_object = type { i32 }
%struct.cv = type { i32 }
%struct.lock_class = type { i32, i64 (%struct.lock_object*)*, i32 (%struct.lock_object*, i64)* }

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
define dso_local void @_cv_wait(%struct.cv* %0, %struct.lock_object* %1) #0 {
  %3 = alloca %struct.cv*, align 8
  %4 = alloca %struct.lock_object*, align 8
  %5 = alloca %struct.lock_class*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64, align 8
  store %struct.cv* %0, %struct.cv** %3, align 8
  store %struct.lock_object* %1, %struct.lock_object** %4, align 8
  %8 = load i32, i32* @lock_witness, align 4
  %9 = call i32 @WITNESS_SAVE_DECL(i32 %8)
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.cv*, %struct.cv** %3, align 8
  %12 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %13 = load %struct.thread*, %struct.thread** %6, align 8
  %14 = call i32 @CV_ASSERT(%struct.cv* %11, %struct.lock_object* %12, %struct.thread* %13)
  %15 = load i32, i32* @WARN_GIANTOK, align 4
  %16 = load i32, i32* @WARN_SLEEPOK, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %19 = load %struct.cv*, %struct.cv** %3, align 8
  %20 = getelementptr inbounds %struct.cv, %struct.cv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WITNESS_WARN(i32 %17, %struct.lock_object* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %24 = call %struct.lock_class* @LOCK_CLASS(%struct.lock_object* %23)
  store %struct.lock_class* %24, %struct.lock_class** %5, align 8
  %25 = load %struct.thread*, %struct.thread** %6, align 8
  %26 = call i64 @SCHEDULER_STOPPED_TD(%struct.thread* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %95

29:                                               ; preds = %2
  %30 = load %struct.cv*, %struct.cv** %3, align 8
  %31 = call i32 @sleepq_lock(%struct.cv* %30)
  %32 = load %struct.cv*, %struct.cv** %3, align 8
  %33 = call i32 @CV_WAITERS_INC(%struct.cv* %32)
  %34 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %35 = icmp eq %struct.lock_object* %34, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Giant, i32 0, i32 0)
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @MA_OWNED, align 4
  %38 = call i32 @mtx_assert(%struct.TYPE_3__* @Giant, i32 %37)
  br label %39

39:                                               ; preds = %36, %29
  %40 = call i32 (...) @DROP_GIANT()
  %41 = load %struct.cv*, %struct.cv** %3, align 8
  %42 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %43 = load %struct.cv*, %struct.cv** %3, align 8
  %44 = getelementptr inbounds %struct.cv, %struct.cv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SLEEPQ_CONDVAR, align 4
  %47 = call i32 @sleepq_add(%struct.cv* %41, %struct.lock_object* %42, i32 %45, i32 %46, i32 0)
  %48 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %49 = icmp ne %struct.lock_object* %48, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Giant, i32 0, i32 0)
  br i1 %49, label %50, label %79

50:                                               ; preds = %39
  %51 = load %struct.lock_class*, %struct.lock_class** %5, align 8
  %52 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @LC_SLEEPABLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.cv*, %struct.cv** %3, align 8
  %59 = call i32 @sleepq_release(%struct.cv* %58)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %62 = load i32, i32* @lock_witness, align 4
  %63 = call i32 @WITNESS_SAVE(%struct.lock_object* %61, i32 %62)
  %64 = load %struct.lock_class*, %struct.lock_class** %5, align 8
  %65 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %64, i32 0, i32 1
  %66 = load i64 (%struct.lock_object*)*, i64 (%struct.lock_object*)** %65, align 8
  %67 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %68 = call i64 %66(%struct.lock_object* %67)
  store i64 %68, i64* %7, align 8
  %69 = load %struct.lock_class*, %struct.lock_class** %5, align 8
  %70 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @LC_SLEEPABLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load %struct.cv*, %struct.cv** %3, align 8
  %77 = call i32 @sleepq_lock(%struct.cv* %76)
  br label %78

78:                                               ; preds = %75, %60
  br label %79

79:                                               ; preds = %78, %39
  %80 = load %struct.cv*, %struct.cv** %3, align 8
  %81 = call i32 @sleepq_wait(%struct.cv* %80, i32 0)
  %82 = call i32 (...) @PICKUP_GIANT()
  %83 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %84 = icmp ne %struct.lock_object* %83, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Giant, i32 0, i32 0)
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load %struct.lock_class*, %struct.lock_class** %5, align 8
  %87 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %86, i32 0, i32 2
  %88 = load i32 (%struct.lock_object*, i64)*, i32 (%struct.lock_object*, i64)** %87, align 8
  %89 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %90 = load i64, i64* %7, align 8
  %91 = call i32 %88(%struct.lock_object* %89, i64 %90)
  %92 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %93 = load i32, i32* @lock_witness, align 4
  %94 = call i32 @WITNESS_RESTORE(%struct.lock_object* %92, i32 %93)
  br label %95

95:                                               ; preds = %28, %85, %79
  ret void
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

declare dso_local i32 @sleepq_release(%struct.cv*) #1

declare dso_local i32 @WITNESS_SAVE(%struct.lock_object*, i32) #1

declare dso_local i32 @sleepq_wait(%struct.cv*, i32) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

declare dso_local i32 @WITNESS_RESTORE(%struct.lock_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
