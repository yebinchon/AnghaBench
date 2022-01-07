; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shm_prison_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shm_prison_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_kernel = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.prison* }
%struct.prison = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@shmalloced = common dso_local global i32 0, align 4
@shmsegs = common dso_local global %struct.shmid_kernel* null, align 8
@SHMSEG_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prison*)* @shm_prison_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shm_prison_cleanup(%struct.prison* %0) #0 {
  %2 = alloca %struct.prison*, align 8
  %3 = alloca %struct.shmid_kernel*, align 8
  %4 = alloca i32, align 4
  store %struct.prison* %0, %struct.prison** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %40, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @shmalloced, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %5
  %10 = load %struct.shmid_kernel*, %struct.shmid_kernel** @shmsegs, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %10, i64 %12
  store %struct.shmid_kernel* %13, %struct.shmid_kernel** %3, align 8
  %14 = load %struct.shmid_kernel*, %struct.shmid_kernel** %3, align 8
  %15 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SHMSEG_ALLOCATED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %9
  %23 = load %struct.shmid_kernel*, %struct.shmid_kernel** %3, align 8
  %24 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.shmid_kernel*, %struct.shmid_kernel** %3, align 8
  %29 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.prison*, %struct.prison** %31, align 8
  %33 = load %struct.prison*, %struct.prison** %2, align 8
  %34 = icmp eq %struct.prison* %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.shmid_kernel*, %struct.shmid_kernel** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @shm_remove(%struct.shmid_kernel* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %27, %22, %9
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %5

43:                                               ; preds = %5
  ret void
}

declare dso_local i32 @shm_remove(%struct.shmid_kernel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
