; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_chflagsat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_chflagsat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.chflagsat_args = type { i32, i32, i32, i32 }

@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@AT_BENEATH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_chflagsat(%struct.thread* %0, %struct.chflagsat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.chflagsat_args*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.chflagsat_args* %1, %struct.chflagsat_args** %5, align 8
  %6 = load %struct.chflagsat_args*, %struct.chflagsat_args** %5, align 8
  %7 = getelementptr inbounds %struct.chflagsat_args, %struct.chflagsat_args* %6, i32 0, i32 0
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
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = load %struct.chflagsat_args*, %struct.chflagsat_args** %5, align 8
  %20 = getelementptr inbounds %struct.chflagsat_args, %struct.chflagsat_args* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.chflagsat_args*, %struct.chflagsat_args** %5, align 8
  %23 = getelementptr inbounds %struct.chflagsat_args, %struct.chflagsat_args* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UIO_USERSPACE, align 4
  %26 = load %struct.chflagsat_args*, %struct.chflagsat_args** %5, align 8
  %27 = getelementptr inbounds %struct.chflagsat_args, %struct.chflagsat_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.chflagsat_args*, %struct.chflagsat_args** %5, align 8
  %30 = getelementptr inbounds %struct.chflagsat_args, %struct.chflagsat_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kern_chflagsat(%struct.thread* %18, i32 %21, i32 %24, i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %17, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @kern_chflagsat(%struct.thread*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
