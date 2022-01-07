; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.statfs_args = type { i32, i32 }
%struct.statfs = type { i32 }

@M_STATFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_statfs(%struct.thread* %0, %struct.statfs_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.statfs_args*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.statfs_args* %1, %struct.statfs_args** %4, align 8
  %7 = load i32, i32* @M_STATFS, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = call %struct.statfs* @malloc(i32 4, i32 %7, i32 %8)
  store %struct.statfs* %9, %struct.statfs** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = load %struct.statfs_args*, %struct.statfs_args** %4, align 8
  %12 = getelementptr inbounds %struct.statfs_args, %struct.statfs_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @UIO_USERSPACE, align 4
  %15 = load %struct.statfs*, %struct.statfs** %5, align 8
  %16 = call i32 @kern_statfs(%struct.thread* %10, i32 %13, i32 %14, %struct.statfs* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.statfs*, %struct.statfs** %5, align 8
  %21 = load %struct.statfs_args*, %struct.statfs_args** %4, align 8
  %22 = getelementptr inbounds %struct.statfs_args, %struct.statfs_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @copyout(%struct.statfs* %20, i32 %23, i32 4)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.statfs*, %struct.statfs** %5, align 8
  %27 = load i32, i32* @M_STATFS, align 4
  %28 = call i32 @free(%struct.statfs* %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.statfs* @malloc(i32, i32, i32) #1

declare dso_local i32 @kern_statfs(%struct.thread*, i32, i32, %struct.statfs*) #1

declare dso_local i32 @copyout(%struct.statfs*, i32, i32) #1

declare dso_local i32 @free(%struct.statfs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
