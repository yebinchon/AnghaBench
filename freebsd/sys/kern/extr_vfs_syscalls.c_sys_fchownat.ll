; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fchownat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fchownat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fchownat_args = type { i32, i32, i32, i32, i32 }

@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@AT_BENEATH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fchownat(%struct.thread* %0, %struct.fchownat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fchownat_args*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fchownat_args* %1, %struct.fchownat_args** %5, align 8
  %6 = load %struct.fchownat_args*, %struct.fchownat_args** %5, align 8
  %7 = getelementptr inbounds %struct.fchownat_args, %struct.fchownat_args* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %10 = load i32, i32* @AT_BENEATH, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = load %struct.fchownat_args*, %struct.fchownat_args** %5, align 8
  %20 = getelementptr inbounds %struct.fchownat_args, %struct.fchownat_args* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fchownat_args*, %struct.fchownat_args** %5, align 8
  %23 = getelementptr inbounds %struct.fchownat_args, %struct.fchownat_args* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UIO_USERSPACE, align 4
  %26 = load %struct.fchownat_args*, %struct.fchownat_args** %5, align 8
  %27 = getelementptr inbounds %struct.fchownat_args, %struct.fchownat_args* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fchownat_args*, %struct.fchownat_args** %5, align 8
  %30 = getelementptr inbounds %struct.fchownat_args, %struct.fchownat_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fchownat_args*, %struct.fchownat_args** %5, align 8
  %33 = getelementptr inbounds %struct.fchownat_args, %struct.fchownat_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kern_fchownat(%struct.thread* %18, i32 %21, i32 %24, i32 %25, i32 %28, i32 %31, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %17, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @kern_fchownat(%struct.thread*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
