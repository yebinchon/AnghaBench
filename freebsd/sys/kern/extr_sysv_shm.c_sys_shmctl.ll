; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_sys_shmctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_sys_shmctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.shmctl_args = type { i32, i32, i32 }
%struct.shmid_ds = type { i32 }

@IPC_INFO = common dso_local global i32 0, align 4
@SHM_INFO = common dso_local global i32 0, align 4
@SHM_STAT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPC_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_shmctl(%struct.thread* %0, %struct.shmctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.shmctl_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.shmid_ds, align 4
  %8 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.shmctl_args* %1, %struct.shmctl_args** %5, align 8
  %9 = load %struct.shmctl_args*, %struct.shmctl_args** %5, align 8
  %10 = getelementptr inbounds %struct.shmctl_args, %struct.shmctl_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IPC_INFO, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load %struct.shmctl_args*, %struct.shmctl_args** %5, align 8
  %16 = getelementptr inbounds %struct.shmctl_args, %struct.shmctl_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SHM_INFO, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.shmctl_args*, %struct.shmctl_args** %5, align 8
  %22 = getelementptr inbounds %struct.shmctl_args, %struct.shmctl_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SHM_STAT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %14, %2
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %20
  %29 = load %struct.shmctl_args*, %struct.shmctl_args** %5, align 8
  %30 = getelementptr inbounds %struct.shmctl_args, %struct.shmctl_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IPC_SET, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.shmctl_args*, %struct.shmctl_args** %5, align 8
  %36 = getelementptr inbounds %struct.shmctl_args, %struct.shmctl_args* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @copyin(i32 %37, %struct.shmid_ds* %7, i32 4)
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %66

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.thread*, %struct.thread** %4, align 8
  %44 = load %struct.shmctl_args*, %struct.shmctl_args** %5, align 8
  %45 = getelementptr inbounds %struct.shmctl_args, %struct.shmctl_args* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.shmctl_args*, %struct.shmctl_args** %5, align 8
  %48 = getelementptr inbounds %struct.shmctl_args, %struct.shmctl_args* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %struct.shmid_ds* %7 to i8*
  %51 = call i32 @kern_shmctl(%struct.thread* %43, i32 %46, i32 %49, i8* %50, i64* %8)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %66

55:                                               ; preds = %42
  %56 = load %struct.shmctl_args*, %struct.shmctl_args** %5, align 8
  %57 = getelementptr inbounds %struct.shmctl_args, %struct.shmctl_args* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %65 [
    i32 128, label %59
  ]

59:                                               ; preds = %55
  %60 = load %struct.shmctl_args*, %struct.shmctl_args** %5, align 8
  %61 = getelementptr inbounds %struct.shmctl_args, %struct.shmctl_args* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @copyout(%struct.shmid_ds* %7, i32 %62, i64 %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %55, %59
  br label %66

66:                                               ; preds = %65, %54, %40
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.thread*, %struct.thread** %4, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 -1, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %26
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @copyin(i32, %struct.shmid_ds*, i32) #1

declare dso_local i32 @kern_shmctl(%struct.thread*, i32, i32, i8*, i64*) #1

declare dso_local i32 @copyout(%struct.shmid_ds*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
