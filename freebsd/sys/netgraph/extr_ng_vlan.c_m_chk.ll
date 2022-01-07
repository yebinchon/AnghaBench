; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_vlan.c_m_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_vlan.c_m_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf**, i32)* @m_chk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_chk(%struct.mbuf** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf**, align 8
  %5 = alloca i32, align 4
  store %struct.mbuf** %0, %struct.mbuf*** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %8 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %16 = call i32 @m_freem(%struct.mbuf* %15)
  %17 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* null, %struct.mbuf** %17, align 8
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.mbuf* @m_pullup(%struct.mbuf* %28, i32 %29)
  %31 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* %30, %struct.mbuf** %31, align 8
  %32 = icmp eq %struct.mbuf* %30, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOBUFS, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %26, %19
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
