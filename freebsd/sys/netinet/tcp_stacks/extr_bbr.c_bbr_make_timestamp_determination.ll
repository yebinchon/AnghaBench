; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_make_timestamp_determination.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_make_timestamp_determination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@bbr_min_usec_delta = common dso_local global i32 0, align 4
@bbr_min_peer_delta = common dso_local global i32 0, align 4
@bbr_delta_percent = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*)* @bbr_make_timestamp_determination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_make_timestamp_determination(%struct.tcp_bbr* %0) #0 {
  %2 = alloca %struct.tcp_bbr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %2, align 8
  %6 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %7 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %11 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %9, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @bbr_min_usec_delta, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %170

19:                                               ; preds = %1
  %20 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %21 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %23, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @bbr_min_peer_delta, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %170

33:                                               ; preds = %19
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = mul nsw i32 %40, 1000
  %42 = load i64, i64* @bbr_delta_percent, align 8
  %43 = trunc i64 %42 to i32
  %44 = sdiv i32 %41, %43
  %45 = add nsw i32 %39, %44
  %46 = icmp slt i32 %38, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %49 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %51 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i32 1, i32* %52, align 4
  br label %58

53:                                               ; preds = %37
  %54 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %55 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %57 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %47
  br label %170

59:                                               ; preds = %33
  %60 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %61 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* %4, align 4
  %63 = mul nsw i32 %62, 1000
  %64 = load i64, i64* @bbr_delta_percent, align 8
  %65 = trunc i64 %64 to i32
  %66 = sdiv i32 %63, %65
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %3, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %59
  %73 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %74 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  store i32 1, i32* %75, align 4
  %76 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @bbr_log_tstmp_validation(%struct.tcp_bbr* %76, i32 %77, i32 %78)
  br label %170

80:                                               ; preds = %59
  %81 = load i32, i32* %4, align 4
  %82 = mul nsw i32 %81, 1000
  %83 = mul nsw i32 %82, 10
  %84 = load i64, i64* @bbr_delta_percent, align 8
  %85 = trunc i64 %84 to i32
  %86 = sdiv i32 %83, %85
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %4, align 4
  %88 = mul nsw i32 %87, 10
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %3, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %80
  %94 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %95 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  store i32 10, i32* %96, align 4
  %97 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @bbr_log_tstmp_validation(%struct.tcp_bbr* %97, i32 %98, i32 %99)
  br label %170

101:                                              ; preds = %80
  %102 = load i32, i32* %4, align 4
  %103 = mul nsw i32 %102, 1000
  %104 = mul nsw i32 %103, 100
  %105 = load i64, i64* @bbr_delta_percent, align 8
  %106 = trunc i64 %105 to i32
  %107 = sdiv i32 %104, %106
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %4, align 4
  %109 = mul nsw i32 %108, 100
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %3, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %101
  %115 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %116 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 4
  store i32 100, i32* %117, align 4
  %118 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @bbr_log_tstmp_validation(%struct.tcp_bbr* %118, i32 %119, i32 %120)
  br label %170

122:                                              ; preds = %101
  %123 = load i32, i32* %4, align 4
  %124 = mul nsw i32 %123, 1000
  %125 = mul nsw i32 %124, 1000
  %126 = load i64, i64* @bbr_delta_percent, align 8
  %127 = trunc i64 %126 to i32
  %128 = sdiv i32 %125, %127
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %4, align 4
  %130 = mul nsw i32 %129, 1000
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %3, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %122
  %136 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %137 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 4
  store i32 1000, i32* %138, align 4
  %139 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @bbr_log_tstmp_validation(%struct.tcp_bbr* %139, i32 %140, i32 %141)
  br label %170

143:                                              ; preds = %122
  %144 = load i32, i32* %4, align 4
  %145 = mul nsw i32 %144, 1000
  %146 = mul nsw i32 %145, 10000
  %147 = load i64, i64* @bbr_delta_percent, align 8
  %148 = trunc i64 %147 to i32
  %149 = sdiv i32 %146, %148
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %4, align 4
  %151 = mul nsw i32 %150, 10000
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %3, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %143
  %157 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %158 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 4
  store i32 10000, i32* %159, align 4
  br label %170

160:                                              ; preds = %143
  %161 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %162 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  %163 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %164 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 4
  store i32 0, i32* %165, align 4
  %166 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* %3, align 4
  %169 = call i32 @bbr_log_tstmp_validation(%struct.tcp_bbr* %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %160, %156, %135, %114, %93, %72, %58, %32, %18
  ret void
}

declare dso_local i32 @bbr_log_tstmp_validation(%struct.tcp_bbr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
