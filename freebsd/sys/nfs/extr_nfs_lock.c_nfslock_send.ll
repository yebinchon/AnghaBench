; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_lock.c_nfslock_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_lock.c_nfslock_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__lock_msg = type { i32 }

@M_NFSLOCK = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@nfslock_mtx = common dso_local global i32 0, align 4
@nfslock_isopen = common dso_local global i64 0, align 8
@nfslock_list = common dso_local global i32 0, align 4
@lm_link = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__lock_msg*)* @nfslock_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfslock_send(%struct.__lock_msg* %0) #0 {
  %2 = alloca %struct.__lock_msg*, align 8
  %3 = alloca %struct.__lock_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.__lock_msg* %0, %struct.__lock_msg** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @M_NFSLOCK, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = call %struct.__lock_msg* @malloc(i32 4, i32 %5, i32 %6)
  store %struct.__lock_msg* %7, %struct.__lock_msg** %3, align 8
  %8 = call i32 @mtx_lock(i32* @nfslock_mtx)
  %9 = load i64, i64* @nfslock_isopen, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.__lock_msg*, %struct.__lock_msg** %3, align 8
  %13 = load %struct.__lock_msg*, %struct.__lock_msg** %2, align 8
  %14 = call i32 @memcpy(%struct.__lock_msg* %12, %struct.__lock_msg* %13, i32 4)
  %15 = load %struct.__lock_msg*, %struct.__lock_msg** %3, align 8
  %16 = load i32, i32* @lm_link, align 4
  %17 = call i32 @TAILQ_INSERT_TAIL(i32* @nfslock_list, %struct.__lock_msg* %15, i32 %16)
  %18 = call i32 @wakeup(i32* @nfslock_list)
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %19, %11
  %22 = call i32 @mtx_unlock(i32* @nfslock_mtx)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.__lock_msg*, %struct.__lock_msg** %3, align 8
  %27 = load i32, i32* @M_NFSLOCK, align 4
  %28 = call i32 @free(%struct.__lock_msg* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.__lock_msg* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.__lock_msg*, %struct.__lock_msg*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.__lock_msg*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.__lock_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
