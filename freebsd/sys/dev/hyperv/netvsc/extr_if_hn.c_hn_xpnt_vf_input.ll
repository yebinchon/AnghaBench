; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, i32, i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ifnet* }
%struct.rm_priotracker = type { i32 }

@hn_vfmap_lock = common dso_local global i32 0, align 4
@hn_vfmap_size = common dso_local global i64 0, align 8
@hn_vfmap = common dso_local global %struct.ifnet** null, align 8
@IFCAP_HWSTATS = common dso_local global i32 0, align 4
@IFCOUNTER_IBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.mbuf*)* @hn_xpnt_vf_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_xpnt_vf_input(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.rm_priotracker, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  store %struct.ifnet* null, %struct.ifnet** %6, align 8
  %8 = call i32 @rm_rlock(i32* @hn_vfmap_lock, %struct.rm_priotracker* %5)
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @hn_vfmap_size, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.ifnet**, %struct.ifnet*** @hn_vfmap, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %15, i64 %18
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %6, align 8
  br label %21

21:                                               ; preds = %14, %2
  %22 = call i32 @rm_runlock(i32* @hn_vfmap_lock, %struct.rm_priotracker* %5)
  %23 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %24 = icmp ne %struct.ifnet* %23, null
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  %26 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %26, %struct.mbuf** %7, align 8
  br label %27

27:                                               ; preds = %56, %25
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  %31 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %33 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %31, %struct.mbuf* %32)
  %34 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFCAP_HWSTATS, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = load i32, i32* @IFCOUNTER_IBYTES, align 4
  %43 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @if_inc_counter(%struct.ifnet* %41, i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %40, %30
  %49 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store %struct.ifnet* %49, %struct.ifnet** %52, align 8
  %53 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %54 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %55 = call i32 @if_inc_counter(%struct.ifnet* %53, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %48
  %57 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 0
  %59 = load %struct.mbuf*, %struct.mbuf** %58, align 8
  store %struct.mbuf* %59, %struct.mbuf** %7, align 8
  br label %27

60:                                               ; preds = %27
  %61 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 2
  %63 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %62, align 8
  %64 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %66 = call i32 %63(%struct.ifnet* %64, %struct.mbuf* %65)
  br label %81

67:                                               ; preds = %21
  br label %68

68:                                               ; preds = %71, %67
  %69 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %70 = icmp ne %struct.mbuf* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 0
  %74 = load %struct.mbuf*, %struct.mbuf** %73, align 8
  store %struct.mbuf* %74, %struct.mbuf** %7, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %76, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %78 = call i32 @m_freem(%struct.mbuf* %77)
  %79 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %79, %struct.mbuf** %4, align 8
  br label %68

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %60
  ret void
}

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
