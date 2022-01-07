; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_drbr_enqueue_drv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_drbr_enqueue_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_ring = type { i32 }
%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbr_enqueue_drv(i32 %0, %struct.buf_ring* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.buf_ring*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.buf_ring* %1, %struct.buf_ring** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.buf_ring*, %struct.buf_ring** %5, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %10 = call i32 @drbr_enqueue(i32 %7, %struct.buf_ring* %8, %struct.mbuf* %9)
  ret i32 %10
}

declare dso_local i32 @drbr_enqueue(i32, %struct.buf_ring*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
