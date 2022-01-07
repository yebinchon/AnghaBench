; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_q = type { %struct.umtx_q* }

@M_UMTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @umtxq_free(%struct.umtx_q* %0) #0 {
  %2 = alloca %struct.umtx_q*, align 8
  store %struct.umtx_q* %0, %struct.umtx_q** %2, align 8
  %3 = load %struct.umtx_q*, %struct.umtx_q** %2, align 8
  %4 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %3, i32 0, i32 0
  %5 = load %struct.umtx_q*, %struct.umtx_q** %4, align 8
  %6 = icmp ne %struct.umtx_q* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @MPASS(i32 %7)
  %9 = load %struct.umtx_q*, %struct.umtx_q** %2, align 8
  %10 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %9, i32 0, i32 0
  %11 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %12 = load i32, i32* @M_UMTX, align 4
  %13 = call i32 @free(%struct.umtx_q* %11, i32 %12)
  %14 = load %struct.umtx_q*, %struct.umtx_q** %2, align 8
  %15 = load i32, i32* @M_UMTX, align 4
  %16 = call i32 @free(%struct.umtx_q* %14, i32 %15)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @free(%struct.umtx_q*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
