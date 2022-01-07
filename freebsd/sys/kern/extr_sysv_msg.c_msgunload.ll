; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_msgunload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_msgunload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.msqid_kernel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@msg_syscalls = common dso_local global i32 0, align 4
@msginfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@msqids = common dso_local global %struct.msqid_kernel* null, align 8
@MSG_LOCKED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@msg_prison_slot = common dso_local global i64 0, align 8
@msgpool = common dso_local global %struct.msqid_kernel* null, align 8
@M_MSG = common dso_local global i32 0, align 4
@msgmaps = common dso_local global %struct.msqid_kernel* null, align 8
@msghdrs = common dso_local global %struct.msqid_kernel* null, align 8
@msq_mtx = common dso_local global i32 0, align 4
@msg32_syscalls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @msgunload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgunload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.msqid_kernel*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @msg_syscalls, align 4
  %5 = call i32 @syscall_helper_unregister(i32 %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %31, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msginfo, i32 0, i32 0), align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = load %struct.msqid_kernel*, %struct.msqid_kernel** @msqids, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %11, i64 %13
  store %struct.msqid_kernel* %14, %struct.msqid_kernel** %2, align 8
  %15 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %16 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %10
  %21 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %22 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MSG_LOCKED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20, %10
  br label %34

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %6

34:                                               ; preds = %29, %6
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msginfo, i32 0, i32 0), align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @EBUSY, align 4
  store i32 %39, i32* %1, align 4
  br label %60

40:                                               ; preds = %34
  %41 = load i64, i64* @msg_prison_slot, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* @msg_prison_slot, align 8
  %45 = call i32 @osd_jail_deregister(i64 %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.msqid_kernel*, %struct.msqid_kernel** @msgpool, align 8
  %48 = load i32, i32* @M_MSG, align 4
  %49 = call i32 @free(%struct.msqid_kernel* %47, i32 %48)
  %50 = load %struct.msqid_kernel*, %struct.msqid_kernel** @msgmaps, align 8
  %51 = load i32, i32* @M_MSG, align 4
  %52 = call i32 @free(%struct.msqid_kernel* %50, i32 %51)
  %53 = load %struct.msqid_kernel*, %struct.msqid_kernel** @msghdrs, align 8
  %54 = load i32, i32* @M_MSG, align 4
  %55 = call i32 @free(%struct.msqid_kernel* %53, i32 %54)
  %56 = load %struct.msqid_kernel*, %struct.msqid_kernel** @msqids, align 8
  %57 = load i32, i32* @M_MSG, align 4
  %58 = call i32 @free(%struct.msqid_kernel* %56, i32 %57)
  %59 = call i32 @mtx_destroy(i32* @msq_mtx)
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %46, %38
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @syscall_helper_unregister(i32) #1

declare dso_local i32 @osd_jail_deregister(i64) #1

declare dso_local i32 @free(%struct.msqid_kernel*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
