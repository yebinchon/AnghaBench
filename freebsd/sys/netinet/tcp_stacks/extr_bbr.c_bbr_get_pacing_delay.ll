; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_pacing_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_pacing_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@USECS_IN_SECOND = common dso_local global i64 0, align 8
@BBR_UNIT = common dso_local global i64 0, align 8
@BBR_SRTT = common dso_local global i32 0, align 4
@bbr_hptsi_max_mul = common dso_local global i32 0, align 4
@bbr_hptsi_max_div = common dso_local global i32 0, align 4
@bbr_hpts_min_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_bbr*, i64, i32, i32, i32)* @bbr_get_pacing_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_get_pacing_delay(%struct.tcp_bbr* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_bbr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %140

25:                                               ; preds = %5
  %26 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %27 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %32 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %20, align 4
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %20, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %19, align 4
  %41 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %42 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %25
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %47 = call i32 @bbr_get_header_oh(%struct.tcp_bbr* %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %18, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %45, %25
  %54 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @bbr_gain_adjust(%struct.tcp_bbr* %54, i64 %55)
  store i64 %56, i64* %8, align 8
  %57 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %58 = call i32 @bbr_get_bw(%struct.tcp_bbr* %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %60 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %53
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %66 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 1000, %68
  %70 = mul nsw i32 %64, %69
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %21, align 4
  %72 = sdiv i32 %71, 1000
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %21, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %21, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %75, %63
  br label %78

78:                                               ; preds = %77, %53
  %79 = load i32, i32* %9, align 4
  %80 = load i64, i64* @USECS_IN_SECOND, align 8
  %81 = trunc i64 %80 to i32
  %82 = mul nsw i32 %79, %81
  %83 = load i64, i64* @BBR_UNIT, align 8
  %84 = trunc i64 %83 to i32
  %85 = mul nsw i32 %82, %84
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i64, i64* %8, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* %12, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sdiv i32 %86, %90
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %94, %78
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %15, align 4
  %97 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %98 = load i32, i32* @BBR_SRTT, align 4
  %99 = call i32 @bbr_get_rtt(%struct.tcp_bbr* %97, i32 %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* @bbr_hptsi_max_mul, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %95
  %103 = load i32, i32* @bbr_hptsi_max_div, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %102
  %106 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %107 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %105
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @bbr_hptsi_max_mul, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* @bbr_hptsi_max_div, align 4
  %116 = sdiv i32 %114, %115
  %117 = icmp sgt i32 %111, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* @bbr_hptsi_max_mul, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* @bbr_hptsi_max_div, align 4
  %123 = sdiv i32 %121, %122
  store i32 %123, i32* %15, align 4
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* @bbr_hpts_min_time, align 4
  %125 = call i32 @BBR_STAT_INC(i32 %124)
  br label %126

126:                                              ; preds = %118, %110, %105, %102, %95
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %126
  %130 = load %struct.tcp_bbr*, %struct.tcp_bbr** %7, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @bbr_log_pacing_delay_calc(%struct.tcp_bbr* %130, i64 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 1)
  br label %138

138:                                              ; preds = %129, %126
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %138, %24
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @bbr_get_header_oh(%struct.tcp_bbr*) #1

declare dso_local i64 @bbr_gain_adjust(%struct.tcp_bbr*, i64) #1

declare dso_local i32 @bbr_get_bw(%struct.tcp_bbr*) #1

declare dso_local i32 @bbr_get_rtt(%struct.tcp_bbr*, i32) #1

declare dso_local i32 @BBR_STAT_INC(i32) #1

declare dso_local i32 @bbr_log_pacing_delay_calc(%struct.tcp_bbr*, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
