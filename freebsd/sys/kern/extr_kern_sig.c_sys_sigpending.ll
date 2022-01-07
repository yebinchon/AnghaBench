; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_sigpending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_sigpending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__, %struct.proc* }
%struct.TYPE_4__ = type { i32 }
%struct.proc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sigpending_args = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigpending(%struct.thread* %0, %struct.sigpending_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.sigpending_args*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.sigpending_args* %1, %struct.sigpending_args** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 1
  %9 = load %struct.proc*, %struct.proc** %8, align 8
  store %struct.proc* %9, %struct.proc** %5, align 8
  %10 = load %struct.proc*, %struct.proc** %5, align 8
  %11 = call i32 @PROC_LOCK(%struct.proc* %10)
  %12 = load %struct.proc*, %struct.proc** %5, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @SIGSETOR(i32 %16, i32 %20)
  %22 = load %struct.proc*, %struct.proc** %5, align 8
  %23 = call i32 @PROC_UNLOCK(%struct.proc* %22)
  %24 = load %struct.sigpending_args*, %struct.sigpending_args** %4, align 8
  %25 = getelementptr inbounds %struct.sigpending_args, %struct.sigpending_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @copyout(i32* %6, i32 %26, i32 4)
  ret i32 %27
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @SIGSETOR(i32, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
