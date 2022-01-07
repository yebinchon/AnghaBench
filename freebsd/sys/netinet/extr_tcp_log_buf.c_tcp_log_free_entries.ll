; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_log_buf.c_tcp_log_free_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_log_buf.c_tcp_log_free_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_log_stailq = type { i32 }
%struct.tcp_log_mem = type { i32 }

@tlm_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_log_stailq*, i32*)* @tcp_log_free_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_log_free_entries(%struct.tcp_log_stailq* %0, i32* %1) #0 {
  %3 = alloca %struct.tcp_log_stailq*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tcp_log_mem*, align 8
  store %struct.tcp_log_stailq* %0, %struct.tcp_log_stailq** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %6

6:                                                ; preds = %10, %2
  %7 = load %struct.tcp_log_stailq*, %struct.tcp_log_stailq** %3, align 8
  %8 = call %struct.tcp_log_mem* @STAILQ_FIRST(%struct.tcp_log_stailq* %7)
  store %struct.tcp_log_mem* %8, %struct.tcp_log_mem** %5, align 8
  %9 = icmp ne %struct.tcp_log_mem* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load %struct.tcp_log_stailq*, %struct.tcp_log_stailq** %3, align 8
  %12 = load i32, i32* @tlm_queue, align 4
  %13 = call i32 @STAILQ_REMOVE_HEAD(%struct.tcp_log_stailq* %11, i32 %12)
  %14 = load %struct.tcp_log_mem*, %struct.tcp_log_mem** %5, align 8
  %15 = call i32 @tcp_log_entry_refcnt_rem(%struct.tcp_log_mem* %14)
  %16 = load %struct.tcp_log_mem*, %struct.tcp_log_mem** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @tcp_log_free_log_common(%struct.tcp_log_mem* %16, i32* %17)
  br label %6

19:                                               ; preds = %6
  ret void
}

declare dso_local %struct.tcp_log_mem* @STAILQ_FIRST(%struct.tcp_log_stailq*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.tcp_log_stailq*, i32) #1

declare dso_local i32 @tcp_log_entry_refcnt_rem(%struct.tcp_log_mem*) #1

declare dso_local i32 @tcp_log_free_log_common(%struct.tcp_log_mem*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
