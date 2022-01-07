; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifqueue = type { i64, i64, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifqueue*)* @sppp_qflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sppp_qflush(%struct.ifqueue* %0) #0 {
  %2 = alloca %struct.ifqueue*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.ifqueue* %0, %struct.ifqueue** %2, align 8
  %5 = load %struct.ifqueue*, %struct.ifqueue** %2, align 8
  %6 = getelementptr inbounds %struct.ifqueue, %struct.ifqueue* %5, i32 0, i32 2
  %7 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %7, %struct.mbuf** %4, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %9, %struct.mbuf** %3, align 8
  %10 = icmp ne %struct.mbuf* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 0
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %14, %struct.mbuf** %4, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %16 = call i32 @m_freem(%struct.mbuf* %15)
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.ifqueue*, %struct.ifqueue** %2, align 8
  %19 = getelementptr inbounds %struct.ifqueue, %struct.ifqueue* %18, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %19, align 8
  %20 = load %struct.ifqueue*, %struct.ifqueue** %2, align 8
  %21 = getelementptr inbounds %struct.ifqueue, %struct.ifqueue* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.ifqueue*, %struct.ifqueue** %2, align 8
  %23 = getelementptr inbounds %struct.ifqueue, %struct.ifqueue* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  ret void
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
