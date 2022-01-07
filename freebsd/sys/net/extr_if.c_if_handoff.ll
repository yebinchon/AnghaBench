; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_handoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_handoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifqueue = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32, i32 (%struct.ifnet*)* }

@IFCOUNTER_OQDROPS = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@M_BCAST = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@IFCOUNTER_OMCASTS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_handoff(%struct.ifqueue* %0, %struct.mbuf* %1, %struct.ifnet* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifqueue*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifqueue* %0, %struct.ifqueue** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.ifnet* %2, %struct.ifnet** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ifqueue*, %struct.ifqueue** %6, align 8
  %12 = call i32 @IF_LOCK(%struct.ifqueue* %11)
  %13 = load %struct.ifqueue*, %struct.ifqueue** %6, align 8
  %14 = call i64 @_IF_QFULL(%struct.ifqueue* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.ifqueue*, %struct.ifqueue** %6, align 8
  %18 = call i32 @IF_UNLOCK(%struct.ifqueue* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %20 = load i32, i32* @IFCOUNTER_OQDROPS, align 4
  %21 = call i32 @if_inc_counter(%struct.ifnet* %19, i32 %20, i32 1)
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = call i32 @m_freem(%struct.mbuf* %22)
  store i32 0, i32* %5, align 4
  br label %73

24:                                               ; preds = %4
  %25 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %26 = icmp ne %struct.ifnet* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %24
  %28 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %29 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @if_inc_counter(%struct.ifnet* %28, i32 %29, i32 %35)
  %37 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @M_BCAST, align 4
  %41 = load i32, i32* @M_MCAST, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %27
  %46 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %47 = load i32, i32* @IFCOUNTER_OMCASTS, align 4
  %48 = call i32 @if_inc_counter(%struct.ifnet* %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %45, %27
  %50 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %49, %24
  %56 = load %struct.ifqueue*, %struct.ifqueue** %6, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %58 = call i32 @_IF_ENQUEUE(%struct.ifqueue* %56, %struct.mbuf* %57)
  %59 = load %struct.ifqueue*, %struct.ifqueue** %6, align 8
  %60 = call i32 @IF_UNLOCK(%struct.ifqueue* %59)
  %61 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %62 = icmp ne %struct.ifnet* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 1
  %69 = load i32 (%struct.ifnet*)*, i32 (%struct.ifnet*)** %68, align 8
  %70 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %71 = call i32 %69(%struct.ifnet* %70)
  br label %72

72:                                               ; preds = %66, %63, %55
  store i32 1, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %16
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @IF_LOCK(%struct.ifqueue*) #1

declare dso_local i64 @_IF_QFULL(%struct.ifqueue*) #1

declare dso_local i32 @IF_UNLOCK(%struct.ifqueue*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @_IF_ENQUEUE(%struct.ifqueue*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
