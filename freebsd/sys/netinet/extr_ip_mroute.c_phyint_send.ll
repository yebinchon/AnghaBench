; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_phyint_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_phyint_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32 }
%struct.vif = type { i32 }
%struct.mbuf = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip*, %struct.vif*, %struct.mbuf*)* @phyint_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phyint_send(%struct.ip* %0, %struct.vif* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.ip*, align 8
  %5 = alloca %struct.vif*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.ip* %0, %struct.ip** %4, align 8
  store %struct.vif* %1, %struct.vif** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %9 = load %struct.ip*, %struct.ip** %4, align 8
  %10 = getelementptr inbounds %struct.ip, %struct.ip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 2
  store i32 %12, i32* %8, align 4
  %13 = call i32 (...) @VIF_LOCK_ASSERT()
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call %struct.mbuf* @m_copypacket(%struct.mbuf* %14, i32 %15)
  store %struct.mbuf* %16, %struct.mbuf** %7, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %21 = call i32 @M_WRITABLE(%struct.mbuf* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %19
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.mbuf* @m_pullup(%struct.mbuf* %30, i32 %31)
  store %struct.mbuf* %32, %struct.mbuf** %7, align 8
  br label %33

33:                                               ; preds = %29, %23, %3
  %34 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %35 = icmp eq %struct.mbuf* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %41

37:                                               ; preds = %33
  %38 = load %struct.vif*, %struct.vif** %5, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %40 = call i32 @send_packet(%struct.vif* %38, %struct.mbuf* %39)
  br label %41

41:                                               ; preds = %37, %36
  ret void
}

declare dso_local i32 @VIF_LOCK_ASSERT(...) #1

declare dso_local %struct.mbuf* @m_copypacket(%struct.mbuf*, i32) #1

declare dso_local i32 @M_WRITABLE(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i32) #1

declare dso_local i32 @send_packet(%struct.vif*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
