; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_lock_rm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_lock_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_object = type { i32 }
%struct.rmlock = type { i32 }
%struct.rm_priotracker = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lock_object*, i64)* @lock_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lock_rm(%struct.lock_object* %0, i64 %1) #0 {
  %3 = alloca %struct.lock_object*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rmlock*, align 8
  %6 = alloca %struct.rm_priotracker*, align 8
  store %struct.lock_object* %0, %struct.lock_object** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.lock_object*, %struct.lock_object** %3, align 8
  %8 = bitcast %struct.lock_object* %7 to %struct.rmlock*
  store %struct.rmlock* %8, %struct.rmlock** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %13 = call i32 @rm_wlock(%struct.rmlock* %12)
  br label %20

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = inttoptr i64 %15 to %struct.rm_priotracker*
  store %struct.rm_priotracker* %16, %struct.rm_priotracker** %6, align 8
  %17 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %18 = load %struct.rm_priotracker*, %struct.rm_priotracker** %6, align 8
  %19 = call i32 @rm_rlock(%struct.rmlock* %17, %struct.rm_priotracker* %18)
  br label %20

20:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @rm_wlock(%struct.rmlock*) #1

declare dso_local i32 @rm_rlock(%struct.rmlock*, %struct.rm_priotracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
