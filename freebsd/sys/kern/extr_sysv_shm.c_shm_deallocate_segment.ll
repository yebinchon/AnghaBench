; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shm_deallocate_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shm_deallocate_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_kernel = type { i32*, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@shm_committed = common dso_local global i32 0, align 4
@shm_nused = common dso_local global i32 0, align 4
@SHMSEG_FREE = common dso_local global i32 0, align 4
@RACCT_NSHM = common dso_local global i32 0, align 4
@RACCT_SHMSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shmid_kernel*)* @shm_deallocate_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shm_deallocate_segment(%struct.shmid_kernel* %0) #0 {
  %2 = alloca %struct.shmid_kernel*, align 8
  %3 = alloca i32, align 4
  store %struct.shmid_kernel* %0, %struct.shmid_kernel** %2, align 8
  %4 = call i32 (...) @SYSVSHM_ASSERT_LOCKED()
  %5 = load %struct.shmid_kernel*, %struct.shmid_kernel** %2, align 8
  %6 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @vm_object_deallocate(i32* %7)
  %9 = load %struct.shmid_kernel*, %struct.shmid_kernel** %2, align 8
  %10 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct.shmid_kernel*, %struct.shmid_kernel** %2, align 8
  %12 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @round_page(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @btoc(i32 %16)
  %18 = load i32, i32* @shm_committed, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* @shm_committed, align 4
  %22 = load i32, i32* @shm_nused, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @shm_nused, align 4
  %24 = load i32, i32* @SHMSEG_FREE, align 4
  %25 = load %struct.shmid_kernel*, %struct.shmid_kernel** %2, align 8
  %26 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  %29 = load %struct.shmid_kernel*, %struct.shmid_kernel** %2, align 8
  %30 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @RACCT_NSHM, align 4
  %33 = call i32 @racct_sub_cred(i32* %31, i32 %32, i32 1)
  %34 = load %struct.shmid_kernel*, %struct.shmid_kernel** %2, align 8
  %35 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @RACCT_SHMSIZE, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @racct_sub_cred(i32* %36, i32 %37, i32 %38)
  %40 = load %struct.shmid_kernel*, %struct.shmid_kernel** %2, align 8
  %41 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @crfree(i32* %42)
  %44 = load %struct.shmid_kernel*, %struct.shmid_kernel** %2, align 8
  %45 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  ret void
}

declare dso_local i32 @SYSVSHM_ASSERT_LOCKED(...) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @btoc(i32) #1

declare dso_local i32 @racct_sub_cred(i32*, i32, i32) #1

declare dso_local i32 @crfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
