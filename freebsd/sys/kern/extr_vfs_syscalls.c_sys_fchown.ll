; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fchown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fchown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fchown_args = type { i32, i32, i32 }
%struct.file = type { i32 }

@cap_fchown_rights = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fchown(%struct.thread* %0, %struct.fchown_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fchown_args*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fchown_args* %1, %struct.fchown_args** %5, align 8
  %8 = load %struct.fchown_args*, %struct.fchown_args** %5, align 8
  %9 = getelementptr inbounds %struct.fchown_args, %struct.fchown_args* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @AUDIT_ARG_FD(i32 %10)
  %12 = load %struct.fchown_args*, %struct.fchown_args** %5, align 8
  %13 = getelementptr inbounds %struct.fchown_args, %struct.fchown_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fchown_args*, %struct.fchown_args** %5, align 8
  %16 = getelementptr inbounds %struct.fchown_args, %struct.fchown_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @AUDIT_ARG_OWNER(i32 %14, i32 %17)
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = load %struct.fchown_args*, %struct.fchown_args** %5, align 8
  %21 = getelementptr inbounds %struct.fchown_args, %struct.fchown_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fget(%struct.thread* %19, i32 %22, i32* @cap_fchown_rights, %struct.file** %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.file*, %struct.file** %6, align 8
  %30 = load %struct.fchown_args*, %struct.fchown_args** %5, align 8
  %31 = getelementptr inbounds %struct.fchown_args, %struct.fchown_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fchown_args*, %struct.fchown_args** %5, align 8
  %34 = getelementptr inbounds %struct.fchown_args, %struct.fchown_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = call i32 @fo_chown(%struct.file* %29, i32 %32, i32 %35, i32 %38, %struct.thread* %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.file*, %struct.file** %6, align 8
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = call i32 @fdrop(%struct.file* %41, %struct.thread* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %28, %26
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @AUDIT_ARG_OWNER(i32, i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fo_chown(%struct.file*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
