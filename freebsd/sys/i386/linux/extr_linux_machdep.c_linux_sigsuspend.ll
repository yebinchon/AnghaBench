; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_sigsuspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_sigsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_sigsuspend_args = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_sigsuspend(%struct.thread* %0, %struct.linux_sigsuspend_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_sigsuspend_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_sigsuspend_args* %1, %struct.linux_sigsuspend_args** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @LINUX_SIGEMPTYSET(i32 %8)
  %10 = load %struct.linux_sigsuspend_args*, %struct.linux_sigsuspend_args** %4, align 8
  %11 = getelementptr inbounds %struct.linux_sigsuspend_args, %struct.linux_sigsuspend_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = call i32 @linux_to_bsd_sigset(%struct.TYPE_4__* %6, i32* %5)
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @kern_sigsuspend(%struct.thread* %15, i32 %16)
  ret i32 %17
}

declare dso_local i32 @LINUX_SIGEMPTYSET(i32) #1

declare dso_local i32 @linux_to_bsd_sigset(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @kern_sigsuspend(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
