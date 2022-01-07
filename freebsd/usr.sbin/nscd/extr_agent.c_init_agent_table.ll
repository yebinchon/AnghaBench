; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_agent.c_init_agent_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_agent.c_init_agent_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agent_table* @init_agent_table() #0 {
  %1 = alloca %struct.agent_table*, align 8
  %2 = call i32 @TRACE_IN(%struct.agent_table* (...)* bitcast (%struct.agent_table* ()* @init_agent_table to %struct.agent_table* (...)*))
  %3 = call %struct.agent_table* @calloc(i32 1, i32 4)
  store %struct.agent_table* %3, %struct.agent_table** %1, align 8
  %4 = load %struct.agent_table*, %struct.agent_table** %1, align 8
  %5 = icmp ne %struct.agent_table* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call i32 @TRACE_OUT(%struct.agent_table* (...)* bitcast (%struct.agent_table* ()* @init_agent_table to %struct.agent_table* (...)*))
  %9 = load %struct.agent_table*, %struct.agent_table** %1, align 8
  ret %struct.agent_table* %9
}

declare dso_local i32 @TRACE_IN(%struct.agent_table* (...)*) #1

declare dso_local %struct.agent_table* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE_OUT(%struct.agent_table* (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
