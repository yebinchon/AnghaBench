; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fhstatfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_fhstatfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fhstatfs_args = type { i32, i32 }
%struct.statfs = type { i32 }

@M_STATFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fhstatfs(%struct.thread* %0, %struct.fhstatfs_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fhstatfs_args*, align 8
  %6 = alloca %struct.statfs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fhstatfs_args* %1, %struct.fhstatfs_args** %5, align 8
  %9 = load %struct.fhstatfs_args*, %struct.fhstatfs_args** %5, align 8
  %10 = getelementptr inbounds %struct.fhstatfs_args, %struct.fhstatfs_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @copyin(i32 %11, i32* %7, i32 4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* @M_STATFS, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = call %struct.statfs* @malloc(i32 4, i32 %18, i32 %19)
  store %struct.statfs* %20, %struct.statfs** %6, align 8
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.statfs*, %struct.statfs** %6, align 8
  %24 = call i32 @kern_fhstatfs(%struct.thread* %21, i32 %22, %struct.statfs* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.statfs*, %struct.statfs** %6, align 8
  %29 = load %struct.fhstatfs_args*, %struct.fhstatfs_args** %5, align 8
  %30 = getelementptr inbounds %struct.fhstatfs_args, %struct.fhstatfs_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @copyout(%struct.statfs* %28, i32 %31, i32 4)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %27, %17
  %34 = load %struct.statfs*, %struct.statfs** %6, align 8
  %35 = load i32, i32* @M_STATFS, align 4
  %36 = call i32 @free(%struct.statfs* %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local %struct.statfs* @malloc(i32, i32, i32) #1

declare dso_local i32 @kern_fhstatfs(%struct.thread*, i32, %struct.statfs*) #1

declare dso_local i32 @copyout(%struct.statfs*, i32, i32) #1

declare dso_local i32 @free(%struct.statfs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
