; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_wake_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c___umtx_op_wake_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct._umtx_op_args = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct._umtx_op_args*)* @__umtx_op_wake_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__umtx_op_wake_private(%struct.thread* %0, %struct._umtx_op_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct._umtx_op_args*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct._umtx_op_args* %1, %struct._umtx_op_args** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = load %struct._umtx_op_args*, %struct._umtx_op_args** %4, align 8
  %7 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct._umtx_op_args*, %struct._umtx_op_args** %4, align 8
  %10 = getelementptr inbounds %struct._umtx_op_args, %struct._umtx_op_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @kern_umtx_wake(%struct.thread* %5, i32 %8, i32 %11, i32 1)
  ret i32 %12
}

declare dso_local i32 @kern_umtx_wake(%struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
