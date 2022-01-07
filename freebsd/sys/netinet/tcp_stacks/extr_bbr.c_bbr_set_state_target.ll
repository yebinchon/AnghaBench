; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_set_state_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_set_state_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i64, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@BBR_STATE_PROBE_RTT = common dso_local global i64 0, align 8
@bbr_rtt_probe_cwndtarg = common dso_local global i32 0, align 4
@BBR_STATE_PROBE_BW = common dso_local global i64 0, align 8
@BBR_UNIT = common dso_local global i64 0, align 8
@bbr_target_is_bbunit = common dso_local global i64 0, align 8
@bbr_hptsi_gain = common dso_local global i64* null, align 8
@BBR_SUB_DRAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32)* @bbr_set_state_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_set_state_target(%struct.tcp_bbr* %0, i32 %1) #0 {
  %3 = alloca %struct.tcp_bbr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %8 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BBR_STATE_PROBE_RTT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %14 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %20 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18, %12
  %24 = load i32, i32* @bbr_rtt_probe_cwndtarg, align 4
  %25 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %26 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = mul nsw i32 %24, %33
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %94

35:                                               ; preds = %18, %2
  %36 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %37 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BBR_STATE_PROBE_BW, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %43 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BBR_UNIT, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %50 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %51 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @bbr_get_a_state_target(%struct.tcp_bbr* %49, i64 %53)
  store i32 %54, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %93

55:                                               ; preds = %41, %35
  %56 = load i64, i64* @bbr_target_is_bbunit, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %60 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58, %55
  %64 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %65 = load i64, i64* @BBR_UNIT, align 8
  %66 = call i32 @bbr_get_a_state_target(%struct.tcp_bbr* %64, i64 %65)
  store i32 %66, i32* %5, align 4
  store i32 3, i32* %6, align 4
  br label %92

67:                                               ; preds = %58
  %68 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %69 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** @bbr_hptsi_gain, align 8
  %73 = load i64, i64* @BBR_SUB_DRAIN, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %71, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %79 = load i64*, i64** @bbr_hptsi_gain, align 8
  %80 = load i64, i64* @BBR_SUB_DRAIN, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @bbr_get_a_state_target(%struct.tcp_bbr* %78, i64 %82)
  store i32 %83, i32* %5, align 4
  store i32 4, i32* %6, align 4
  br label %91

84:                                               ; preds = %67
  %85 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %86 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %87 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @bbr_get_a_state_target(%struct.tcp_bbr* %85, i64 %89)
  store i32 %90, i32* %5, align 4
  store i32 5, i32* %6, align 4
  br label %91

91:                                               ; preds = %84, %77
  br label %92

92:                                               ; preds = %91, %63
  br label %93

93:                                               ; preds = %92, %48
  br label %94

94:                                               ; preds = %93, %23
  %95 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @bbr_log_set_of_state_target(%struct.tcp_bbr* %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %102 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  ret void
}

declare dso_local i32 @bbr_get_a_state_target(%struct.tcp_bbr*, i64) #1

declare dso_local i32 @bbr_log_set_of_state_target(%struct.tcp_bbr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
