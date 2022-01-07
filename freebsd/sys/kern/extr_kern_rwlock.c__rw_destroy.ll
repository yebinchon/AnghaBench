; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rwlock.c__rw_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rwlock.c__rw_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwlock = type { i64, i64, i32 }

@RW_UNLOCKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"rw lock %p not unlocked\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"rw lock %p still recursed\00", align 1
@RW_DESTROYED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rw_destroy(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.rwlock*, align 8
  store i64* %0, i64** %2, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = call %struct.rwlock* @rwlock2rw(i64* %4)
  store %struct.rwlock* %5, %struct.rwlock** %3, align 8
  %6 = load %struct.rwlock*, %struct.rwlock** %3, align 8
  %7 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RW_UNLOCKED, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load %struct.rwlock*, %struct.rwlock** %3, align 8
  %13 = bitcast %struct.rwlock* %12 to i8*
  %14 = call i32 @KASSERT(i32 %11, i8* %13)
  %15 = load %struct.rwlock*, %struct.rwlock** %3, align 8
  %16 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load %struct.rwlock*, %struct.rwlock** %3, align 8
  %21 = bitcast %struct.rwlock* %20 to i8*
  %22 = call i32 @KASSERT(i32 %19, i8* %21)
  %23 = load i64, i64* @RW_DESTROYED, align 8
  %24 = load %struct.rwlock*, %struct.rwlock** %3, align 8
  %25 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.rwlock*, %struct.rwlock** %3, align 8
  %27 = getelementptr inbounds %struct.rwlock, %struct.rwlock* %26, i32 0, i32 2
  %28 = call i32 @lock_destroy(i32* %27)
  ret void
}

declare dso_local %struct.rwlock* @rwlock2rw(i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @lock_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
