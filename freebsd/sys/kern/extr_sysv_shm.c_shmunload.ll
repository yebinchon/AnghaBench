; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shmunload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shmunload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@shm_nused = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@shm_syscalls = common dso_local global i32 0, align 4
@shm_prison_slot = common dso_local global i64 0, align 8
@shmalloced = common dso_local global i32 0, align 4
@shmsegs = common dso_local global %struct.TYPE_8__* null, align 8
@SHMSEG_FREE = common dso_local global i64 0, align 8
@M_SHM = common dso_local global i32 0, align 4
@shmexit_hook = common dso_local global i32* null, align 8
@shmfork_hook = common dso_local global i32* null, align 8
@sysvshmsx = common dso_local global i32 0, align 4
@shm32_syscalls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @shmunload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmunload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @shm_nused, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @EBUSY, align 4
  store i32 %6, i32* %1, align 4
  br label %48

7:                                                ; preds = %0
  %8 = load i32, i32* @shm_syscalls, align 4
  %9 = call i32 @syscall_helper_unregister(i32 %8)
  %10 = load i64, i64* @shm_prison_slot, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i64, i64* @shm_prison_slot, align 8
  %14 = call i32 @osd_jail_deregister(i64 %13)
  br label %15

15:                                               ; preds = %12, %7
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @shmalloced, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shmsegs, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SHMSEG_FREE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shmsegs, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @vm_object_deallocate(i32 %37)
  br label %39

39:                                               ; preds = %31, %20
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shmsegs, align 8
  %45 = load i32, i32* @M_SHM, align 4
  %46 = call i32 @free(%struct.TYPE_8__* %44, i32 %45)
  store i32* null, i32** @shmexit_hook, align 8
  store i32* null, i32** @shmfork_hook, align 8
  %47 = call i32 @sx_destroy(i32* @sysvshmsx)
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %43, %5
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @syscall_helper_unregister(i32) #1

declare dso_local i32 @osd_jail_deregister(i64) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
