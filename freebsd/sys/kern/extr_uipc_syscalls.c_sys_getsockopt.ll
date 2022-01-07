; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_sys_getsockopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_sys_getsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.getsockopt_args = type { i32, i64, i32, i32, i32 }

@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getsockopt(%struct.thread* %0, %struct.getsockopt_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.getsockopt_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.getsockopt_args* %1, %struct.getsockopt_args** %5, align 8
  %8 = load %struct.getsockopt_args*, %struct.getsockopt_args** %5, align 8
  %9 = getelementptr inbounds %struct.getsockopt_args, %struct.getsockopt_args* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.getsockopt_args*, %struct.getsockopt_args** %5, align 8
  %14 = getelementptr inbounds %struct.getsockopt_args, %struct.getsockopt_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @copyin(i32 %15, i32* %6, i32 4)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = load %struct.getsockopt_args*, %struct.getsockopt_args** %5, align 8
  %25 = getelementptr inbounds %struct.getsockopt_args, %struct.getsockopt_args* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.getsockopt_args*, %struct.getsockopt_args** %5, align 8
  %28 = getelementptr inbounds %struct.getsockopt_args, %struct.getsockopt_args* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.getsockopt_args*, %struct.getsockopt_args** %5, align 8
  %31 = getelementptr inbounds %struct.getsockopt_args, %struct.getsockopt_args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.getsockopt_args*, %struct.getsockopt_args** %5, align 8
  %34 = getelementptr inbounds %struct.getsockopt_args, %struct.getsockopt_args* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @UIO_USERSPACE, align 4
  %37 = call i32 @kern_getsockopt(%struct.thread* %23, i32 %26, i32 %29, i32 %32, i64 %35, i32 %36, i32* %6)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %22
  %41 = load %struct.getsockopt_args*, %struct.getsockopt_args** %5, align 8
  %42 = getelementptr inbounds %struct.getsockopt_args, %struct.getsockopt_args* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @copyout(i32* %6, i32 %43, i32 4)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %22
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @kern_getsockopt(%struct.thread*, i32, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
