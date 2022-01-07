; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.pfsync_softc* }
%struct.pfsync_softc = type { i64, i32, %struct.pfsync_softc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pfsync_bucket = type { i64, i32, %struct.pfsync_bucket*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pfsync_deferral = type { i64, i32, %struct.pfsync_deferral*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pfsync_buckets = common dso_local global i32 0, align 4
@pd_entry = common dso_local global i32 0, align 4
@M_PFSYNC = common dso_local global i32 0, align 4
@PFSYNCF_OK = common dso_local global i32 0, align 4
@V_pfsync_carp_adj = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pfsync destroy\00", align 1
@V_pfsyncif = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @pfsync_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_clone_destroy(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.pfsync_softc*, align 8
  %4 = alloca %struct.pfsync_bucket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfsync_deferral*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  store %struct.pfsync_softc* %9, %struct.pfsync_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %76, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @pfsync_buckets, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %79

14:                                               ; preds = %10
  %15 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %16 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %15, i32 0, i32 2
  %17 = load %struct.pfsync_softc*, %struct.pfsync_softc** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %17, i64 %19
  %21 = bitcast %struct.pfsync_softc* %20 to %struct.pfsync_bucket*
  store %struct.pfsync_bucket* %21, %struct.pfsync_bucket** %4, align 8
  br label %22

22:                                               ; preds = %71, %14
  %23 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %24 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %29 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %28, i32 0, i32 12
  %30 = call %struct.pfsync_softc* @TAILQ_FIRST(i32* %29)
  %31 = bitcast %struct.pfsync_softc* %30 to %struct.pfsync_deferral*
  store %struct.pfsync_deferral* %31, %struct.pfsync_deferral** %6, align 8
  %32 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %33 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %32, i32 0, i32 12
  %34 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %6, align 8
  %35 = bitcast %struct.pfsync_deferral* %34 to %struct.pfsync_softc*
  %36 = load i32, i32* @pd_entry, align 4
  %37 = call i32 @TAILQ_REMOVE(i32* %33, %struct.pfsync_softc* %35, i32 %36)
  %38 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %39 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %6, align 8
  %43 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %42, i32 0, i32 8
  %44 = call i64 @callout_stop(i32* %43)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %27
  %47 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %6, align 8
  %48 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pf_release_state(i32 %49)
  %51 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %6, align 8
  %52 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @m_freem(i32 %53)
  %55 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %6, align 8
  %56 = bitcast %struct.pfsync_deferral* %55 to %struct.pfsync_softc*
  %57 = load i32, i32* @M_PFSYNC, align 4
  %58 = call i32 @free(%struct.pfsync_softc* %56, i32 %57)
  br label %71

59:                                               ; preds = %27
  %60 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %6, align 8
  %61 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %6, align 8
  %65 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %64, i32 0, i32 8
  %66 = call i32 @callout_drain(i32* %65)
  %67 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %6, align 8
  %68 = bitcast %struct.pfsync_deferral* %67 to %struct.pfsync_softc*
  %69 = load i32, i32* @M_PFSYNC, align 4
  %70 = call i32 @free(%struct.pfsync_softc* %68, i32 %69)
  br label %71

71:                                               ; preds = %59, %46
  br label %22

72:                                               ; preds = %22
  %73 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %4, align 8
  %74 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %73, i32 0, i32 7
  %75 = call i32 @callout_drain(i32* %74)
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %10

79:                                               ; preds = %10
  %80 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %81 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %80, i32 0, i32 6
  %82 = call i32 @callout_drain(i32* %81)
  %83 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %84 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %83, i32 0, i32 5
  %85 = call i32 @callout_drain(i32* %84)
  %86 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %87 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @PFSYNCF_OK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %79
  br i1 true, label %93, label %97

93:                                               ; preds = %92
  %94 = load i32, i32* @V_pfsync_carp_adj, align 4
  %95 = sub nsw i32 0, %94
  %96 = call i32 @carp_demote_adj_p(i32 %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %92, %79
  %98 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %99 = call i32 @bpfdetach(%struct.ifnet* %98)
  %100 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %101 = call i32 @if_detach(%struct.ifnet* %100)
  %102 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %103 = call i32 @pfsync_drop(%struct.pfsync_softc* %102)
  %104 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %105 = call i32 @if_free(%struct.ifnet* %104)
  %106 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %107 = call i32 @pfsync_multicast_cleanup(%struct.pfsync_softc* %106)
  %108 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %109 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %108, i32 0, i32 4
  %110 = call i32 @mtx_destroy(i32* %109)
  %111 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %112 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %111, i32 0, i32 3
  %113 = call i32 @mtx_destroy(i32* %112)
  %114 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %115 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %114, i32 0, i32 2
  %116 = load %struct.pfsync_softc*, %struct.pfsync_softc** %115, align 8
  %117 = load i32, i32* @M_PFSYNC, align 4
  %118 = call i32 @free(%struct.pfsync_softc* %116, i32 %117)
  %119 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %120 = load i32, i32* @M_PFSYNC, align 4
  %121 = call i32 @free(%struct.pfsync_softc* %119, i32 %120)
  store i32* null, i32** @V_pfsyncif, align 8
  ret void
}

declare dso_local %struct.pfsync_softc* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pfsync_softc*, i32) #1

declare dso_local i64 @callout_stop(i32*) #1

declare dso_local i32 @pf_release_state(i32) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @free(%struct.pfsync_softc*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @carp_demote_adj_p(i32, i8*) #1

declare dso_local i32 @bpfdetach(%struct.ifnet*) #1

declare dso_local i32 @if_detach(%struct.ifnet*) #1

declare dso_local i32 @pfsync_drop(%struct.pfsync_softc*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @pfsync_multicast_cleanup(%struct.pfsync_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
