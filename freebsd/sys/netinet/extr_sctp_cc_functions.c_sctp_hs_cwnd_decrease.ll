; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_hs_cwnd_decrease.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_hs_cwnd_decrease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.sctp_tcb = type { i32 }
%struct.sctp_nets = type { i32, i32, i32, i64 }

@sctp_cwnd_adjust = common dso_local global %struct.TYPE_2__* null, align 8
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_CWND_MONITOR_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_LOG_FROM_FR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*)* @sctp_hs_cwnd_decrease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_hs_cwnd_decrease(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %9 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 10
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sctp_cwnd_adjust, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %24 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 2
  %27 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %30 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %33 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 2
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %39 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 2, %40
  %42 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %43 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %22
  %45 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %46 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %49 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %118

50:                                               ; preds = %2
  %51 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %52 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %55 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 100
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sctp_cwnd_adjust, align 8
  %59 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %60 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = mul nsw i32 %57, %65
  %67 = sub nsw i32 %53, %66
  %68 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %69 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %71 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %74 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %76 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %80 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = ashr i32 %81, 10
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sctp_cwnd_adjust, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %50
  %90 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %91 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  br label %117

92:                                               ; preds = %50
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %109, %92
  %95 = load i32, i32* %6, align 4
  %96 = icmp sge i32 %95, 1
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sctp_cwnd_adjust, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %98, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %112

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %6, align 4
  br label %94

112:                                              ; preds = %107, %94
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %116 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %112, %89
  br label %118

118:                                              ; preds = %117, %44
  %119 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %120 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %119, i32 0, i32 0
  %121 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %122 = call i32 @sctp_enforce_cwnd_limit(i32* %120, %struct.sctp_nets* %121)
  %123 = load i32, i32* @sctp_logging_level, align 4
  %124 = call i32 @SCTP_BASE_SYSCTL(i32 %123)
  %125 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %118
  %129 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %130 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %131 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %132 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* @SCTP_CWND_LOG_FROM_FR, align 4
  %137 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %129, %struct.sctp_nets* %130, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %128, %118
  ret void
}

declare dso_local i32 @sctp_enforce_cwnd_limit(i32*, %struct.sctp_nets*) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_cwnd(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
