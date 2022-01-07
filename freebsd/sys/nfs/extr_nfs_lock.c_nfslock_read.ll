; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_lock.c_nfslock_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_lock.c_nfslock_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.__lock_msg = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@nfslock_mtx = common dso_local global i32 0, align 4
@nfslock_list = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nfslockd\00", align 1
@lm_link = common dso_local global i32 0, align 4
@M_NFSLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @nfslock_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfslock_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.__lock_msg*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.uio*, %struct.uio** %6, align 8
  %11 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  store %struct.__lock_msg* null, %struct.__lock_msg** %9, align 8
  store i32 0, i32* %8, align 4
  %18 = call i32 @mtx_lock(i32* @nfslock_mtx)
  br label %19

19:                                               ; preds = %30, %17
  %20 = call i64 @TAILQ_EMPTY(i32* @nfslock_list)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* @PSOCK, align 4
  %24 = load i32, i32* @PCATCH, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @msleep(i32* @nfslock_list, i32* @nfslock_mtx, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %31

30:                                               ; preds = %22
  br label %19

31:                                               ; preds = %29, %19
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = call %struct.__lock_msg* @TAILQ_FIRST(i32* @nfslock_list)
  store %struct.__lock_msg* %35, %struct.__lock_msg** %9, align 8
  %36 = load %struct.__lock_msg*, %struct.__lock_msg** %9, align 8
  %37 = load i32, i32* @lm_link, align 4
  %38 = call i32 @TAILQ_REMOVE(i32* @nfslock_list, %struct.__lock_msg* %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = call i32 @mtx_unlock(i32* @nfslock_mtx)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load %struct.__lock_msg*, %struct.__lock_msg** %9, align 8
  %45 = load %struct.uio*, %struct.uio** %6, align 8
  %46 = call i32 @uiomove(%struct.__lock_msg* %44, i32 4, %struct.uio* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.__lock_msg*, %struct.__lock_msg** %9, align 8
  %48 = load i32, i32* @M_NFSLOCK, align 4
  %49 = call i32 @free(%struct.__lock_msg* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %39
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local %struct.__lock_msg* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.__lock_msg*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @uiomove(%struct.__lock_msg*, i32, %struct.uio*) #1

declare dso_local i32 @free(%struct.__lock_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
