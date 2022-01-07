; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_sys_pdfork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_sys_pdfork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.pdfork_args = type { i32, i32 }
%struct.fork_req = type { i32, i32*, i32*, i32 }

@RFFDG = common dso_local global i32 0, align 4
@RFPROC = common dso_local global i32 0, align 4
@RFPROCDESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_pdfork(%struct.thread* %0, %struct.pdfork_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.pdfork_args*, align 8
  %5 = alloca %struct.fork_req, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.pdfork_args* %1, %struct.pdfork_args** %4, align 8
  %9 = call i32 @bzero(%struct.fork_req* %5, i32 32)
  %10 = load i32, i32* @RFFDG, align 4
  %11 = load i32, i32* @RFPROC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RFPROCDESC, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %5, i32 0, i32 1
  store i32* %8, i32** %16, align 8
  %17 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %5, i32 0, i32 2
  store i32* %7, i32** %17, align 8
  %18 = load %struct.pdfork_args*, %struct.pdfork_args** %4, align 8
  %19 = getelementptr inbounds %struct.pdfork_args, %struct.pdfork_args* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %5, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load %struct.thread*, %struct.thread** %3, align 8
  %23 = call i32 @fork1(%struct.thread* %22, %struct.fork_req* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.pdfork_args*, %struct.pdfork_args** %4, align 8
  %37 = getelementptr inbounds %struct.pdfork_args, %struct.pdfork_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @copyout(i32* %7, i32 %38, i32 4)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %26, %2
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @bzero(%struct.fork_req*, i32) #1

declare dso_local i32 @fork1(%struct.thread*, %struct.fork_req*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
