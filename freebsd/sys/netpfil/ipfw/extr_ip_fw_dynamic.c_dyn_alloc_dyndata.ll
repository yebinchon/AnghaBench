; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_alloc_dyndata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_alloc_dyndata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_data = type { i64, i8*, i8*, i8*, i8*, i8* }
%struct.ipfw_flow_id = type { i32 }

@V_dyn_data_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@last_log = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"ipfw: Cannot allocate dynamic state, consider increasing net.inet.ip.fw.dyn_max\0A\00", align 1
@V_dyn_syn_lifetime = common dso_local global i64 0, align 8
@MATCH_FORWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dyn_data* (i8*, i8*, i8*, %struct.ipfw_flow_id*, i8*, i32, i8*, i8*)* @dyn_alloc_dyndata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dyn_data* @dyn_alloc_dyndata(i8* %0, i8* %1, i8* %2, %struct.ipfw_flow_id* %3, i8* %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.dyn_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ipfw_flow_id*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.dyn_data*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.ipfw_flow_id* %3, %struct.ipfw_flow_id** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %19 = load i32, i32* @V_dyn_data_zone, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.dyn_data* @uma_zalloc(i32 %19, i32 %22)
  store %struct.dyn_data* %23, %struct.dyn_data** %18, align 8
  %24 = load %struct.dyn_data*, %struct.dyn_data** %18, align 8
  %25 = icmp eq %struct.dyn_data* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %8
  %27 = load i64, i64* @last_log, align 8
  %28 = load i64, i64* @time_uptime, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* @time_uptime, align 8
  store i64 %31, i64* @last_log, align 8
  %32 = load i32, i32* @LOG_DEBUG, align 4
  %33 = call i32 @log(i32 %32, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %26
  store %struct.dyn_data* null, %struct.dyn_data** %9, align 8
  br label %63

35:                                               ; preds = %8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.dyn_data*, %struct.dyn_data** %18, align 8
  %38 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.dyn_data*, %struct.dyn_data** %18, align 8
  %41 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.dyn_data*, %struct.dyn_data** %18, align 8
  %44 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load %struct.dyn_data*, %struct.dyn_data** %18, align 8
  %47 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load %struct.dyn_data*, %struct.dyn_data** %18, align 8
  %50 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* @time_uptime, align 8
  %52 = load i64, i64* @V_dyn_syn_lifetime, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.dyn_data*, %struct.dyn_data** %18, align 8
  %55 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.dyn_data*, %struct.dyn_data** %18, align 8
  %57 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %13, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @MATCH_FORWARD, align 4
  %61 = call i32 @dyn_update_proto_state(%struct.dyn_data* %56, %struct.ipfw_flow_id* %57, i8* %58, i32 %59, i32 %60)
  %62 = load %struct.dyn_data*, %struct.dyn_data** %18, align 8
  store %struct.dyn_data* %62, %struct.dyn_data** %9, align 8
  br label %63

63:                                               ; preds = %35, %34
  %64 = load %struct.dyn_data*, %struct.dyn_data** %9, align 8
  ret %struct.dyn_data* %64
}

declare dso_local %struct.dyn_data* @uma_zalloc(i32, i32) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @dyn_update_proto_state(%struct.dyn_data*, %struct.ipfw_flow_id*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
