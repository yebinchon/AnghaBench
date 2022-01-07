; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rwlock.c__rw_wlock_cookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rwlock.c__rw_wlock_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwlock = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@kdb_active = common dso_local global i64 0, align 8
@curthread = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"rw_wlock() by idle thread %p on rwlock %s @ %s:%d\00", align 1
@RW_DESTROYED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"rw_wlock() of destroyed rwlock @ %s:%d\00", align 1
@LOP_NEWORDER = common dso_local global i32 0, align 4
@LOP_EXCLUSIVE = common dso_local global i32 0, align 4
@RW_UNLOCKED = common dso_local global i64 0, align 8
@rw__acquire = common dso_local global i32 0, align 4
@LOCKSTAT_WRITER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"WLOCK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rw_wlock_cookie(i64* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rwlock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64*, i64** %4, align 8
  %11 = call %struct.rwlock* @rwlock2rw(i64* %10)
  store %struct.rwlock* %11, %struct.rwlock** %7, align 8
  %12 = load i64, i64* @kdb_active, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = call i64 (...) @SCHEDULER_STOPPED()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @curthread, align 8
  %19 = call i32 @TD_IS_IDLETHREAD(i64 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %17, %14, %3
  %23 = phi i1 [ true, %14 ], [ true, %3 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* @curthread, align 8
  %26 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %27 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %24, i8* %33)
  %35 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %36 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RW_DESTROYED, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @KASSERT(i32 %40, i8* %44)
  %46 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %47 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %46, i32 0, i32 1
  %48 = load i32, i32* @LOP_NEWORDER, align 4
  %49 = load i32, i32* @LOP_EXCLUSIVE, align 4
  %50 = or i32 %48, %49
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @WITNESS_CHECKORDER(%struct.TYPE_4__* %47, i32 %50, i8* %51, i32 %52, i32* null)
  %54 = load i64, i64* @curthread, align 8
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* @RW_UNLOCKED, align 8
  store i64 %55, i64* %9, align 8
  %56 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @_rw_write_lock_fetch(%struct.rwlock* %56, i64* %9, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %22
  %61 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @_rw_wlock_hard(%struct.rwlock* %61, i64 %62, i8* %63, i32 %64)
  br label %73

66:                                               ; preds = %22
  %67 = load i32, i32* @rw__acquire, align 4
  %68 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @LOCKSTAT_WRITER, align 4
  %72 = call i32 @LOCKSTAT_PROFILE_OBTAIN_RWLOCK_SUCCESS(i32 %67, %struct.rwlock* %68, i32 0, i32 0, i8* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %75 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %74, i32 0, i32 1
  %76 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %77 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @LOCK_LOG_LOCK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %75, i32 0, i32 %78, i8* %79, i32 %80)
  %82 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %83 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %82, i32 0, i32 1
  %84 = load i32, i32* @LOP_EXCLUSIVE, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @WITNESS_LOCK(%struct.TYPE_4__* %83, i32 %84, i8* %85, i32 %86)
  %88 = load i64, i64* @curthread, align 8
  %89 = call i32 @TD_LOCKS_INC(i64 %88)
  ret void
}

declare dso_local %struct.rwlock* @rwlock2rw(i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @TD_IS_IDLETHREAD(i64) #1

declare dso_local i32 @WITNESS_CHECKORDER(%struct.TYPE_4__*, i32, i8*, i32, i32*) #1

declare dso_local i32 @_rw_write_lock_fetch(%struct.rwlock*, i64*, i64) #1

declare dso_local i32 @_rw_wlock_hard(%struct.rwlock*, i64, i8*, i32) #1

declare dso_local i32 @LOCKSTAT_PROFILE_OBTAIN_RWLOCK_SUCCESS(i32, %struct.rwlock*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @LOCK_LOG_LOCK(i8*, %struct.TYPE_4__*, i32, i32, i8*, i32) #1

declare dso_local i32 @WITNESS_LOCK(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @TD_LOCKS_INC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
