; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ifaltq }
%struct.ifaltq = type { i64, i64, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_qflush(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ifaltq*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  store %struct.ifaltq* %7, %struct.ifaltq** %5, align 8
  %8 = load %struct.ifaltq*, %struct.ifaltq** %5, align 8
  %9 = call i32 @IFQ_LOCK(%struct.ifaltq* %8)
  %10 = load %struct.ifaltq*, %struct.ifaltq** %5, align 8
  %11 = getelementptr inbounds %struct.ifaltq, %struct.ifaltq* %10, i32 0, i32 2
  %12 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %12, %struct.mbuf** %4, align 8
  br label %13

13:                                               ; preds = %16, %1
  %14 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %14, %struct.mbuf** %3, align 8
  %15 = icmp ne %struct.mbuf* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  store %struct.mbuf* %19, %struct.mbuf** %4, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %21 = call i32 @m_freem(%struct.mbuf* %20)
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.ifaltq*, %struct.ifaltq** %5, align 8
  %24 = getelementptr inbounds %struct.ifaltq, %struct.ifaltq* %23, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %24, align 8
  %25 = load %struct.ifaltq*, %struct.ifaltq** %5, align 8
  %26 = getelementptr inbounds %struct.ifaltq, %struct.ifaltq* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.ifaltq*, %struct.ifaltq** %5, align 8
  %28 = getelementptr inbounds %struct.ifaltq, %struct.ifaltq* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.ifaltq*, %struct.ifaltq** %5, align 8
  %30 = call i32 @IFQ_UNLOCK(%struct.ifaltq* %29)
  ret void
}

declare dso_local i32 @IFQ_LOCK(%struct.ifaltq*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @IFQ_UNLOCK(%struct.ifaltq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
