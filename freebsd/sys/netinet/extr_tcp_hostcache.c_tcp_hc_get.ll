; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hostcache.c_tcp_hc_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hostcache.c_tcp_hc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.in_conninfo = type { i32 }
%struct.hc_metrics_lite = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hc_metrics = type { %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@V_tcp_use_hostcache = common dso_local global i32 0, align 4
@V_tcp_hostcache = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_hc_get(%struct.in_conninfo* %0, %struct.hc_metrics_lite* %1) #0 {
  %3 = alloca %struct.in_conninfo*, align 8
  %4 = alloca %struct.hc_metrics_lite*, align 8
  %5 = alloca %struct.hc_metrics*, align 8
  store %struct.in_conninfo* %0, %struct.in_conninfo** %3, align 8
  store %struct.hc_metrics_lite* %1, %struct.hc_metrics_lite** %4, align 8
  %6 = load i32, i32* @V_tcp_use_hostcache, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %65

9:                                                ; preds = %2
  %10 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %11 = call %struct.hc_metrics* @tcp_hc_lookup(%struct.in_conninfo* %10)
  store %struct.hc_metrics* %11, %struct.hc_metrics** %5, align 8
  %12 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %13 = icmp eq %struct.hc_metrics* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %16 = call i32 @bzero(%struct.hc_metrics_lite* %15, i32 28)
  br label %65

17:                                               ; preds = %9
  %18 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %19 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @V_tcp_hostcache, i32 0, i32 0), align 4
  %23 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %24 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %26 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %29 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %31 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %34 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %36 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %39 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %41 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %44 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %46 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %49 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %51 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %54 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %56 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %59 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %61 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @THC_UNLOCK(i32* %63)
  br label %65

65:                                               ; preds = %17, %14, %8
  ret void
}

declare dso_local %struct.hc_metrics* @tcp_hc_lookup(%struct.in_conninfo*) #1

declare dso_local i32 @bzero(%struct.hc_metrics_lite*, i32) #1

declare dso_local i32 @THC_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
