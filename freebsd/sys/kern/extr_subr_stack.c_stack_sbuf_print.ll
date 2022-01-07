; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stack.c_stack_sbuf_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stack.c_stack_sbuf_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.stack = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_sbuf_print(%struct.sbuf* %0, %struct.stack* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca %struct.stack*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store %struct.stack* %1, %struct.stack** %4, align 8
  %5 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %6 = load %struct.stack*, %struct.stack** %4, align 8
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = call i32 @stack_sbuf_print_flags(%struct.sbuf* %5, %struct.stack* %6, i32 %7)
  ret void
}

declare dso_local i32 @stack_sbuf_print_flags(%struct.sbuf*, %struct.stack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
