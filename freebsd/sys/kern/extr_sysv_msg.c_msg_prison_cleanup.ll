; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_msg_prison_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_msg_prison_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.msqid_kernel = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.prison* }
%struct.prison = type { i32 }
%struct.TYPE_4__ = type { i64 }

@msq_mtx = common dso_local global i32 0, align 4
@msginfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@msqids = common dso_local global %struct.msqid_kernel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prison*)* @msg_prison_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msg_prison_cleanup(%struct.prison* %0) #0 {
  %2 = alloca %struct.prison*, align 8
  %3 = alloca %struct.msqid_kernel*, align 8
  %4 = alloca i32, align 4
  store %struct.prison* %0, %struct.prison** %2, align 8
  %5 = call i32 @mtx_lock(i32* @msq_mtx)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %37, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msginfo, i32 0, i32 0), align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = load %struct.msqid_kernel*, %struct.msqid_kernel** @msqids, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %11, i64 %13
  store %struct.msqid_kernel* %14, %struct.msqid_kernel** %3, align 8
  %15 = load %struct.msqid_kernel*, %struct.msqid_kernel** %3, align 8
  %16 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %10
  %21 = load %struct.msqid_kernel*, %struct.msqid_kernel** %3, align 8
  %22 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.msqid_kernel*, %struct.msqid_kernel** %3, align 8
  %27 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.prison*, %struct.prison** %29, align 8
  %31 = load %struct.prison*, %struct.prison** %2, align 8
  %32 = icmp eq %struct.prison* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.msqid_kernel*, %struct.msqid_kernel** %3, align 8
  %35 = call i32 @msq_remove(%struct.msqid_kernel* %34)
  br label %36

36:                                               ; preds = %33, %25, %20, %10
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %6

40:                                               ; preds = %6
  %41 = call i32 @mtx_unlock(i32* @msq_mtx)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msq_remove(%struct.msqid_kernel*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
