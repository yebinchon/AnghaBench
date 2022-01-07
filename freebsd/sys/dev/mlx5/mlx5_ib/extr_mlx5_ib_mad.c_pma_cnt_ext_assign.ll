; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_pma_cnt_ext_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_pma_cnt_ext_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ib_pma_portcounters_ext = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@query_vport_counter_out = common dso_local global i32 0, align 4
@transmitted_ib_unicast = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@transmitted_ib_multicast = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@received_ib_unicast = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@received_ib_multicast = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_pma_portcounters_ext*, i8*)* @pma_cnt_ext_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pma_cnt_ext_assign(%struct.ib_pma_portcounters_ext* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_pma_portcounters_ext*, align 8
  %4 = alloca i8*, align 8
  store %struct.ib_pma_portcounters_ext* %0, %struct.ib_pma_portcounters_ext** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @query_vport_counter_out, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @transmitted_ib_unicast, i32 0, i32 1), align 4
  %8 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @MLX5_GET64 to i32 (i32, i8*, i32, ...)*)(i32 %5, i8* %6, i32 %7)
  %9 = load i32, i32* @query_vport_counter_out, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @transmitted_ib_multicast, i32 0, i32 1), align 4
  %12 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @MLX5_GET64 to i32 (i32, i8*, i32, ...)*)(i32 %9, i8* %10, i32 %11)
  %13 = add nsw i32 %8, %12
  %14 = ashr i32 %13, 2
  %15 = call i8* @cpu_to_be64(i32 %14)
  %16 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %3, align 8
  %17 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %16, i32 0, i32 7
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @query_vport_counter_out, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @received_ib_unicast, i32 0, i32 1), align 4
  %21 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @MLX5_GET64 to i32 (i32, i8*, i32, ...)*)(i32 %18, i8* %19, i32 %20)
  %22 = load i32, i32* @query_vport_counter_out, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @received_ib_multicast, i32 0, i32 1), align 4
  %25 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @MLX5_GET64 to i32 (i32, i8*, i32, ...)*)(i32 %22, i8* %23, i32 %24)
  %26 = add nsw i32 %21, %25
  %27 = ashr i32 %26, 2
  %28 = call i8* @cpu_to_be64(i32 %27)
  %29 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %3, align 8
  %30 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @query_vport_counter_out, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @transmitted_ib_unicast, i32 0, i32 0), align 4
  %34 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @MLX5_GET64 to i32 (i32, i8*, i32, ...)*)(i32 %31, i8* %32, i32 %33)
  %35 = load i32, i32* @query_vport_counter_out, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @transmitted_ib_multicast, i32 0, i32 0), align 4
  %38 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @MLX5_GET64 to i32 (i32, i8*, i32, ...)*)(i32 %35, i8* %36, i32 %37)
  %39 = add nsw i32 %34, %38
  %40 = call i8* @cpu_to_be64(i32 %39)
  %41 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %3, align 8
  %42 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @query_vport_counter_out, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @received_ib_unicast, i32 0, i32 0), align 4
  %46 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @MLX5_GET64 to i32 (i32, i8*, i32, ...)*)(i32 %43, i8* %44, i32 %45)
  %47 = load i32, i32* @query_vport_counter_out, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @received_ib_multicast, i32 0, i32 0), align 4
  %50 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @MLX5_GET64 to i32 (i32, i8*, i32, ...)*)(i32 %47, i8* %48, i32 %49)
  %51 = add nsw i32 %46, %50
  %52 = call i8* @cpu_to_be64(i32 %51)
  %53 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %3, align 8
  %54 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @query_vport_counter_out, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @transmitted_ib_unicast, i32 0, i32 0), align 4
  %58 = call i8* @MLX5_GET64_BE(i32 %55, i8* %56, i32 %57)
  %59 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %3, align 8
  %60 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @query_vport_counter_out, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @received_ib_unicast, i32 0, i32 0), align 4
  %64 = call i8* @MLX5_GET64_BE(i32 %61, i8* %62, i32 %63)
  %65 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %3, align 8
  %66 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @query_vport_counter_out, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @transmitted_ib_multicast, i32 0, i32 0), align 4
  %70 = call i8* @MLX5_GET64_BE(i32 %67, i8* %68, i32 %69)
  %71 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %3, align 8
  %72 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @query_vport_counter_out, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @received_ib_multicast, i32 0, i32 0), align 4
  %76 = call i8* @MLX5_GET64_BE(i32 %73, i8* %74, i32 %75)
  %77 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %3, align 8
  %78 = getelementptr inbounds %struct.ib_pma_portcounters_ext, %struct.ib_pma_portcounters_ext* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  ret void
}

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @MLX5_GET64(...) #1

declare dso_local i8* @MLX5_GET64_BE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
