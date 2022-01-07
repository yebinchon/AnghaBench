; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lock.c_lockmgr_note_shared_acquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lock.c_lockmgr_note_shared_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock = type { i32 }

@lockmgr__acquire = common dso_local global i32 0, align 4
@LOCKSTAT_READER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"SLOCK\00", align 1
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lock*, i32, i32, i8*, i32, i32)* @lockmgr_note_shared_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lockmgr_note_shared_acquire(%struct.lock* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lock* %0, %struct.lock** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @lockmgr__acquire, align 4
  %14 = load %struct.lock*, %struct.lock** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @LOCKSTAT_READER, align 4
  %20 = call i32 @LOCKSTAT_PROFILE_OBTAIN_RWLOCK_SUCCESS(i32 %13, %struct.lock* %14, i32 %15, i32 %16, i8* %17, i32 %18, i32 %19)
  %21 = load %struct.lock*, %struct.lock** %7, align 8
  %22 = getelementptr inbounds %struct.lock, %struct.lock* %21, i32 0, i32 0
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @LOCK_LOG_LOCK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %22, i32 0, i32 0, i8* %23, i32 %24)
  %26 = load %struct.lock*, %struct.lock** %7, align 8
  %27 = getelementptr inbounds %struct.lock, %struct.lock* %26, i32 0, i32 0
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @LK_TRYWIT(i32 %28)
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @WITNESS_LOCK(i32* %27, i32 %29, i8* %30, i32 %31)
  %33 = load i32, i32* @curthread, align 4
  %34 = call i32 @TD_LOCKS_INC(i32 %33)
  %35 = load i32, i32* @curthread, align 4
  %36 = call i32 @TD_SLOCKS_INC(i32 %35)
  %37 = load %struct.lock*, %struct.lock** %7, align 8
  %38 = call i32 @STACK_SAVE(%struct.lock* %37)
  ret void
}

declare dso_local i32 @LOCKSTAT_PROFILE_OBTAIN_RWLOCK_SUCCESS(i32, %struct.lock*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @LOCK_LOG_LOCK(i8*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @WITNESS_LOCK(i32*, i32, i8*, i32) #1

declare dso_local i32 @LK_TRYWIT(i32) #1

declare dso_local i32 @TD_LOCKS_INC(i32) #1

declare dso_local i32 @TD_SLOCKS_INC(i32) #1

declare dso_local i32 @STACK_SAVE(%struct.lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
