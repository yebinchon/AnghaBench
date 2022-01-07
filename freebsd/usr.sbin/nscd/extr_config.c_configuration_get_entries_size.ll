; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_configuration_get_entries_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_configuration_get_entries_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @configuration_get_entries_size(%struct.configuration* %0) #0 {
  %2 = alloca %struct.configuration*, align 8
  store %struct.configuration* %0, %struct.configuration** %2, align 8
  %3 = call i32 @TRACE_IN(i64 (%struct.configuration*)* @configuration_get_entries_size)
  %4 = load %struct.configuration*, %struct.configuration** %2, align 8
  %5 = icmp ne %struct.configuration* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call i32 @TRACE_OUT(i64 (%struct.configuration*)* @configuration_get_entries_size)
  %9 = load %struct.configuration*, %struct.configuration** %2, align 8
  %10 = getelementptr inbounds %struct.configuration, %struct.configuration* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  ret i64 %11
}

declare dso_local i32 @TRACE_IN(i64 (%struct.configuration*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE_OUT(i64 (%struct.configuration*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
