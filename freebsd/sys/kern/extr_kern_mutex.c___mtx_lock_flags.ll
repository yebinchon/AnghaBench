; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c___mtx_lock_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c___mtx_lock_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@kdb_active = common dso_local global i64 0, align 8
@curthread = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"mtx_lock() by idle thread %p on sleep mutex %s @ %s:%d\00", align 1
@MTX_DESTROYED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"mtx_lock() of destroyed mutex @ %s:%d\00", align 1
@lock_class_mtx_sleep = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"mtx_lock() of spin mutex %s @ %s:%d\00", align 1
@MTX_RECURSE = common dso_local global i32 0, align 4
@LOP_NEWORDER = common dso_local global i32 0, align 4
@LOP_EXCLUSIVE = common dso_local global i32 0, align 4
@MTX_UNOWNED = common dso_local global i64 0, align 8
@adaptive__acquire = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mtx_lock_flags(i64* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64*, i64** %5, align 8
  %13 = call %struct.mtx* @mtxlock2mtx(i64* %12)
  store %struct.mtx* %13, %struct.mtx** %9, align 8
  %14 = load i64, i64* @kdb_active, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = call i64 (...) @SCHEDULER_STOPPED()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @curthread, align 8
  %21 = call i32 @TD_IS_IDLETHREAD(i64 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %19, %16, %4
  %25 = phi i1 [ true, %16 ], [ true, %4 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* @curthread, align 8
  %28 = load %struct.mtx*, %struct.mtx** %9, align 8
  %29 = getelementptr inbounds %struct.mtx, %struct.mtx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %26, i8* %35)
  %37 = load %struct.mtx*, %struct.mtx** %9, align 8
  %38 = getelementptr inbounds %struct.mtx, %struct.mtx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MTX_DESTROYED, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @KASSERT(i32 %42, i8* %46)
  %48 = load %struct.mtx*, %struct.mtx** %9, align 8
  %49 = getelementptr inbounds %struct.mtx, %struct.mtx* %48, i32 0, i32 1
  %50 = call i32* @LOCK_CLASS(%struct.TYPE_5__* %49)
  %51 = icmp eq i32* %50, @lock_class_mtx_sleep
  %52 = zext i1 %51 to i32
  %53 = load %struct.mtx*, %struct.mtx** %9, align 8
  %54 = getelementptr inbounds %struct.mtx, %struct.mtx* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @KASSERT(i32 %52, i8* %60)
  %62 = load %struct.mtx*, %struct.mtx** %9, align 8
  %63 = getelementptr inbounds %struct.mtx, %struct.mtx* %62, i32 0, i32 1
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MTX_RECURSE, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load i32, i32* @LOP_NEWORDER, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @LOP_EXCLUSIVE, align 4
  %71 = or i32 %69, %70
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @WITNESS_CHECKORDER(%struct.TYPE_5__* %63, i32 %71, i8* %72, i32 %73, i32* null)
  %75 = load i64, i64* @curthread, align 8
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* @MTX_UNOWNED, align 8
  store i64 %76, i64* %11, align 8
  %77 = load %struct.mtx*, %struct.mtx** %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @_mtx_obtain_lock_fetch(%struct.mtx* %77, i64* %11, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %24
  %82 = load %struct.mtx*, %struct.mtx** %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @_mtx_lock_sleep(%struct.mtx* %82, i64 %83, i32 %84, i8* %85, i32 %86)
  br label %94

88:                                               ; preds = %24
  %89 = load i32, i32* @adaptive__acquire, align 4
  %90 = load %struct.mtx*, %struct.mtx** %9, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @LOCKSTAT_PROFILE_OBTAIN_LOCK_SUCCESS(i32 %89, %struct.mtx* %90, i32 0, i32 0, i8* %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %81
  %95 = load %struct.mtx*, %struct.mtx** %9, align 8
  %96 = getelementptr inbounds %struct.mtx, %struct.mtx* %95, i32 0, i32 1
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.mtx*, %struct.mtx** %9, align 8
  %99 = getelementptr inbounds %struct.mtx, %struct.mtx* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @LOCK_LOG_LOCK(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_5__* %96, i32 %97, i32 %100, i8* %101, i32 %102)
  %104 = load %struct.mtx*, %struct.mtx** %9, align 8
  %105 = getelementptr inbounds %struct.mtx, %struct.mtx* %104, i32 0, i32 1
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @MTX_RECURSE, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = load i32, i32* @LOP_EXCLUSIVE, align 4
  %111 = or i32 %109, %110
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @WITNESS_LOCK(%struct.TYPE_5__* %105, i32 %111, i8* %112, i32 %113)
  %115 = load i64, i64* @curthread, align 8
  %116 = call i32 @TD_LOCKS_INC(i64 %115)
  ret void
}

declare dso_local %struct.mtx* @mtxlock2mtx(i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @TD_IS_IDLETHREAD(i64) #1

declare dso_local i32* @LOCK_CLASS(%struct.TYPE_5__*) #1

declare dso_local i32 @WITNESS_CHECKORDER(%struct.TYPE_5__*, i32, i8*, i32, i32*) #1

declare dso_local i32 @_mtx_obtain_lock_fetch(%struct.mtx*, i64*, i64) #1

declare dso_local i32 @_mtx_lock_sleep(%struct.mtx*, i64, i32, i8*, i32) #1

declare dso_local i32 @LOCKSTAT_PROFILE_OBTAIN_LOCK_SUCCESS(i32, %struct.mtx*, i32, i32, i8*, i32) #1

declare dso_local i32 @LOCK_LOG_LOCK(i8*, %struct.TYPE_5__*, i32, i32, i8*, i32) #1

declare dso_local i32 @WITNESS_LOCK(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @TD_LOCKS_INC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
