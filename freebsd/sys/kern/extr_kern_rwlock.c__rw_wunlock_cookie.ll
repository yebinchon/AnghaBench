; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rwlock.c__rw_wunlock_cookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rwlock.c__rw_wunlock_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwlock = type { i64, i32, i32 }

@RW_DESTROYED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"rw_wunlock() of destroyed rwlock @ %s:%d\00", align 1
@RA_WLOCKED = common dso_local global i32 0, align 4
@LOP_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"WUNLOCK\00", align 1
@curthread = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rw_wunlock_cookie(i64* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rwlock*, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64*, i64** %4, align 8
  %9 = call %struct.rwlock* @rwlock2rw(i64* %8)
  store %struct.rwlock* %9, %struct.rwlock** %7, align 8
  %10 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %11 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RW_DESTROYED, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %15, i8* %19)
  %21 = load i64*, i64** %4, align 8
  %22 = load i32, i32* @RA_WLOCKED, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @__rw_assert(i64* %21, i32 %22, i8* %23, i32 %24)
  %26 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %27 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %26, i32 0, i32 2
  %28 = load i32, i32* @LOP_EXCLUSIVE, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @WITNESS_UNLOCK(i32* %27, i32 %28, i8* %29, i32 %30)
  %32 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %33 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %32, i32 0, i32 2
  %34 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %35 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @LOCK_LOG_LOCK(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %33, i32 0, i32 %36, i8* %37, i32 %38)
  %40 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %41 = load i64, i64* @curthread, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @__rw_wunlock(%struct.rwlock* %40, i64 %41, i8* %42, i32 %43)
  %45 = load i64, i64* @curthread, align 8
  %46 = call i32 @TD_LOCKS_DEC(i64 %45)
  ret void
}

declare dso_local %struct.rwlock* @rwlock2rw(i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @__rw_assert(i64*, i32, i8*, i32) #1

declare dso_local i32 @WITNESS_UNLOCK(i32*, i32, i8*, i32) #1

declare dso_local i32 @LOCK_LOG_LOCK(i8*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @__rw_wunlock(%struct.rwlock*, i64, i8*, i32) #1

declare dso_local i32 @TD_LOCKS_DEC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
