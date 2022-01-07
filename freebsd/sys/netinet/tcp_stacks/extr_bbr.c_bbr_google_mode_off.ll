; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_google_mode_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_google_mode_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, i32, i32, %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@bbr_no_pacing_until = common dso_local global i64 0, align 8
@bbr_use_rack_resend_cheat = common dso_local global i64 0, align 8
@bbr_incr_timers = common dso_local global i64 0, align 8
@bbr_include_tcp_oh = common dso_local global i64 0, align 8
@bbr_include_ip_oh = common dso_local global i64 0, align 8
@bbr_include_enet_oh = common dso_local global i64 0, align 8
@bbr_rtt_probe_limit = common dso_local global i32 0, align 4
@bbr_num_pktepo_for_del_limit = common dso_local global i32 0, align 4
@bbr_filter_len_sec = common dso_local global i32 0, align 4
@USECS_IN_SECOND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*)* @bbr_google_mode_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_google_mode_off(%struct.tcp_bbr* %0) #0 {
  %2 = alloca %struct.tcp_bbr*, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %2, align 8
  %3 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %4 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %3, i32 0, i32 6
  store i64 0, i64* %4, align 8
  %5 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %6 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 7
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* @bbr_no_pacing_until, align 8
  %9 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %10 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %9, i32 0, i32 4
  store i64 %8, i64* %10, align 8
  %11 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %12 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %14 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %19 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %22 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i64, i64* @bbr_use_rack_resend_cheat, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %28 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %31 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* @bbr_incr_timers, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %37 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %43

39:                                               ; preds = %32
  %40 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %41 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i64, i64* @bbr_include_tcp_oh, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %48 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %54

50:                                               ; preds = %43
  %51 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %52 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i64, i64* @bbr_include_ip_oh, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %59 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 1, i32* %60, align 8
  br label %65

61:                                               ; preds = %54
  %62 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %63 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i64, i64* @bbr_include_enet_oh, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %70 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i32 1, i32* %71, align 4
  br label %76

72:                                               ; preds = %65
  %73 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %74 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* @bbr_rtt_probe_limit, align 4
  %78 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %79 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 6
  store i32 %77, i32* %80, align 8
  %81 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %82 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  %84 = load i32, i32* @bbr_num_pktepo_for_del_limit, align 4
  %85 = call i32 @reset_time(i32* %83, i32 %84)
  %86 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %87 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32, i32* @bbr_filter_len_sec, align 4
  %90 = load i32, i32* @USECS_IN_SECOND, align 4
  %91 = mul nsw i32 %89, %90
  %92 = call i32 @reset_time_small(i32* %88, i32 %91)
  %93 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %94 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %95 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %94, i32 0, i32 2
  %96 = call i32 @tcp_get_usecs(i32* %95)
  %97 = call i32 @tcp_bbr_tso_size_check(%struct.tcp_bbr* %93, i32 %96)
  ret void
}

declare dso_local i32 @reset_time(i32*, i32) #1

declare dso_local i32 @reset_time_small(i32*, i32) #1

declare dso_local i32 @tcp_bbr_tso_size_check(%struct.tcp_bbr*, i32) #1

declare dso_local i32 @tcp_get_usecs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
