; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_process_timer_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_process_timer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i64 }
%struct.runtime_env = type { i32 }
%struct.configuration = type { i32 }
%struct.query_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @process_timer_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_timer_event(%struct.kevent* %0, %struct.runtime_env* %1, %struct.configuration* %2) #0 {
  %4 = alloca %struct.kevent*, align 8
  %5 = alloca %struct.runtime_env*, align 8
  %6 = alloca %struct.configuration*, align 8
  %7 = alloca %struct.query_state*, align 8
  store %struct.kevent* %0, %struct.kevent** %4, align 8
  store %struct.runtime_env* %1, %struct.runtime_env** %5, align 8
  store %struct.configuration* %2, %struct.configuration** %6, align 8
  %8 = call i32 @TRACE_IN(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @process_timer_event)
  %9 = load %struct.kevent*, %struct.kevent** %4, align 8
  %10 = getelementptr inbounds %struct.kevent, %struct.kevent* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.query_state*
  store %struct.query_state* %12, %struct.query_state** %7, align 8
  %13 = load %struct.query_state*, %struct.query_state** %7, align 8
  %14 = call i32 @destroy_query_state(%struct.query_state* %13)
  %15 = load %struct.kevent*, %struct.kevent** %4, align 8
  %16 = getelementptr inbounds %struct.kevent, %struct.kevent* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @close(i32 %17)
  %19 = call i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @process_timer_event)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)*) #1

declare dso_local i32 @destroy_query_state(%struct.query_state*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
