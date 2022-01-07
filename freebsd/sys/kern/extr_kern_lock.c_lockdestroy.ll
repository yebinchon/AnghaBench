; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lock.c_lockdestroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lock.c_lockdestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock = type { i64, i64, i64, i32 }

@LK_UNLOCKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"lockmgr still held\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"lockmgr still recursed\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"lockmgr still exclusive waiters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lockdestroy(%struct.lock* %0) #0 {
  %2 = alloca %struct.lock*, align 8
  store %struct.lock* %0, %struct.lock** %2, align 8
  %3 = load %struct.lock*, %struct.lock** %2, align 8
  %4 = getelementptr inbounds %struct.lock, %struct.lock* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @LK_UNLOCKED, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.lock*, %struct.lock** %2, align 8
  %11 = getelementptr inbounds %struct.lock, %struct.lock* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.lock*, %struct.lock** %2, align 8
  %17 = getelementptr inbounds %struct.lock, %struct.lock* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.lock*, %struct.lock** %2, align 8
  %23 = getelementptr inbounds %struct.lock, %struct.lock* %22, i32 0, i32 3
  %24 = call i32 @lock_destroy(i32* %23)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @lock_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
