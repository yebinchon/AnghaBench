; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_destroy_txq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_destroy_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_txq = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_txq*)* @destroy_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_txq(%struct.netfront_txq* %0) #0 {
  %2 = alloca %struct.netfront_txq*, align 8
  store %struct.netfront_txq* %0, %struct.netfront_txq** %2, align 8
  %3 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %4 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @M_DEVBUF, align 4
  %8 = call i32 @free(i32 %6, i32 %7)
  %9 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %10 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = call i32 @buf_ring_free(i32 %11, i32 %12)
  %14 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %15 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @taskqueue_drain_all(i32 %16)
  %18 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %19 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @taskqueue_free(i32 %20)
  ret void
}

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @buf_ring_free(i32, i32) #1

declare dso_local i32 @taskqueue_drain_all(i32) #1

declare dso_local i32 @taskqueue_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
