; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c___ecore_get_vport_pstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c___ecore_get_vport_pstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_eth_stats = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.eth_pstorm_per_queue_stat = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_eth_stats*, i32)* @__ecore_get_vport_pstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ecore_get_vport_pstats(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_eth_stats* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_eth_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.eth_pstorm_per_queue_stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_eth_stats* %2, %struct.ecore_eth_stats** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @__ecore_get_vport_pstats_addrlen(%struct.ecore_hwfn* %12, i32* %10, i32* %11, i32 %13)
  %15 = call i32 @OSAL_MEMSET(%struct.eth_pstorm_per_queue_stat* %9, i32 0, i32 28)
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %17 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @ecore_memcpy_from(%struct.ecore_hwfn* %16, %struct.ecore_ptt* %17, %struct.eth_pstorm_per_queue_stat* %9, i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, %struct.eth_pstorm_per_queue_stat* %9, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @HILO_64_REGPAIR(i32 %22)
  %24 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %7, align 8
  %25 = getelementptr inbounds %struct.ecore_eth_stats, %struct.ecore_eth_stats* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %23
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, %struct.eth_pstorm_per_queue_stat* %9, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @HILO_64_REGPAIR(i32 %32)
  %34 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %7, align 8
  %35 = getelementptr inbounds %struct.ecore_eth_stats, %struct.ecore_eth_stats* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %33
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, %struct.eth_pstorm_per_queue_stat* %9, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @HILO_64_REGPAIR(i32 %42)
  %44 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %7, align 8
  %45 = getelementptr inbounds %struct.ecore_eth_stats, %struct.ecore_eth_stats* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %43
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, %struct.eth_pstorm_per_queue_stat* %9, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @HILO_64_REGPAIR(i32 %52)
  %54 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %7, align 8
  %55 = getelementptr inbounds %struct.ecore_eth_stats, %struct.ecore_eth_stats* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %53
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, %struct.eth_pstorm_per_queue_stat* %9, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @HILO_64_REGPAIR(i32 %62)
  %64 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %7, align 8
  %65 = getelementptr inbounds %struct.ecore_eth_stats, %struct.ecore_eth_stats* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %63
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, %struct.eth_pstorm_per_queue_stat* %9, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @HILO_64_REGPAIR(i32 %72)
  %74 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %7, align 8
  %75 = getelementptr inbounds %struct.ecore_eth_stats, %struct.ecore_eth_stats* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %73
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, %struct.eth_pstorm_per_queue_stat* %9, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @HILO_64_REGPAIR(i32 %82)
  %84 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %7, align 8
  %85 = getelementptr inbounds %struct.ecore_eth_stats, %struct.ecore_eth_stats* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %83
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  ret void
}

declare dso_local i32 @__ecore_get_vport_pstats_addrlen(%struct.ecore_hwfn*, i32*, i32*, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.eth_pstorm_per_queue_stat*, i32, i32) #1

declare dso_local i32 @ecore_memcpy_from(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.eth_pstorm_per_queue_stat*, i32, i32) #1

declare dso_local i64 @HILO_64_REGPAIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
