; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_sanitize_rates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_sanitize_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @ieee80211_sanitize_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_sanitize_rates(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %9 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %10 = icmp ne %struct.ieee80211_bpf_params* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %73

12:                                               ; preds = %3
  %13 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %19 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ieee80211_validate_rate(%struct.ieee80211_node* %18, i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %73

27:                                               ; preds = %17
  br label %30

28:                                               ; preds = %12
  %29 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %37 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ieee80211_validate_rate(%struct.ieee80211_node* %36, i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %73

44:                                               ; preds = %35, %30
  %45 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %51 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ieee80211_validate_rate(%struct.ieee80211_node* %50, i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %73

58:                                               ; preds = %49, %44
  %59 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %65 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ieee80211_validate_rate(%struct.ieee80211_node* %64, i64 %67)
  store i32 %68, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %63, %58
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %70, %56, %42, %25, %11
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @ieee80211_validate_rate(%struct.ieee80211_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
