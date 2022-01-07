; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_csb_mode_invalid_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_csb_mode_invalid_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i32 }
%struct.nmreq_opt_csb = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NETMAP_REQ_OPT_CSB = common dso_local global i32 0, align 4
@NR_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @csb_mode_invalid_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csb_mode_invalid_memory(%struct.TestContext* %0) #0 {
  %2 = alloca %struct.TestContext*, align 8
  %3 = alloca %struct.nmreq_opt_csb, align 8
  %4 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %2, align 8
  %5 = call i32 @memset(%struct.nmreq_opt_csb* %3, i32 0, i32 24)
  %6 = load i32, i32* @NETMAP_REQ_OPT_CSB, align 4
  %7 = getelementptr inbounds %struct.nmreq_opt_csb, %struct.nmreq_opt_csb* %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = getelementptr inbounds %struct.nmreq_opt_csb, %struct.nmreq_opt_csb* %3, i32 0, i32 0
  store i64 16, i64* %9, align 8
  %10 = getelementptr inbounds %struct.nmreq_opt_csb, %struct.nmreq_opt_csb* %3, i32 0, i32 1
  store i64 2048, i64* %10, align 8
  %11 = getelementptr inbounds %struct.nmreq_opt_csb, %struct.nmreq_opt_csb* %3, i32 0, i32 2
  %12 = load %struct.TestContext*, %struct.TestContext** %2, align 8
  %13 = call i32 @push_option(%struct.TYPE_2__* %11, %struct.TestContext* %12)
  %14 = load i32, i32* @NR_EXCLUSIVE, align 4
  %15 = load %struct.TestContext*, %struct.TestContext** %2, align 8
  %16 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TestContext*, %struct.TestContext** %2, align 8
  %18 = call i32 @port_register_hwall(%struct.TestContext* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TestContext*, %struct.TestContext** %2, align 8
  %20 = call i32 @clear_options(%struct.TestContext* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 -1
  ret i32 %24
}

declare dso_local i32 @memset(%struct.nmreq_opt_csb*, i32, i32) #1

declare dso_local i32 @push_option(%struct.TYPE_2__*, %struct.TestContext*) #1

declare dso_local i32 @port_register_hwall(%struct.TestContext*) #1

declare dso_local i32 @clear_options(%struct.TestContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
