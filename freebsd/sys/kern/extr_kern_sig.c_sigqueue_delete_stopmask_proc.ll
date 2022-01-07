; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigqueue_delete_stopmask_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigqueue_delete_stopmask_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@SIGSTOP = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*)* @sigqueue_delete_stopmask_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigqueue_delete_stopmask_proc(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @SIGEMPTYSET(i32 %4)
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SIGSTOP, align 4
  %8 = call i32 @SIGADDSET(i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SIGTSTP, align 4
  %11 = call i32 @SIGADDSET(i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SIGTTIN, align 4
  %14 = call i32 @SIGADDSET(i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SIGTTOU, align 4
  %17 = call i32 @SIGADDSET(i32 %15, i32 %16)
  %18 = load %struct.proc*, %struct.proc** %2, align 8
  %19 = call i32 @sigqueue_delete_set_proc(%struct.proc* %18, i32* %3)
  ret void
}

declare dso_local i32 @SIGEMPTYSET(i32) #1

declare dso_local i32 @SIGADDSET(i32, i32) #1

declare dso_local i32 @sigqueue_delete_set_proc(%struct.proc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
