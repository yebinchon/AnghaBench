; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_sys_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_sys_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.fork_args = type { i32 }
%struct.fork_req = type { i32, i32* }

@RFFDG = common dso_local global i32 0, align 4
@RFPROC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_fork(%struct.thread* %0, %struct.fork_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.fork_args*, align 8
  %5 = alloca %struct.fork_req, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.fork_args* %1, %struct.fork_args** %4, align 8
  %8 = call i32 @bzero(%struct.fork_req* %5, i32 16)
  %9 = load i32, i32* @RFFDG, align 4
  %10 = load i32, i32* @RFPROC, align 4
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %5, i32 0, i32 1
  store i32* %7, i32** %13, align 8
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = call i32 @fork1(%struct.thread* %14, %struct.fork_req* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.thread*, %struct.thread** %3, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.thread*, %struct.thread** %3, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %18, %2
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @bzero(%struct.fork_req*, i32) #1

declare dso_local i32 @fork1(%struct.thread*, %struct.fork_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
