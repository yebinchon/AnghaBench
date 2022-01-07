; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_semunload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_semunload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@semtot = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@sem_syscalls = common dso_local global i32 0, align 4
@process_exit = common dso_local global i32 0, align 4
@semexit_tag = common dso_local global i32 0, align 4
@sem_prison_slot = common dso_local global i64 0, align 8
@sem = common dso_local global i32* null, align 8
@M_SEM = common dso_local global i32 0, align 4
@sema = common dso_local global i32* null, align 8
@semu = common dso_local global i32* null, align 8
@seminfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sema_mtx = common dso_local global i32* null, align 8
@sem_mtx = common dso_local global i32 0, align 4
@sem_undo_mtx = common dso_local global i32 0, align 4
@sem32_syscalls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @semunload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @semunload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @semtot, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @EBUSY, align 4
  store i32 %6, i32* %1, align 4
  br label %47

7:                                                ; preds = %0
  %8 = load i32, i32* @sem_syscalls, align 4
  %9 = call i32 @syscall_helper_unregister(i32 %8)
  %10 = load i32, i32* @process_exit, align 4
  %11 = load i32, i32* @semexit_tag, align 4
  %12 = call i32 @EVENTHANDLER_DEREGISTER(i32 %10, i32 %11)
  %13 = load i64, i64* @sem_prison_slot, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load i64, i64* @sem_prison_slot, align 8
  %17 = call i32 @osd_jail_deregister(i64 %16)
  br label %18

18:                                               ; preds = %15, %7
  %19 = load i32*, i32** @sem, align 8
  %20 = load i32, i32* @M_SEM, align 4
  %21 = call i32 @free(i32* %19, i32 %20)
  %22 = load i32*, i32** @sema, align 8
  %23 = load i32, i32* @M_SEM, align 4
  %24 = call i32 @free(i32* %22, i32 %23)
  %25 = load i32*, i32** @semu, align 8
  %26 = load i32, i32* @M_SEM, align 4
  %27 = call i32 @free(i32* %25, i32 %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %38, %18
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @seminfo, i32 0, i32 0), align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32*, i32** @sema_mtx, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @mtx_destroy(i32* %36)
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load i32*, i32** @sema_mtx, align 8
  %43 = load i32, i32* @M_SEM, align 4
  %44 = call i32 @free(i32* %42, i32 %43)
  %45 = call i32 @mtx_destroy(i32* @sem_mtx)
  %46 = call i32 @mtx_destroy(i32* @sem_undo_mtx)
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %41, %5
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @syscall_helper_unregister(i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

declare dso_local i32 @osd_jail_deregister(i64) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
