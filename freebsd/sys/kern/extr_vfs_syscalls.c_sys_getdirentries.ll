; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_getdirentries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_getdirentries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.getdirentries_args = type { i32*, i32, i32, i32 }

@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getdirentries(%struct.thread* %0, %struct.getdirentries_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.getdirentries_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.getdirentries_args* %1, %struct.getdirentries_args** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load %struct.getdirentries_args*, %struct.getdirentries_args** %5, align 8
  %10 = getelementptr inbounds %struct.getdirentries_args, %struct.getdirentries_args* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.getdirentries_args*, %struct.getdirentries_args** %5, align 8
  %13 = getelementptr inbounds %struct.getdirentries_args, %struct.getdirentries_args* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.getdirentries_args*, %struct.getdirentries_args** %5, align 8
  %16 = getelementptr inbounds %struct.getdirentries_args, %struct.getdirentries_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UIO_USERSPACE, align 4
  %19 = call i32 @kern_getdirentries(%struct.thread* %8, i32 %11, i32 %14, i32 %17, i32* %6, i32* null, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.getdirentries_args*, %struct.getdirentries_args** %5, align 8
  %26 = getelementptr inbounds %struct.getdirentries_args, %struct.getdirentries_args* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.getdirentries_args*, %struct.getdirentries_args** %5, align 8
  %31 = getelementptr inbounds %struct.getdirentries_args, %struct.getdirentries_args* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @copyout(i32* %6, i32* %32, i32 4)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @kern_getdirentries(%struct.thread*, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
