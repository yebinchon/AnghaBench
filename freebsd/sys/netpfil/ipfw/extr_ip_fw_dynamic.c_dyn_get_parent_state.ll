; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_get_parent_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_get_parent_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_flow_id = type { i32 }
%struct.ip_fw = type { i32, i32 }
%struct.dyn_parent = type { i32 }
%struct.dyn_ipv4_state = type { %struct.dyn_parent* }

@V_curr_dyn_buckets = common dso_local global i32 0, align 4
@ipv4_parent_add = common dso_local global i32 0, align 4
@V_fw_verbose = common dso_local global i64 0, align 8
@last_log = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%u drop session\00", align 1
@O_LIMIT = common dso_local global i32 0, align 4
@LOG_SECURITY = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"too many entries\00", align 1
@ipv6_parent_add = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ipfw_flow_id*, i64, %struct.ip_fw*, i64, i64, i32)* @dyn_get_parent_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dyn_get_parent_state(%struct.ipfw_flow_id* %0, i64 %1, %struct.ip_fw* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ipfw_flow_id*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ip_fw*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [24 x i8], align 16
  %15 = alloca %struct.dyn_parent*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.dyn_ipv4_state*, align 8
  store %struct.ipfw_flow_id* %0, %struct.ipfw_flow_id** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.ip_fw* %2, %struct.ip_fw** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.dyn_parent* null, %struct.dyn_parent** %15, align 8
  store i8* null, i8** %16, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i32, i32* @V_curr_dyn_buckets, align 4
  %22 = call i64 @DYN_BUCKET(i64 %20, i32 %21)
  store i64 %22, i64* %17, align 8
  %23 = call i32 (...) @DYNSTATE_CRITICAL_ENTER()
  %24 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %8, align 8
  %25 = call i64 @IS_IP4_FLOW_ID(%struct.ipfw_flow_id* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %6
  %28 = load i64, i64* %17, align 8
  %29 = load i32, i32* @ipv4_parent_add, align 4
  %30 = call i64 @DYN_BUCKET_VERSION(i64 %28, i32 %29)
  store i64 %30, i64* %18, align 8
  %31 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %8, align 8
  %32 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %33 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %34 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %37 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %17, align 8
  %40 = call %struct.dyn_ipv4_state* @dyn_lookup_ipv4_parent(%struct.ipfw_flow_id* %31, %struct.ip_fw* %32, i32 %35, i32 %38, i64 %39)
  store %struct.dyn_ipv4_state* %40, %struct.dyn_ipv4_state** %19, align 8
  %41 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %19, align 8
  %42 = icmp eq %struct.dyn_ipv4_state* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %27
  %44 = call i32 (...) @DYNSTATE_CRITICAL_EXIT()
  %45 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %46 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %47 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %50 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %8, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call %struct.dyn_ipv4_state* @dyn_add_ipv4_parent(%struct.ip_fw* %45, i32 %48, i32 %51, %struct.ipfw_flow_id* %52, i64 %53, i64 %54, i32 %55)
  store %struct.dyn_ipv4_state* %56, %struct.dyn_ipv4_state** %19, align 8
  %57 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %19, align 8
  %58 = icmp eq %struct.dyn_ipv4_state* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  store i8* null, i8** %7, align 8
  br label %102

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %27
  %62 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %19, align 8
  %63 = bitcast %struct.dyn_ipv4_state* %62 to i8*
  store i8* %63, i8** %16, align 8
  %64 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %19, align 8
  %65 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %64, i32 0, i32 0
  %66 = load %struct.dyn_parent*, %struct.dyn_parent** %65, align 8
  store %struct.dyn_parent* %66, %struct.dyn_parent** %15, align 8
  br label %69

67:                                               ; preds = %6
  %68 = call i32 (...) @DYNSTATE_CRITICAL_EXIT()
  store i8* null, i8** %7, align 8
  br label %102

69:                                               ; preds = %61
  %70 = load %struct.dyn_parent*, %struct.dyn_parent** %15, align 8
  %71 = call i64 @DPARENT_COUNT(%struct.dyn_parent* %70)
  %72 = load i64, i64* %12, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = call i32 (...) @DYNSTATE_CRITICAL_EXIT()
  %76 = load i64, i64* @V_fw_verbose, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load i64, i64* @last_log, align 8
  %80 = load i64, i64* @time_uptime, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load i64, i64* @time_uptime, align 8
  store i64 %83, i64* @last_log, align 8
  %84 = getelementptr inbounds [24 x i8], [24 x i8]* %14, i64 0, i64 0
  %85 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %86 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @snprintf(i8* %84, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %8, align 8
  %90 = load i32, i32* @O_LIMIT, align 4
  %91 = load i32, i32* @LOG_SECURITY, align 4
  %92 = load i32, i32* @LOG_DEBUG, align 4
  %93 = or i32 %91, %92
  %94 = getelementptr inbounds [24 x i8], [24 x i8]* %14, i64 0, i64 0
  %95 = call i32 @print_dyn_rule_flags(%struct.ipfw_flow_id* %89, i32 %90, i32 %93, i8* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %82, %78, %74
  store i8* null, i8** %7, align 8
  br label %102

97:                                               ; preds = %69
  %98 = load %struct.dyn_parent*, %struct.dyn_parent** %15, align 8
  %99 = call i32 @DPARENT_COUNT_INC(%struct.dyn_parent* %98)
  %100 = call i32 (...) @DYNSTATE_CRITICAL_EXIT()
  %101 = load i8*, i8** %16, align 8
  store i8* %101, i8** %7, align 8
  br label %102

102:                                              ; preds = %97, %96, %67, %59
  %103 = load i8*, i8** %7, align 8
  ret i8* %103
}

declare dso_local i64 @DYN_BUCKET(i64, i32) #1

declare dso_local i32 @DYNSTATE_CRITICAL_ENTER(...) #1

declare dso_local i64 @IS_IP4_FLOW_ID(%struct.ipfw_flow_id*) #1

declare dso_local i64 @DYN_BUCKET_VERSION(i64, i32) #1

declare dso_local %struct.dyn_ipv4_state* @dyn_lookup_ipv4_parent(%struct.ipfw_flow_id*, %struct.ip_fw*, i32, i32, i64) #1

declare dso_local i32 @DYNSTATE_CRITICAL_EXIT(...) #1

declare dso_local %struct.dyn_ipv4_state* @dyn_add_ipv4_parent(%struct.ip_fw*, i32, i32, %struct.ipfw_flow_id*, i64, i64, i32) #1

declare dso_local i64 @DPARENT_COUNT(%struct.dyn_parent*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @print_dyn_rule_flags(%struct.ipfw_flow_id*, i32, i32, i8*, i8*) #1

declare dso_local i32 @DPARENT_COUNT_INC(%struct.dyn_parent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
