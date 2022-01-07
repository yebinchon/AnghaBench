; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fstatfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fstatfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fstatfs_args = type { i32, i32 }
%struct.statfs = type { i32 }

@M_STATFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fstatfs(%struct.thread* %0, %struct.fstatfs_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.fstatfs_args*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.fstatfs_args* %1, %struct.fstatfs_args** %4, align 8
  %7 = load i32, i32* @M_STATFS, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = call %struct.statfs* @malloc(i32 4, i32 %7, i32 %8)
  store %struct.statfs* %9, %struct.statfs** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = load %struct.fstatfs_args*, %struct.fstatfs_args** %4, align 8
  %12 = getelementptr inbounds %struct.fstatfs_args, %struct.fstatfs_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.statfs*, %struct.statfs** %5, align 8
  %15 = call i32 @kern_fstatfs(%struct.thread* %10, i32 %13, %struct.statfs* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.statfs*, %struct.statfs** %5, align 8
  %20 = load %struct.fstatfs_args*, %struct.fstatfs_args** %4, align 8
  %21 = getelementptr inbounds %struct.fstatfs_args, %struct.fstatfs_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @copyout(%struct.statfs* %19, i32 %22, i32 4)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.statfs*, %struct.statfs** %5, align 8
  %26 = load i32, i32* @M_STATFS, align 4
  %27 = call i32 @free(%struct.statfs* %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.statfs* @malloc(i32, i32, i32) #1

declare dso_local i32 @kern_fstatfs(%struct.thread*, i32, %struct.statfs*) #1

declare dso_local i32 @copyout(%struct.statfs*, i32, i32) #1

declare dso_local i32 @free(%struct.statfs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
