; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_lt_bw_samp_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_lt_bw_samp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@bbr_lt_bw_diff = common dso_local global i32 0, align 4
@bbr_lt_bw_ratio = common dso_local global i32 0, align 4
@BBR_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i64, i64)* @bbr_lt_bw_samp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_lt_bw_samp_done(%struct.tcp_bbr* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %12 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %89

16:                                               ; preds = %4
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %18 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %9, align 4
  br label %37

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %33 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %31, %35
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %30, %23
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @bbr_lt_bw_diff, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %44 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @bbr_lt_bw_ratio, align 4
  %48 = sdiv i32 %46, %47
  %49 = icmp sle i32 %42, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %41, %37
  %51 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %52 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %10, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %58 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %56, %60
  %62 = sdiv i32 %61, 2
  %63 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %64 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %67 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* @BBR_UNIT, align 4
  %69 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %70 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %73 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %77 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @bbr_log_type_ltbw(%struct.tcp_bbr* %79, i64 %80, i32 4, i64 %82, i64 %83, i64 %85, i64 %86)
  br label %103

88:                                               ; preds = %41
  br label %89

89:                                               ; preds = %88, %4
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %92 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @bbr_reset_lt_bw_interval(%struct.tcp_bbr* %94, i64 %95)
  %97 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @bbr_log_type_ltbw(%struct.tcp_bbr* %97, i64 %98, i32 5, i64 0, i64 %100, i64 0, i64 %101)
  br label %103

103:                                              ; preds = %89, %50
  ret void
}

declare dso_local i32 @bbr_log_type_ltbw(%struct.tcp_bbr*, i64, i32, i64, i64, i64, i64) #1

declare dso_local i32 @bbr_reset_lt_bw_interval(%struct.tcp_bbr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
