; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_condvar.c__cv_wait_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_condvar.c__cv_wait_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_2__ = type { %struct.lock_object }
%struct.lock_object = type { i32 }
%struct.cv = type { i32 }
%struct.lock_class = type { i32, i32 (%struct.lock_object*)* }

@curthread = common dso_local global %struct.thread* null, align 8
@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Waiting on \22%s\22\00", align 1
@Giant = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cv_wait_unlock cannot be used with Giant\00", align 1
@SLEEPQ_CONDVAR = common dso_local global i32 0, align 4
@LC_SLEEPABLE = common dso_local global i32 0, align 4
@KTR_CSW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_cv_wait_unlock(%struct.cv* %0, %struct.lock_object* %1) #0 {
  %3 = alloca %struct.cv*, align 8
  %4 = alloca %struct.lock_object*, align 8
  %5 = alloca %struct.lock_class*, align 8
  %6 = alloca %struct.thread*, align 8
  store %struct.cv* %0, %struct.cv** %3, align 8
  store %struct.lock_object* %1, %struct.lock_object** %4, align 8
  %7 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %7, %struct.thread** %6, align 8
  %8 = load %struct.cv*, %struct.cv** %3, align 8
  %9 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %10 = load %struct.thread*, %struct.thread** %6, align 8
  %11 = call i32 @CV_ASSERT(%struct.cv* %8, %struct.lock_object* %9, %struct.thread* %10)
  %12 = load i32, i32* @WARN_GIANTOK, align 4
  %13 = load i32, i32* @WARN_SLEEPOK, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %16 = load %struct.cv*, %struct.cv** %3, align 8
  %17 = getelementptr inbounds %struct.cv, %struct.cv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @WITNESS_WARN(i32 %14, %struct.lock_object* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %21 = icmp ne %struct.lock_object* %20, getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Giant, i32 0, i32 0)
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %25 = call %struct.lock_class* @LOCK_CLASS(%struct.lock_object* %24)
  store %struct.lock_class* %25, %struct.lock_class** %5, align 8
  %26 = load %struct.thread*, %struct.thread** %6, align 8
  %27 = call i64 @SCHEDULER_STOPPED_TD(%struct.thread* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.lock_class*, %struct.lock_class** %5, align 8
  %31 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %30, i32 0, i32 1
  %32 = load i32 (%struct.lock_object*)*, i32 (%struct.lock_object*)** %31, align 8
  %33 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %34 = call i32 %32(%struct.lock_object* %33)
  br label %76

35:                                               ; preds = %2
  %36 = load %struct.cv*, %struct.cv** %3, align 8
  %37 = call i32 @sleepq_lock(%struct.cv* %36)
  %38 = load %struct.cv*, %struct.cv** %3, align 8
  %39 = call i32 @CV_WAITERS_INC(%struct.cv* %38)
  %40 = call i32 (...) @DROP_GIANT()
  %41 = load %struct.cv*, %struct.cv** %3, align 8
  %42 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %43 = load %struct.cv*, %struct.cv** %3, align 8
  %44 = getelementptr inbounds %struct.cv, %struct.cv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SLEEPQ_CONDVAR, align 4
  %47 = call i32 @sleepq_add(%struct.cv* %41, %struct.lock_object* %42, i32 %45, i32 %46, i32 0)
  %48 = load %struct.lock_class*, %struct.lock_class** %5, align 8
  %49 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @LC_SLEEPABLE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load %struct.cv*, %struct.cv** %3, align 8
  %56 = call i32 @sleepq_release(%struct.cv* %55)
  br label %57

57:                                               ; preds = %54, %35
  %58 = load %struct.lock_class*, %struct.lock_class** %5, align 8
  %59 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %58, i32 0, i32 1
  %60 = load i32 (%struct.lock_object*)*, i32 (%struct.lock_object*)** %59, align 8
  %61 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %62 = call i32 %60(%struct.lock_object* %61)
  %63 = load %struct.lock_class*, %struct.lock_class** %5, align 8
  %64 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @LC_SLEEPABLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.cv*, %struct.cv** %3, align 8
  %71 = call i32 @sleepq_lock(%struct.cv* %70)
  br label %72

72:                                               ; preds = %69, %57
  %73 = load %struct.cv*, %struct.cv** %3, align 8
  %74 = call i32 @sleepq_wait(%struct.cv* %73, i32 0)
  %75 = call i32 (...) @PICKUP_GIANT()
  br label %76

76:                                               ; preds = %72, %29
  ret void
}

declare dso_local i32 @CV_ASSERT(%struct.cv*, %struct.lock_object*, %struct.thread*) #1

declare dso_local i32 @WITNESS_WARN(i32, %struct.lock_object*, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.lock_class* @LOCK_CLASS(%struct.lock_object*) #1

declare dso_local i64 @SCHEDULER_STOPPED_TD(%struct.thread*) #1

declare dso_local i32 @sleepq_lock(%struct.cv*) #1

declare dso_local i32 @CV_WAITERS_INC(%struct.cv*) #1

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @sleepq_add(%struct.cv*, %struct.lock_object*, i32, i32, i32) #1

declare dso_local i32 @sleepq_release(%struct.cv*) #1

declare dso_local i32 @sleepq_wait(%struct.cv*, i32) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
