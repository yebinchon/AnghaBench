; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_ipfw_dyn_lookup_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_ipfw_dyn_lookup_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.ip_fw** }
%struct.ip_fw = type { i64, i32, %struct.TYPE_7__*, %struct.dyn_data* }
%struct.TYPE_7__ = type { %struct.ip_fw* }
%struct.dyn_data = type { i64, i64, i32, i32, %struct.ip_fw* }
%struct.ip_fw_args = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ipfw_dyn_info = type { i64, i8*, i32, i32 }
%struct.dyn_ipv4_state = type { i64, i32, %struct.TYPE_7__*, %struct.dyn_data* }

@V_layer3_chain = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@MATCH_NONE = common dso_local global i8* null, align 8
@O_LIMIT = common dso_local global i64 0, align 8
@V_dyn_keep_states = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"rule %p  [%u, %u] is considered invalid in data %p\00", align 1
@V_set_disable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_fw* @ipfw_dyn_lookup_state(%struct.ip_fw_args* %0, i8* %1, i32 %2, %struct.TYPE_8__* %3, %struct.ipfw_dyn_info* %4) #0 {
  %6 = alloca %struct.ip_fw_args*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.ipfw_dyn_info*, align 8
  %11 = alloca %struct.dyn_data*, align 8
  %12 = alloca %struct.ip_fw*, align 8
  %13 = alloca %struct.dyn_ipv4_state*, align 8
  store %struct.ip_fw_args* %0, %struct.ip_fw_args** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store %struct.ipfw_dyn_info* %4, %struct.ipfw_dyn_info** %10, align 8
  %14 = call i32 @IPFW_RLOCK_ASSERT(%struct.TYPE_9__* @V_layer3_chain)
  store %struct.dyn_data* null, %struct.dyn_data** %11, align 8
  store %struct.ip_fw* null, %struct.ip_fw** %12, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %10, align 8
  %19 = getelementptr inbounds %struct.ipfw_dyn_info, %struct.ipfw_dyn_info* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i8*, i8** @MATCH_NONE, align 8
  %21 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %10, align 8
  %22 = getelementptr inbounds %struct.ipfw_dyn_info, %struct.ipfw_dyn_info* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ip_fw_args*, %struct.ip_fw_args** %6, align 8
  %24 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %23, i32 0, i32 0
  %25 = call i32 @hash_packet(i32* %24)
  %26 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %10, align 8
  %27 = getelementptr inbounds %struct.ipfw_dyn_info, %struct.ipfw_dyn_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = call i32 (...) @DYNSTATE_CRITICAL_ENTER()
  %29 = load %struct.ip_fw_args*, %struct.ip_fw_args** %6, align 8
  %30 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %29, i32 0, i32 0
  %31 = call i64 @IS_IP4_FLOW_ID(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %5
  %34 = load %struct.ip_fw_args*, %struct.ip_fw_args** %6, align 8
  %35 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %34, i32 0, i32 0
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.ip_fw* @dyn_lookup_ipv4_state(i32* %35, i8* %36, %struct.ipfw_dyn_info* %37, i32 %38)
  %40 = bitcast %struct.ip_fw* %39 to %struct.dyn_ipv4_state*
  store %struct.dyn_ipv4_state* %40, %struct.dyn_ipv4_state** %13, align 8
  %41 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %13, align 8
  %42 = icmp ne %struct.dyn_ipv4_state* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %33
  %44 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %13, align 8
  %45 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %44, i32 0, i32 3
  %46 = load %struct.dyn_data*, %struct.dyn_data** %45, align 8
  store %struct.dyn_data* %46, %struct.dyn_data** %11, align 8
  %47 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %13, align 8
  %48 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @O_LIMIT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %54 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %53, i32 0, i32 4
  %55 = load %struct.ip_fw*, %struct.ip_fw** %54, align 8
  %56 = bitcast %struct.ip_fw* %55 to %struct.dyn_ipv4_state*
  store %struct.dyn_ipv4_state* %56, %struct.dyn_ipv4_state** %13, align 8
  %57 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %13, align 8
  %58 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.ip_fw*, %struct.ip_fw** %60, align 8
  store %struct.ip_fw* %61, %struct.ip_fw** %12, align 8
  br label %66

62:                                               ; preds = %43
  %63 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %64 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %63, i32 0, i32 4
  %65 = load %struct.ip_fw*, %struct.ip_fw** %64, align 8
  store %struct.ip_fw* %65, %struct.ip_fw** %12, align 8
  br label %66

66:                                               ; preds = %62, %52
  br label %67

67:                                               ; preds = %66, %33
  br label %68

68:                                               ; preds = %67, %5
  %69 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %70 = icmp ne %struct.dyn_data* %69, null
  br i1 %70, label %71, label %147

71:                                               ; preds = %68
  %72 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %73 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @V_layer3_chain, i32 0, i32 0), align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %140

77:                                               ; preds = %71
  %78 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %79 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %82 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ipfw_find_rule(%struct.TYPE_9__* @V_layer3_chain, i32 %80, i32 %83)
  %85 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %86 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.ip_fw**, %struct.ip_fw*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @V_layer3_chain, i32 0, i32 2), align 8
  %88 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %89 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %87, i64 %90
  %92 = load %struct.ip_fw*, %struct.ip_fw** %91, align 8
  %93 = load %struct.ip_fw*, %struct.ip_fw** %12, align 8
  %94 = icmp eq %struct.ip_fw* %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %77
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @V_layer3_chain, i32 0, i32 0), align 8
  %97 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %98 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %100 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %10, align 8
  %103 = getelementptr inbounds %struct.ipfw_dyn_info, %struct.ipfw_dyn_info* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %139

104:                                              ; preds = %77
  %105 = load i64, i64* @V_dyn_keep_states, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %104
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @V_layer3_chain, i32 0, i32 1), align 8
  %109 = icmp sgt i32 %108, 1
  %110 = zext i1 %109 to i32
  %111 = call i32 @MPASS(i32 %110)
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @V_layer3_chain, i32 0, i32 0), align 8
  %113 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %114 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @V_layer3_chain, i32 0, i32 1), align 8
  %116 = sub nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %119 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %121 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %10, align 8
  %124 = getelementptr inbounds %struct.ipfw_dyn_info, %struct.ipfw_dyn_info* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %138

125:                                              ; preds = %104
  store %struct.ip_fw* null, %struct.ip_fw** %12, align 8
  %126 = load i8*, i8** @MATCH_NONE, align 8
  %127 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %10, align 8
  %128 = getelementptr inbounds %struct.ipfw_dyn_info, %struct.ipfw_dyn_info* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.ip_fw*, %struct.ip_fw** %12, align 8
  %130 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %131 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %134 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %137 = call i32 @DYN_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.ip_fw* %129, i32 %132, i32 %135, %struct.dyn_data* %136)
  br label %138

138:                                              ; preds = %125, %107
  br label %139

139:                                              ; preds = %138, %95
  br label %146

140:                                              ; preds = %71
  %141 = load %struct.dyn_data*, %struct.dyn_data** %11, align 8
  %142 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %10, align 8
  %145 = getelementptr inbounds %struct.ipfw_dyn_info, %struct.ipfw_dyn_info* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %140, %139
  br label %147

147:                                              ; preds = %146, %68
  %148 = call i32 (...) @DYNSTATE_CRITICAL_EXIT()
  %149 = load %struct.ip_fw*, %struct.ip_fw** %12, align 8
  ret %struct.ip_fw* %149
}

declare dso_local i32 @IPFW_RLOCK_ASSERT(%struct.TYPE_9__*) #1

declare dso_local i32 @hash_packet(i32*) #1

declare dso_local i32 @DYNSTATE_CRITICAL_ENTER(...) #1

declare dso_local i64 @IS_IP4_FLOW_ID(i32*) #1

declare dso_local %struct.ip_fw* @dyn_lookup_ipv4_state(i32*, i8*, %struct.ipfw_dyn_info*, i32) #1

declare dso_local i64 @ipfw_find_rule(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @DYN_DEBUG(i8*, %struct.ip_fw*, i32, i32, %struct.dyn_data*) #1

declare dso_local i32 @DYNSTATE_CRITICAL_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
