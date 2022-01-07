; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_add_ipv4_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_add_ipv4_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_flow_id = type { i32 }
%struct.ipfw_dyn_info = type { i64, i64, i64, i32 }
%struct.dyn_ipv4_state = type { i8* }

@V_curr_dyn_buckets = common dso_local global i32 0, align 4
@MATCH_UNKNOWN = common dso_local global i64 0, align 8
@ipv4_add = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V_dyn_data_zone = common dso_local global i32 0, align 4
@V_dyn_ipv4 = common dso_local global i32* null, align 8
@entry = common dso_local global i32 0, align 4
@dyn_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, %struct.ipfw_flow_id*, i8*, i32, i64, %struct.ipfw_dyn_info*, i32, i32, i32)* @dyn_add_ipv4_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dyn_add_ipv4_state(i8* %0, i64 %1, i32 %2, %struct.ipfw_flow_id* %3, i8* %4, i32 %5, i64 %6, %struct.ipfw_dyn_info* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ipfw_flow_id*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.ipfw_dyn_info*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.dyn_ipv4_state*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %13, align 8
  store i64 %1, i64* %14, align 8
  store i32 %2, i32* %15, align 4
  store %struct.ipfw_flow_id* %3, %struct.ipfw_flow_id** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i64 %6, i64* %19, align 8
  store %struct.ipfw_dyn_info* %7, %struct.ipfw_dyn_info** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %27 = load i64, i64* %19, align 8
  %28 = load i32, i32* @V_curr_dyn_buckets, align 4
  %29 = call i64 @DYN_BUCKET(i64 %27, i32 %28)
  store i64 %29, i64* %26, align 8
  %30 = load i64, i64* %26, align 8
  %31 = call i32 @DYN_BUCKET_LOCK(i64 %30)
  %32 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %20, align 8
  %33 = getelementptr inbounds %struct.ipfw_dyn_info, %struct.ipfw_dyn_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MATCH_UNKNOWN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %57, label %37

37:                                               ; preds = %11
  %38 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %20, align 8
  %39 = getelementptr inbounds %struct.ipfw_dyn_info, %struct.ipfw_dyn_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %22, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %57, label %43

43:                                               ; preds = %37
  %44 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %20, align 8
  %45 = getelementptr inbounds %struct.ipfw_dyn_info, %struct.ipfw_dyn_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %19, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %20, align 8
  %51 = getelementptr inbounds %struct.ipfw_dyn_info, %struct.ipfw_dyn_info* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %26, align 8
  %54 = load i32, i32* @ipv4_add, align 4
  %55 = call i64 @DYN_BUCKET_VERSION(i64 %53, i32 %54)
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %49, %43, %37, %11
  %58 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %16, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i64, i64* %26, align 8
  %62 = load i32, i32* %22, align 4
  %63 = call i64 @dyn_lookup_ipv4_state_locked(%struct.ipfw_flow_id* %58, i8* %59, i32 %60, i64 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load i64, i64* %26, align 8
  %67 = call i32 @DYN_BUCKET_UNLOCK(i64 %66)
  %68 = load i32, i32* @EEXIST, align 4
  store i32 %68, i32* %12, align 4
  br label %117

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %49
  %71 = load i8*, i8** %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %16, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = load i32, i32* %18, align 4
  %77 = load i64, i64* %19, align 8
  %78 = load i32, i32* %21, align 4
  %79 = call i8* @dyn_alloc_dyndata(i8* %71, i64 %72, i32 %73, %struct.ipfw_flow_id* %74, i8* %75, i32 %76, i64 %77, i32 %78)
  store i8* %79, i8** %25, align 8
  %80 = load i8*, i8** %25, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %70
  %83 = load i64, i64* %26, align 8
  %84 = call i32 @DYN_BUCKET_UNLOCK(i64 %83)
  %85 = load i32, i32* @ENOMEM, align 4
  store i32 %85, i32* %12, align 4
  br label %117

86:                                               ; preds = %70
  %87 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %16, align 8
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %23, align 4
  %90 = call %struct.dyn_ipv4_state* @dyn_alloc_ipv4_state(%struct.ipfw_flow_id* %87, i32 %88, i32 %89)
  store %struct.dyn_ipv4_state* %90, %struct.dyn_ipv4_state** %24, align 8
  %91 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %24, align 8
  %92 = icmp eq %struct.dyn_ipv4_state* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i64, i64* %26, align 8
  %95 = call i32 @DYN_BUCKET_UNLOCK(i64 %94)
  %96 = load i32, i32* @V_dyn_data_zone, align 4
  %97 = load i8*, i8** %25, align 8
  %98 = call i32 @uma_zfree(i32 %96, i8* %97)
  %99 = load i32, i32* @ENOMEM, align 4
  store i32 %99, i32* %12, align 4
  br label %117

100:                                              ; preds = %86
  %101 = load i8*, i8** %25, align 8
  %102 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %24, align 8
  %103 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** @V_dyn_ipv4, align 8
  %105 = load i64, i64* %26, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %24, align 8
  %108 = load i32, i32* @entry, align 4
  %109 = call i32 @CK_SLIST_INSERT_HEAD(i32* %106, %struct.dyn_ipv4_state* %107, i32 %108)
  %110 = load i32, i32* @dyn_count, align 4
  %111 = call i32 @DYN_COUNT_INC(i32 %110)
  %112 = load i64, i64* %26, align 8
  %113 = load i32, i32* @ipv4_add, align 4
  %114 = call i32 @DYN_BUCKET_VERSION_BUMP(i64 %112, i32 %113)
  %115 = load i64, i64* %26, align 8
  %116 = call i32 @DYN_BUCKET_UNLOCK(i64 %115)
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %100, %93, %82, %65
  %118 = load i32, i32* %12, align 4
  ret i32 %118
}

declare dso_local i64 @DYN_BUCKET(i64, i32) #1

declare dso_local i32 @DYN_BUCKET_LOCK(i64) #1

declare dso_local i64 @DYN_BUCKET_VERSION(i64, i32) #1

declare dso_local i64 @dyn_lookup_ipv4_state_locked(%struct.ipfw_flow_id*, i8*, i32, i64, i32) #1

declare dso_local i32 @DYN_BUCKET_UNLOCK(i64) #1

declare dso_local i8* @dyn_alloc_dyndata(i8*, i64, i32, %struct.ipfw_flow_id*, i8*, i32, i64, i32) #1

declare dso_local %struct.dyn_ipv4_state* @dyn_alloc_ipv4_state(%struct.ipfw_flow_id*, i32, i32) #1

declare dso_local i32 @uma_zfree(i32, i8*) #1

declare dso_local i32 @CK_SLIST_INSERT_HEAD(i32*, %struct.dyn_ipv4_state*, i32) #1

declare dso_local i32 @DYN_COUNT_INC(i32) #1

declare dso_local i32 @DYN_BUCKET_VERSION_BUMP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
