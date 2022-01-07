; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_db_trace.c_db_trace_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_db_trace.c_db_trace_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pcb = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_trace_thread(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = call %struct.pcb* @kdb_thr_ctx(%struct.thread* %6)
  store %struct.pcb* %7, %struct.pcb** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = load %struct.pcb*, %struct.pcb** %5, align 8
  %10 = getelementptr inbounds %struct.pcb, %struct.pcb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @db_backtrace(%struct.thread* %8, i32 %12, i32 %13)
  ret i32 %14
}

declare dso_local %struct.pcb* @kdb_thr_ctx(%struct.thread*) #1

declare dso_local i32 @db_backtrace(%struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
