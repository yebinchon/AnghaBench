; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_push_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_push_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_option = type { i64 }
%struct.TestContext = type { %struct.nmreq_option* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nmreq_option*, %struct.TestContext*)* @push_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_option(%struct.nmreq_option* %0, %struct.TestContext* %1) #0 {
  %3 = alloca %struct.nmreq_option*, align 8
  %4 = alloca %struct.TestContext*, align 8
  store %struct.nmreq_option* %0, %struct.nmreq_option** %3, align 8
  store %struct.TestContext* %1, %struct.TestContext** %4, align 8
  %5 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %6 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %5, i32 0, i32 0
  %7 = load %struct.nmreq_option*, %struct.nmreq_option** %6, align 8
  %8 = ptrtoint %struct.nmreq_option* %7 to i64
  %9 = load %struct.nmreq_option*, %struct.nmreq_option** %3, align 8
  %10 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.nmreq_option*, %struct.nmreq_option** %3, align 8
  %12 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %13 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %12, i32 0, i32 0
  store %struct.nmreq_option* %11, %struct.nmreq_option** %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
