; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_process.c_proc_read_fpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_process.c_proc_read_fpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fpreg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_read_fpregs(%struct.thread* %0, %struct.fpreg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fpreg*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fpreg* %1, %struct.fpreg** %5, align 8
  %6 = load %struct.thread*, %struct.thread** %4, align 8
  %7 = load %struct.fpreg*, %struct.fpreg** %5, align 8
  %8 = call i32 @fill_fpregs(%struct.thread* %6, %struct.fpreg* %7)
  %9 = call i32 @PROC_ACTION(i32 %8)
  %10 = load i32, i32* %3, align 4
  ret i32 %10
}

declare dso_local i32 @PROC_ACTION(i32) #1

declare dso_local i32 @fill_fpregs(%struct.thread*, %struct.fpreg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
