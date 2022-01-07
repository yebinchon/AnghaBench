; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_condvar.c__cv_wait_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_condvar.c__cv_wait_sig.c"
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
@SLEEPQ_INTERRUPTIBLE = common dso_local global i32 0, align 4
@LC_SLEEPABLE = common dso_local global i32 0, align 4
@KTR_CSW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_cv_wait_sig(%struct.cv* %0, %struct.lock_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cv*, align 8
  %5 = alloca %struct.lock_object*, align 8
  %6 = alloca %struct.lock_class*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cv* %0, %struct.cv** %4, align 8
  store %struct.lock_object* %1, %struct.lock_object** %5, align 8
  %10 = load i32, i32* @lock_witness, align 4
  %11 = call i32 @WITNESS_SAVE_DECL(i32 %10)
  %12 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %12, %struct.thread** %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.cv*, %struct.cv** %4, align 8
  %14 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %15 = load %struct.thread*, %struct.thread** %7, align 8
  %16 = call i32 @CV_ASSERT(%struct.cv* %13, %struct.lock_object* %14, %struct.thread* %15)
  %17 = load i32, i32* @WARN_GIANTOK, align 4
  %18 = load i32, i32* @WARN_SLEEPOK, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %21 = load %struct.cv*, %struct.cv** %4, align 8
  %22 = getelementptr inbounds %struct.cv, %struct.cv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @WITNESS_WARN(i32 %19, %struct.lock_object* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %26 = call %struct.lock_class* @LOCK_CLASS(%struct.lock_object* %25)
  store %struct.lock_class* %26, %struct.lock_class** %6, align 8
  %27 = load %struct.thread*, %struct.thread** %7, align 8
  %28 = call i64 @SCHEDULER_STOPPED_TD(%struct.thread* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

31:                                               ; preds = %2
  %32 = load %struct.cv*, %struct.cv** %4, align 8
  %33 = call i32 @sleepq_lock(%struct.cv* %32)
  %34 = load %struct.cv*, %struct.cv** %4, align 8
  %35 = call i32 @CV_WAITERS_INC(%struct.cv* %34)
  %36 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %37 = icmp eq %struct.lock_object* %36, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Giant, i32 0, i32 0)
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @MA_OWNED, align 4
  %40 = call i32 @mtx_assert(%struct.TYPE_3__* @Giant, i32 %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = call i32 (...) @DROP_GIANT()
  %43 = load %struct.cv*, %struct.cv** %4, align 8
  %44 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %45 = load %struct.cv*, %struct.cv** %4, align 8
  %46 = getelementptr inbounds %struct.cv, %struct.cv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SLEEPQ_CONDVAR, align 4
  %49 = load i32, i32* @SLEEPQ_INTERRUPTIBLE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @sleepq_add(%struct.cv* %43, %struct.lock_object* %44, i32 %47, i32 %50, i32 0)
  %52 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %53 = icmp ne %struct.lock_object* %52, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Giant, i32 0, i32 0)
  br i1 %53, label %54, label %83

54:                                               ; preds = %41
  %55 = load %struct.lock_class*, %struct.lock_class** %6, align 8
  %56 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @LC_SLEEPABLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.cv*, %struct.cv** %4, align 8
  %63 = call i32 @sleepq_release(%struct.cv* %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %66 = load i32, i32* @lock_witness, align 4
  %67 = call i32 @WITNESS_SAVE(%struct.lock_object* %65, i32 %66)
  %68 = load %struct.lock_class*, %struct.lock_class** %6, align 8
  %69 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %68, i32 0, i32 1
  %70 = load i64 (%struct.lock_object*)*, i64 (%struct.lock_object*)** %69, align 8
  %71 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %72 = call i64 %70(%struct.lock_object* %71)
  store i64 %72, i64* %8, align 8
  %73 = load %struct.lock_class*, %struct.lock_class** %6, align 8
  %74 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LC_SLEEPABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load %struct.cv*, %struct.cv** %4, align 8
  %81 = call i32 @sleepq_lock(%struct.cv* %80)
  br label %82

82:                                               ; preds = %79, %64
  br label %83

83:                                               ; preds = %82, %41
  %84 = load %struct.cv*, %struct.cv** %4, align 8
  %85 = call i32 @sleepq_wait_sig(%struct.cv* %84, i32 0)
  store i32 %85, i32* %9, align 4
  %86 = call i32 (...) @PICKUP_GIANT()
  %87 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %88 = icmp ne %struct.lock_object* %87, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Giant, i32 0, i32 0)
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.lock_class*, %struct.lock_class** %6, align 8
  %91 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %90, i32 0, i32 2
  %92 = load i32 (%struct.lock_object*, i64)*, i32 (%struct.lock_object*, i64)** %91, align 8
  %93 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 %92(%struct.lock_object* %93, i64 %94)
  %96 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %97 = load i32, i32* @lock_witness, align 4
  %98 = call i32 @WITNESS_RESTORE(%struct.lock_object* %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %83
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %30
  %102 = load i32, i32* %3, align 4
  ret i32 %102
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

declare dso_local i32 @sleepq_wait_sig(%struct.cv*, i32) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

declare dso_local i32 @WITNESS_RESTORE(%struct.lock_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
