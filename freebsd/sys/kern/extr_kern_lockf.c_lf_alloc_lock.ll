; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_alloc_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_alloc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.lockf_entry = type { %struct.lock_owner* }
%struct.lock_owner = type { i64, i32 }

@M_LOCKF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@lf_lock_owners = common dso_local global %struct.TYPE_2__* null, align 8
@lockf_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lockf_entry* (%struct.lock_owner*)* @lf_alloc_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lockf_entry* @lf_alloc_lock(%struct.lock_owner* %0) #0 {
  %2 = alloca %struct.lock_owner*, align 8
  %3 = alloca %struct.lockf_entry*, align 8
  store %struct.lock_owner* %0, %struct.lock_owner** %2, align 8
  %4 = load i32, i32* @M_LOCKF, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.lockf_entry* @malloc(i32 8, i32 %4, i32 %7)
  store %struct.lockf_entry* %8, %struct.lockf_entry** %3, align 8
  %9 = load %struct.lock_owner*, %struct.lock_owner** %2, align 8
  %10 = icmp ne %struct.lock_owner* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lf_lock_owners, align 8
  %13 = load %struct.lock_owner*, %struct.lock_owner** %2, align 8
  %14 = getelementptr inbounds %struct.lock_owner, %struct.lock_owner* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @sx_xlock(i32* %17)
  %19 = load %struct.lock_owner*, %struct.lock_owner** %2, align 8
  %20 = getelementptr inbounds %struct.lock_owner, %struct.lock_owner* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lf_lock_owners, align 8
  %24 = load %struct.lock_owner*, %struct.lock_owner** %2, align 8
  %25 = getelementptr inbounds %struct.lock_owner, %struct.lock_owner* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @sx_xunlock(i32* %28)
  %30 = load %struct.lock_owner*, %struct.lock_owner** %2, align 8
  %31 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %32 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %31, i32 0, i32 0
  store %struct.lock_owner* %30, %struct.lock_owner** %32, align 8
  br label %33

33:                                               ; preds = %11, %1
  %34 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  ret %struct.lockf_entry* %34
}

declare dso_local %struct.lockf_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
