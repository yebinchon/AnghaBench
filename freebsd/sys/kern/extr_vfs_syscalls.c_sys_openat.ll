; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_openat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_openat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.openat_args = type { i32, i32, i32, i32 }

@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_openat(%struct.thread* %0, %struct.openat_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.openat_args*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.openat_args* %1, %struct.openat_args** %4, align 8
  %5 = load %struct.openat_args*, %struct.openat_args** %4, align 8
  %6 = getelementptr inbounds %struct.openat_args, %struct.openat_args* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @AUDIT_ARG_FD(i32 %7)
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = load %struct.openat_args*, %struct.openat_args** %4, align 8
  %11 = getelementptr inbounds %struct.openat_args, %struct.openat_args* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.openat_args*, %struct.openat_args** %4, align 8
  %14 = getelementptr inbounds %struct.openat_args, %struct.openat_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UIO_USERSPACE, align 4
  %17 = load %struct.openat_args*, %struct.openat_args** %4, align 8
  %18 = getelementptr inbounds %struct.openat_args, %struct.openat_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.openat_args*, %struct.openat_args** %4, align 8
  %21 = getelementptr inbounds %struct.openat_args, %struct.openat_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kern_openat(%struct.thread* %9, i32 %12, i32 %15, i32 %16, i32 %19, i32 %22)
  ret i32 %23
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @kern_openat(%struct.thread*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
