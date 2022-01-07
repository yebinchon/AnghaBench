; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sppp.c_ng_sppp_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_sppp.c_ng_sppp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @ng_sppp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_sppp_start(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %64

23:                                               ; preds = %17
  %24 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %56, %23
  %30 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %31 = call %struct.mbuf* @sppp_dequeue(%struct.ifnet* %30)
  store %struct.mbuf* %31, %struct.mbuf** %3, align 8
  %32 = icmp ne %struct.mbuf* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %36 = call i32 @BPF_MTAP(%struct.ifnet* %34, %struct.mbuf* %35)
  %37 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %46 = call i32 @NG_SEND_DATA_ONLY(i32 %41, i32 %44, %struct.mbuf* %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %33
  %50 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %64

56:                                               ; preds = %33
  br label %29

57:                                               ; preds = %29
  %58 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %57, %49, %22, %16
  ret void
}

declare dso_local %struct.mbuf* @sppp_dequeue(%struct.ifnet*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
