; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shmrealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shmrealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.shmid_kernel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@shmalloced = common dso_local global i32 0, align 4
@shminfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@M_SHM = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@shmsegs = common dso_local global %struct.shmid_kernel* null, align 8
@SHMSEG_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @shmrealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shmrealloc() #0 {
  %1 = alloca %struct.shmid_kernel*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @SYSVSHM_ASSERT_LOCKED()
  %4 = load i32, i32* @shmalloced, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shminfo, i32 0, i32 0), align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %65

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shminfo, i32 0, i32 0), align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 16
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @M_SHM, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.shmid_kernel* @malloc(i32 %12, i32 %13, i32 %16)
  store %struct.shmid_kernel* %17, %struct.shmid_kernel** %1, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %32, %8
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @shmalloced, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.shmid_kernel*, %struct.shmid_kernel** @shmsegs, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %23, i64 %25
  %27 = load %struct.shmid_kernel*, %struct.shmid_kernel** %1, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %27, i64 %29
  %31 = call i32 @bcopy(%struct.shmid_kernel* %26, %struct.shmid_kernel* %30, i32 16)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %18

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shminfo, i32 0, i32 0), align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i32, i32* @SHMSEG_FREE, align 4
  %42 = load %struct.shmid_kernel*, %struct.shmid_kernel** %1, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %42, i64 %44
  %46 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %41, i32* %48, align 8
  %49 = load %struct.shmid_kernel*, %struct.shmid_kernel** %1, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %49, i64 %51
  %53 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %2, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %2, align 4
  br label %36

59:                                               ; preds = %36
  %60 = load %struct.shmid_kernel*, %struct.shmid_kernel** @shmsegs, align 8
  %61 = load i32, i32* @M_SHM, align 4
  %62 = call i32 @free(%struct.shmid_kernel* %60, i32 %61)
  %63 = load %struct.shmid_kernel*, %struct.shmid_kernel** %1, align 8
  store %struct.shmid_kernel* %63, %struct.shmid_kernel** @shmsegs, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shminfo, i32 0, i32 0), align 4
  store i32 %64, i32* @shmalloced, align 4
  br label %65

65:                                               ; preds = %59, %7
  ret void
}

declare dso_local i32 @SYSVSHM_ASSERT_LOCKED(...) #1

declare dso_local %struct.shmid_kernel* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.shmid_kernel*, %struct.shmid_kernel*, i32) #1

declare dso_local i32 @free(%struct.shmid_kernel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
