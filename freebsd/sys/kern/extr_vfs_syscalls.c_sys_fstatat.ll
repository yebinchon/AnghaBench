; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fstatat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fstatat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fstatat_args = type { i32, i32, i32, i32 }
%struct.stat = type { i32 }

@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fstatat(%struct.thread* %0, %struct.fstatat_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.fstatat_args*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.fstatat_args* %1, %struct.fstatat_args** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = load %struct.fstatat_args*, %struct.fstatat_args** %4, align 8
  %9 = getelementptr inbounds %struct.fstatat_args, %struct.fstatat_args* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fstatat_args*, %struct.fstatat_args** %4, align 8
  %12 = getelementptr inbounds %struct.fstatat_args, %struct.fstatat_args* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fstatat_args*, %struct.fstatat_args** %4, align 8
  %15 = getelementptr inbounds %struct.fstatat_args, %struct.fstatat_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @UIO_USERSPACE, align 4
  %18 = call i32 @kern_statat(%struct.thread* %7, i32 %10, i32 %13, i32 %16, i32 %17, %struct.stat* %5, i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.fstatat_args*, %struct.fstatat_args** %4, align 8
  %23 = getelementptr inbounds %struct.fstatat_args, %struct.fstatat_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @copyout(%struct.stat* %5, i32 %24, i32 4)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @kern_statat(%struct.thread*, i32, i32, i32, i32, %struct.stat*, i32*) #1

declare dso_local i32 @copyout(%struct.stat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
