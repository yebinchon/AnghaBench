; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@BBR_INITIAL_RTO = common dso_local global i32 0, align 4
@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@bbr_delayed_ack_time = common dso_local global i32 0, align 4
@BBR_RTT_PROP = common dso_local global i64 0, align 8
@BBR_RTT_PKTRTT = common dso_local global i64 0, align 8
@BBR_RTT_RACK = common dso_local global i64 0, align 8
@BBR_SRTT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_bbr*, i64)* @bbr_get_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_get_rtt(%struct.tcp_bbr* %0, i64 %1) #0 {
  %3 = alloca %struct.tcp_bbr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %8 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = call i32 @get_filter_value_small(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = call i32 @get_filter_value_small(i32* %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %18 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @BBR_INITIAL_RTO, align 4
  store i32 %24, i32* %5, align 4
  br label %34

25:                                               ; preds = %16
  %26 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %27 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @TICKS_2_USEC(i64 %30)
  %32 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %25, %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @bbr_delayed_ack_time, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @bbr_delayed_ack_time, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @BBR_RTT_PROP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %6, align 4
  br label %106

47:                                               ; preds = %41
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @BBR_RTT_PKTRTT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %53 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %59 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %6, align 4
  br label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %57
  br label %105

65:                                               ; preds = %47
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @BBR_RTT_RACK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %71 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %6, align 4
  %74 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %75 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %80 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %78, %69
  br label %104

88:                                               ; preds = %65
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @BBR_SRTT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %94 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @TICKS_2_USEC(i64 %97)
  %99 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %100 = ashr i32 %98, %99
  store i32 %100, i32* %6, align 4
  br label %103

101:                                              ; preds = %88
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %92
  br label %104

104:                                              ; preds = %103, %87
  br label %105

105:                                              ; preds = %104, %64
  br label %106

106:                                              ; preds = %105, %45
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @get_filter_value_small(i32*) #1

declare dso_local i32 @TICKS_2_USEC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
