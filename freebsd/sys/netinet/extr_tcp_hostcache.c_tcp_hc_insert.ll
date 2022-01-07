; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hostcache.c_tcp_hc_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hostcache.c_tcp_hc_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, %struct.hc_head*, i32, i32 }
%struct.hc_head = type { i64, i32, i32 }
%struct.hc_metrics = type { i32, %struct.hc_head*, i32, i32, i32 }
%struct.in_conninfo = type { i32, i32, i32, i32 }

@V_tcp_use_hostcache = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"tcp_hc_insert with NULL in_conninfo pointer\00", align 1
@INC_ISIPV6 = common dso_local global i32 0, align 4
@V_tcp_hostcache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@hc_qhead = common dso_local global i32 0, align 4
@rmx_q = common dso_local global i32 0, align 4
@tcps_hc_bucketoverflow = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@tcps_hc_added = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hc_metrics* (%struct.in_conninfo*)* @tcp_hc_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hc_metrics* @tcp_hc_insert(%struct.in_conninfo* %0) #0 {
  %2 = alloca %struct.hc_metrics*, align 8
  %3 = alloca %struct.in_conninfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hc_head*, align 8
  %6 = alloca %struct.hc_metrics*, align 8
  store %struct.in_conninfo* %0, %struct.in_conninfo** %3, align 8
  %7 = load i32, i32* @V_tcp_use_hostcache, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.hc_metrics* null, %struct.hc_metrics** %2, align 8
  br label %135

10:                                               ; preds = %1
  %11 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %12 = icmp ne %struct.in_conninfo* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %16 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @INC_ISIPV6, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %23 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %22, i32 0, i32 3
  %24 = call i32 @HOSTCACHE_HASH6(i32* %23)
  store i32 %24, i32* %4, align 4
  br label %29

25:                                               ; preds = %10
  %26 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %27 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %26, i32 0, i32 1
  %28 = call i32 @HOSTCACHE_HASH(i32* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.hc_head*, %struct.hc_head** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 3), align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %30, i64 %32
  store %struct.hc_head* %33, %struct.hc_head** %5, align 8
  %34 = load %struct.hc_head*, %struct.hc_head** %5, align 8
  %35 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %34, i32 0, i32 2
  %36 = call i32 @THC_LOCK(i32* %35)
  %37 = load %struct.hc_head*, %struct.hc_head** %5, align 8
  %38 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 0), align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %29
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 1), align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 2), align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42, %29
  %47 = load %struct.hc_head*, %struct.hc_head** %5, align 8
  %48 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %47, i32 0, i32 1
  %49 = load i32, i32* @hc_qhead, align 4
  %50 = call %struct.hc_metrics* @TAILQ_LAST(i32* %48, i32 %49)
  store %struct.hc_metrics* %50, %struct.hc_metrics** %6, align 8
  %51 = load %struct.hc_metrics*, %struct.hc_metrics** %6, align 8
  %52 = icmp eq %struct.hc_metrics* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.hc_head*, %struct.hc_head** %5, align 8
  %55 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %54, i32 0, i32 2
  %56 = call i32 @THC_UNLOCK(i32* %55)
  store %struct.hc_metrics* null, %struct.hc_metrics** %2, align 8
  br label %135

57:                                               ; preds = %46
  %58 = load %struct.hc_head*, %struct.hc_head** %5, align 8
  %59 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %58, i32 0, i32 1
  %60 = load %struct.hc_metrics*, %struct.hc_metrics** %6, align 8
  %61 = load i32, i32* @rmx_q, align 4
  %62 = call i32 @TAILQ_REMOVE(i32* %59, %struct.hc_metrics* %60, i32 %61)
  %63 = load %struct.hc_head*, %struct.hc_head** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 3), align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %63, i64 %65
  %67 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 1), align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 1), align 8
  %72 = load i32, i32* @tcps_hc_bucketoverflow, align 4
  %73 = call i32 @TCPSTAT_INC(i32 %72)
  br label %85

74:                                               ; preds = %42
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 5), align 4
  %76 = load i32, i32* @M_NOWAIT, align 4
  %77 = call %struct.hc_metrics* @uma_zalloc(i32 %75, i32 %76)
  store %struct.hc_metrics* %77, %struct.hc_metrics** %6, align 8
  %78 = load %struct.hc_metrics*, %struct.hc_metrics** %6, align 8
  %79 = icmp eq %struct.hc_metrics* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.hc_head*, %struct.hc_head** %5, align 8
  %82 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %81, i32 0, i32 2
  %83 = call i32 @THC_UNLOCK(i32* %82)
  store %struct.hc_metrics* null, %struct.hc_metrics** %2, align 8
  br label %135

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %57
  %86 = load %struct.hc_metrics*, %struct.hc_metrics** %6, align 8
  %87 = call i32 @bzero(%struct.hc_metrics* %86, i32 32)
  %88 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %89 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @INC_ISIPV6, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %85
  %95 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %96 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.hc_metrics*, %struct.hc_metrics** %6, align 8
  %99 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %101 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hc_metrics*, %struct.hc_metrics** %6, align 8
  %104 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %111

105:                                              ; preds = %85
  %106 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %107 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.hc_metrics*, %struct.hc_metrics** %6, align 8
  %110 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %105, %94
  %112 = load %struct.hc_head*, %struct.hc_head** %5, align 8
  %113 = load %struct.hc_metrics*, %struct.hc_metrics** %6, align 8
  %114 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %113, i32 0, i32 1
  store %struct.hc_head* %112, %struct.hc_head** %114, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 4), align 8
  %116 = load %struct.hc_metrics*, %struct.hc_metrics** %6, align 8
  %117 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.hc_head*, %struct.hc_head** %5, align 8
  %119 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %118, i32 0, i32 1
  %120 = load %struct.hc_metrics*, %struct.hc_metrics** %6, align 8
  %121 = load i32, i32* @rmx_q, align 4
  %122 = call i32 @TAILQ_INSERT_HEAD(i32* %119, %struct.hc_metrics* %120, i32 %121)
  %123 = load %struct.hc_head*, %struct.hc_head** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 3), align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %123, i64 %125
  %127 = getelementptr inbounds %struct.hc_head, %struct.hc_head* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 1), align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 1), align 8
  %132 = load i32, i32* @tcps_hc_added, align 4
  %133 = call i32 @TCPSTAT_INC(i32 %132)
  %134 = load %struct.hc_metrics*, %struct.hc_metrics** %6, align 8
  store %struct.hc_metrics* %134, %struct.hc_metrics** %2, align 8
  br label %135

135:                                              ; preds = %111, %80, %53, %9
  %136 = load %struct.hc_metrics*, %struct.hc_metrics** %2, align 8
  ret %struct.hc_metrics* %136
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @HOSTCACHE_HASH6(i32*) #1

declare dso_local i32 @HOSTCACHE_HASH(i32*) #1

declare dso_local i32 @THC_LOCK(i32*) #1

declare dso_local %struct.hc_metrics* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @THC_UNLOCK(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.hc_metrics*, i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local %struct.hc_metrics* @uma_zalloc(i32, i32) #1

declare dso_local i32 @bzero(%struct.hc_metrics*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.hc_metrics*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
