; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_multiq_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_multiq_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.mbuf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.oce_wq = type { i32, %struct.TYPE_3__, %struct.buf_ring* }
%struct.TYPE_3__ = type { i32 }
%struct.buf_ring = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@IFCOUNTER_OMCASTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*, %struct.oce_wq*)* @oce_multiq_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oce_multiq_transmit(%struct.ifnet* %0, %struct.mbuf* %1, %struct.oce_wq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.oce_wq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.buf_ring*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.oce_wq* %2, %struct.oce_wq** %7, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  store %struct.buf_ring* null, %struct.buf_ring** %12, align 8
  %16 = load %struct.oce_wq*, %struct.oce_wq** %7, align 8
  %17 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %16, i32 0, i32 2
  %18 = load %struct.buf_ring*, %struct.buf_ring** %17, align 8
  store %struct.buf_ring* %18, %struct.buf_ring** %12, align 8
  %19 = load %struct.oce_wq*, %struct.oce_wq** %7, align 8
  %20 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %26 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %33 = icmp ne %struct.mbuf* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %36 = load %struct.buf_ring*, %struct.buf_ring** %12, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %38 = call i32 @drbr_enqueue(%struct.ifnet* %35, %struct.buf_ring* %36, %struct.mbuf* %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %113

41:                                               ; preds = %3
  %42 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %43 = icmp ne %struct.mbuf* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %46 = load %struct.buf_ring*, %struct.buf_ring** %12, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %48 = call i32 @drbr_enqueue(%struct.ifnet* %45, %struct.buf_ring* %46, %struct.mbuf* %47)
  store i32 %48, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %113

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %108, %53
  %55 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %56 = load %struct.buf_ring*, %struct.buf_ring** %12, align 8
  %57 = call %struct.mbuf* @drbr_peek(%struct.ifnet* %55, %struct.buf_ring* %56)
  store %struct.mbuf* %57, %struct.mbuf** %11, align 8
  %58 = icmp ne %struct.mbuf* %57, null
  br i1 %58, label %59, label %112

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @oce_tx(i32 %60, %struct.mbuf** %11, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %66 = icmp eq %struct.mbuf* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %69 = load %struct.buf_ring*, %struct.buf_ring** %12, align 8
  %70 = call i32 @drbr_advance(%struct.ifnet* %68, %struct.buf_ring* %69)
  br label %86

71:                                               ; preds = %64
  %72 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %73 = load %struct.buf_ring*, %struct.buf_ring** %12, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %75 = call i32 @drbr_putback(%struct.ifnet* %72, %struct.buf_ring* %73, %struct.mbuf* %74)
  %76 = load %struct.oce_wq*, %struct.oce_wq** %7, align 8
  %77 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %82 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %71, %67
  br label %112

87:                                               ; preds = %59
  %88 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %89 = load %struct.buf_ring*, %struct.buf_ring** %12, align 8
  %90 = call i32 @drbr_advance(%struct.ifnet* %88, %struct.buf_ring* %89)
  %91 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %92 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %93 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %94 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @if_inc_counter(%struct.ifnet* %91, i32 %92, i32 %96)
  %98 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %99 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @M_MCAST, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %87
  %105 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %106 = load i32, i32* @IFCOUNTER_OMCASTS, align 4
  %107 = call i32 @if_inc_counter(%struct.ifnet* %105, i32 %106, i32 1)
  br label %108

108:                                              ; preds = %104, %87
  %109 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %110 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %111 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %109, %struct.mbuf* %110)
  br label %54

112:                                              ; preds = %86, %54
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %50, %39
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, %struct.buf_ring*, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @drbr_peek(%struct.ifnet*, %struct.buf_ring*) #1

declare dso_local i64 @oce_tx(i32, %struct.mbuf**, i32) #1

declare dso_local i32 @drbr_advance(%struct.ifnet*, %struct.buf_ring*) #1

declare dso_local i32 @drbr_putback(%struct.ifnet*, %struct.buf_ring*, %struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
