; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fchmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fchmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fchmod_args = type { i32, i32 }
%struct.file = type { i32 }

@cap_fchmod_rights = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fchmod(%struct.thread* %0, %struct.fchmod_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fchmod_args*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fchmod_args* %1, %struct.fchmod_args** %5, align 8
  %8 = load %struct.fchmod_args*, %struct.fchmod_args** %5, align 8
  %9 = getelementptr inbounds %struct.fchmod_args, %struct.fchmod_args* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @AUDIT_ARG_FD(i32 %10)
  %12 = load %struct.fchmod_args*, %struct.fchmod_args** %5, align 8
  %13 = getelementptr inbounds %struct.fchmod_args, %struct.fchmod_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @AUDIT_ARG_MODE(i32 %14)
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = load %struct.fchmod_args*, %struct.fchmod_args** %5, align 8
  %18 = getelementptr inbounds %struct.fchmod_args, %struct.fchmod_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fget(%struct.thread* %16, i32 %19, i32* @cap_fchmod_rights, %struct.file** %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = load %struct.fchmod_args*, %struct.fchmod_args** %5, align 8
  %28 = getelementptr inbounds %struct.fchmod_args, %struct.fchmod_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = call i32 @fo_chmod(%struct.file* %26, i32 %29, i32 %32, %struct.thread* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.file*, %struct.file** %6, align 8
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = call i32 @fdrop(%struct.file* %35, %struct.thread* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %25, %23
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @AUDIT_ARG_MODE(i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fo_chmod(%struct.file*, i32, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
