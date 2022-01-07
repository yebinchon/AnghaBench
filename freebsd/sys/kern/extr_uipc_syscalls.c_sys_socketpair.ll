; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_sys_socketpair.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_sys_socketpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.socketpair_args = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_socketpair(%struct.thread* %0, %struct.socketpair_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.socketpair_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.socketpair_args* %1, %struct.socketpair_args** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load %struct.socketpair_args*, %struct.socketpair_args** %5, align 8
  %10 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.socketpair_args*, %struct.socketpair_args** %5, align 8
  %13 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.socketpair_args*, %struct.socketpair_args** %5, align 8
  %16 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %19 = call i32 @kern_socketpair(%struct.thread* %8, i32 %11, i32 %14, i32 %17, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %2
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %26 = load %struct.socketpair_args*, %struct.socketpair_args** %5, align 8
  %27 = getelementptr inbounds %struct.socketpair_args, %struct.socketpair_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @copyout(i32* %25, i32 %28, i32 8)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kern_close(%struct.thread* %33, i32 %35)
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kern_close(%struct.thread* %37, i32 %39)
  br label %41

41:                                               ; preds = %32, %24
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %22
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @kern_socketpair(%struct.thread*, i32, i32, i32, i32*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @kern_close(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
