; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_rx_record_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_rx_record_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.lacp_port = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@lacp_partner_admin_strict = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@lacp_partner_admin_optimistic = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@LACP_STATE_DEFAULTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacp_port*)* @lacp_sm_rx_record_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lacp_sm_rx_record_default(%struct.lacp_port* %0) #0 {
  %2 = alloca %struct.lacp_port*, align 8
  %3 = alloca i32, align 4
  store %struct.lacp_port* %0, %struct.lacp_port** %2, align 8
  %4 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %5 = call i32 @LACP_TRACE(%struct.lacp_port* %4)
  %6 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %7 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %11 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %18 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %17, i32 0, i32 1
  %19 = bitcast %struct.TYPE_5__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.TYPE_5__* @lacp_partner_admin_strict to i8*), i64 4, i1 false)
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %22 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %21, i32 0, i32 1
  %23 = bitcast %struct.TYPE_5__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.TYPE_5__* @lacp_partner_admin_optimistic to i8*), i64 4, i1 false)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @LACP_STATE_DEFAULTED, align 4
  %26 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %27 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @lacp_sm_ptx_update_timeout(%struct.lacp_port* %30, i32 %31)
  ret void
}

declare dso_local i32 @LACP_TRACE(%struct.lacp_port*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lacp_sm_ptx_update_timeout(%struct.lacp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
