; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_mgethdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_mgethdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@max_linkhdr = common dso_local global i64 0, align 8
@M_SKIP_FIREWALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i32, i32)* @dyn_mgethdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @dyn_mgethdr(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @M_NOWAIT, align 4
  %8 = load i32, i32* @MT_DATA, align 4
  %9 = call %struct.mbuf* @m_gethdr(i32 %7, i32 %8)
  store %struct.mbuf* %9, %struct.mbuf** %6, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %11 = icmp eq %struct.mbuf* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @M_SETFIB(%struct.mbuf* %14, i32 %15)
  %17 = load i64, i64* @max_linkhdr, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* @M_SKIP_FIREWALL, align 4
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @bzero(i32 %37, i32 %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %40, %struct.mbuf** %3, align 8
  br label %41

41:                                               ; preds = %13, %12
  %42 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %42
}

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i32 @M_SETFIB(%struct.mbuf*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
