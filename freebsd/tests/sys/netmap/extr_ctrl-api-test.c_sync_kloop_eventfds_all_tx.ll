; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_eventfds_all_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_eventfds_all_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i32 }
%struct.nmreq_opt_csb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @sync_kloop_eventfds_all_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_kloop_eventfds_all_tx(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca %struct.nmreq_opt_csb, align 4
  %5 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %6 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %7 = call i32 @push_csb_option(%struct.TestContext* %6, %struct.nmreq_opt_csb* %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %14 = call i32 @port_register_hwall_tx(%struct.TestContext* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %12
  %20 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %21 = call i32 @clear_options(%struct.TestContext* %20)
  %22 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %23 = call i32 @sync_kloop_eventfds(%struct.TestContext* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %17, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @push_csb_option(%struct.TestContext*, %struct.nmreq_opt_csb*) #1

declare dso_local i32 @port_register_hwall_tx(%struct.TestContext*) #1

declare dso_local i32 @clear_options(%struct.TestContext*) #1

declare dso_local i32 @sync_kloop_eventfds(%struct.TestContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
