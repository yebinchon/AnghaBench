; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_add_ipv4_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_add_ipv4_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_ipv4_state = type { %struct.dyn_parent* }
%struct.dyn_parent = type { i32 }
%struct.ipfw_flow_id = type { i32 }

@V_curr_dyn_buckets = common dso_local global i32 0, align 4
@ipv4_parent_add = common dso_local global i32 0, align 4
@O_LIMIT_PARENT = common dso_local global i32 0, align 4
@V_dyn_parent_zone = common dso_local global i32 0, align 4
@V_dyn_ipv4_parent = common dso_local global i32* null, align 8
@entry = common dso_local global i32 0, align 4
@dyn_parent_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dyn_ipv4_state* (i8*, i64, i32, %struct.ipfw_flow_id*, i64, i64, i32)* @dyn_add_ipv4_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dyn_ipv4_state* @dyn_add_ipv4_parent(i8* %0, i64 %1, i32 %2, %struct.ipfw_flow_id* %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.dyn_ipv4_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipfw_flow_id*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dyn_ipv4_state*, align 8
  %17 = alloca %struct.dyn_parent*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ipfw_flow_id* %3, %struct.ipfw_flow_id** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i64, i64* %13, align 8
  %20 = load i32, i32* @V_curr_dyn_buckets, align 4
  %21 = call i64 @DYN_BUCKET(i64 %19, i32 %20)
  store i64 %21, i64* %18, align 8
  %22 = load i64, i64* %18, align 8
  %23 = call i32 @DYN_BUCKET_LOCK(i64 %22)
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %18, align 8
  %26 = load i32, i32* @ipv4_parent_add, align 4
  %27 = call i64 @DYN_BUCKET_VERSION(i64 %25, i32 %26)
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %7
  %30 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %12, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i64, i64* %18, align 8
  %35 = call %struct.dyn_ipv4_state* @dyn_lookup_ipv4_parent_locked(%struct.ipfw_flow_id* %30, i8* %31, i64 %32, i32 %33, i64 %34)
  store %struct.dyn_ipv4_state* %35, %struct.dyn_ipv4_state** %16, align 8
  %36 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %16, align 8
  %37 = icmp ne %struct.dyn_ipv4_state* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = call i32 (...) @DYNSTATE_CRITICAL_ENTER()
  %40 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %16, align 8
  %41 = call i32 @DYNSTATE_PROTECT(%struct.dyn_ipv4_state* %40)
  %42 = load i64, i64* %18, align 8
  %43 = call i32 @DYN_BUCKET_UNLOCK(i64 %42)
  %44 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %16, align 8
  store %struct.dyn_ipv4_state* %44, %struct.dyn_ipv4_state** %8, align 8
  br label %91

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %7
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i64, i64* %13, align 8
  %51 = call %struct.dyn_parent* @dyn_alloc_parent(i8* %47, i64 %48, i32 %49, i64 %50)
  store %struct.dyn_parent* %51, %struct.dyn_parent** %17, align 8
  %52 = load %struct.dyn_parent*, %struct.dyn_parent** %17, align 8
  %53 = icmp eq %struct.dyn_parent* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i64, i64* %18, align 8
  %56 = call i32 @DYN_BUCKET_UNLOCK(i64 %55)
  store %struct.dyn_ipv4_state* null, %struct.dyn_ipv4_state** %8, align 8
  br label %91

57:                                               ; preds = %46
  %58 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %12, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @O_LIMIT_PARENT, align 4
  %61 = call %struct.dyn_ipv4_state* @dyn_alloc_ipv4_state(%struct.ipfw_flow_id* %58, i32 %59, i32 %60)
  store %struct.dyn_ipv4_state* %61, %struct.dyn_ipv4_state** %16, align 8
  %62 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %16, align 8
  %63 = icmp eq %struct.dyn_ipv4_state* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i64, i64* %18, align 8
  %66 = call i32 @DYN_BUCKET_UNLOCK(i64 %65)
  %67 = load i32, i32* @V_dyn_parent_zone, align 4
  %68 = load %struct.dyn_parent*, %struct.dyn_parent** %17, align 8
  %69 = call i32 @uma_zfree(i32 %67, %struct.dyn_parent* %68)
  store %struct.dyn_ipv4_state* null, %struct.dyn_ipv4_state** %8, align 8
  br label %91

70:                                               ; preds = %57
  %71 = load %struct.dyn_parent*, %struct.dyn_parent** %17, align 8
  %72 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %16, align 8
  %73 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %72, i32 0, i32 0
  store %struct.dyn_parent* %71, %struct.dyn_parent** %73, align 8
  %74 = load i32*, i32** @V_dyn_ipv4_parent, align 8
  %75 = load i64, i64* %18, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %16, align 8
  %78 = load i32, i32* @entry, align 4
  %79 = call i32 @CK_SLIST_INSERT_HEAD(i32* %76, %struct.dyn_ipv4_state* %77, i32 %78)
  %80 = load i32, i32* @dyn_parent_count, align 4
  %81 = call i32 @DYN_COUNT_INC(i32 %80)
  %82 = load i64, i64* %18, align 8
  %83 = load i32, i32* @ipv4_parent_add, align 4
  %84 = call i32 @DYN_BUCKET_VERSION_BUMP(i64 %82, i32 %83)
  %85 = call i32 (...) @DYNSTATE_CRITICAL_ENTER()
  %86 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %16, align 8
  %87 = call i32 @DYNSTATE_PROTECT(%struct.dyn_ipv4_state* %86)
  %88 = load i64, i64* %18, align 8
  %89 = call i32 @DYN_BUCKET_UNLOCK(i64 %88)
  %90 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %16, align 8
  store %struct.dyn_ipv4_state* %90, %struct.dyn_ipv4_state** %8, align 8
  br label %91

91:                                               ; preds = %70, %64, %54, %38
  %92 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %8, align 8
  ret %struct.dyn_ipv4_state* %92
}

declare dso_local i64 @DYN_BUCKET(i64, i32) #1

declare dso_local i32 @DYN_BUCKET_LOCK(i64) #1

declare dso_local i64 @DYN_BUCKET_VERSION(i64, i32) #1

declare dso_local %struct.dyn_ipv4_state* @dyn_lookup_ipv4_parent_locked(%struct.ipfw_flow_id*, i8*, i64, i32, i64) #1

declare dso_local i32 @DYNSTATE_CRITICAL_ENTER(...) #1

declare dso_local i32 @DYNSTATE_PROTECT(%struct.dyn_ipv4_state*) #1

declare dso_local i32 @DYN_BUCKET_UNLOCK(i64) #1

declare dso_local %struct.dyn_parent* @dyn_alloc_parent(i8*, i64, i32, i64) #1

declare dso_local %struct.dyn_ipv4_state* @dyn_alloc_ipv4_state(%struct.ipfw_flow_id*, i32, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.dyn_parent*) #1

declare dso_local i32 @CK_SLIST_INSERT_HEAD(i32*, %struct.dyn_ipv4_state*, i32) #1

declare dso_local i32 @DYN_COUNT_INC(i32) #1

declare dso_local i32 @DYN_BUCKET_VERSION_BUMP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
