; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c___tcp_queue_to_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c___tcp_queue_to_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.tcp_hpts_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tcp_queue_to_input(%struct.inpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_hpts_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %8 = call %struct.tcp_hpts_entry* @tcp_input_lock(%struct.inpcb* %7)
  store %struct.tcp_hpts_entry* %8, %struct.tcp_hpts_entry** %5, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %10 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @__tcp_queue_to_input_locked(%struct.inpcb* %9, %struct.tcp_hpts_entry* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %14 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %13, i32 0, i32 0
  %15 = call i32 @mtx_unlock(i32* %14)
  %16 = load i32, i32* %6, align 4
  ret i32 %16
}

declare dso_local %struct.tcp_hpts_entry* @tcp_input_lock(%struct.inpcb*) #1

declare dso_local i32 @__tcp_queue_to_input_locked(%struct.inpcb*, %struct.tcp_hpts_entry*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
