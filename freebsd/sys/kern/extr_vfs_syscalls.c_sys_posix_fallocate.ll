; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_posix_fallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_posix_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.posix_fallocate_args = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_posix_fallocate(%struct.thread* %0, %struct.posix_fallocate_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.posix_fallocate_args*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.posix_fallocate_args* %1, %struct.posix_fallocate_args** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = load %struct.posix_fallocate_args*, %struct.posix_fallocate_args** %4, align 8
  %8 = getelementptr inbounds %struct.posix_fallocate_args, %struct.posix_fallocate_args* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.posix_fallocate_args*, %struct.posix_fallocate_args** %4, align 8
  %11 = getelementptr inbounds %struct.posix_fallocate_args, %struct.posix_fallocate_args* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.posix_fallocate_args*, %struct.posix_fallocate_args** %4, align 8
  %14 = getelementptr inbounds %struct.posix_fallocate_args, %struct.posix_fallocate_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kern_posix_fallocate(%struct.thread* %6, i32 %9, i32 %12, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @kern_posix_error(%struct.thread* %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @kern_posix_fallocate(%struct.thread*, i32, i32, i32) #1

declare dso_local i32 @kern_posix_error(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
