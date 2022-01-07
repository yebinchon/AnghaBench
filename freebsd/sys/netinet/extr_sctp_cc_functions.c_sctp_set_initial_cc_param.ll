; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_set_initial_cc_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_set_initial_cc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.TYPE_2__*, %struct.sctp_association }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_association = type { i64, i64, i32, i32, i32 }
%struct.sctp_nets = type { i32, i32, i32 }

@sctp_initial_cwnd = common dso_local global i32 0, align 4
@SCTP_INITIAL_CWND = common dso_local global i32 0, align 4
@SCTP_CMT_RPV1 = common dso_local global i64 0, align 8
@SCTP_CMT_RPV2 = common dso_local global i64 0, align 8
@sctp = common dso_local global i32 0, align 4
@cwnd = common dso_local global i32 0, align 4
@init = common dso_local global i32 0, align 4
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_CWND_MONITOR_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_LOGGING_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_INITIALIZATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*)* @sctp_set_initial_cc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_set_initial_cc_param(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %7 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %7, i32 0, i32 2
  store %struct.sctp_association* %8, %struct.sctp_association** %5, align 8
  %9 = load i32, i32* @sctp_initial_cwnd, align 4
  %10 = call i32 @SCTP_BASE_SYSCTL(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %15 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 4
  %18 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %19 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 2, %20
  %22 = load i32, i32* @SCTP_INITIAL_CWND, align 4
  %23 = call i32 @max(i32 %21, i32 %22)
  %24 = call i32 @min(i32 %17, i32 %23)
  %25 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %26 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %56

27:                                               ; preds = %2
  %28 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %41 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %32, %27
  %45 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %46 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, 4
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %49, %51
  %53 = trunc i64 %52 to i32
  %54 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %55 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %44, %13
  %57 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %58 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SCTP_CMT_RPV1, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %65 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SCTP_CMT_RPV2, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %63, %56
  %71 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %72 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %75 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %79 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %83 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 %85, 4
  %87 = icmp ult i64 %81, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %70
  %89 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %90 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %96 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %88, %70
  br label %98

98:                                               ; preds = %97, %63
  %99 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %100 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %101 = call i32 @sctp_enforce_cwnd_limit(%struct.sctp_association* %99, %struct.sctp_nets* %100)
  %102 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %103 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %106 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @sctp, align 4
  %108 = load i32, i32* @cwnd, align 4
  %109 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %110 = load i32, i32* @init, align 4
  %111 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %112 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %116 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 16
  %121 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %122 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %120, %123
  %125 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %126 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %127 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @SDT_PROBE5(i32 %107, i32 %108, %struct.sctp_nets* %109, i32 %110, i32 %114, i32 %124, %struct.sctp_nets* %125, i32 0, i32 %128)
  %130 = load i32, i32* @sctp_logging_level, align 4
  %131 = call i32 @SCTP_BASE_SYSCTL(i32 %130)
  %132 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %133 = load i32, i32* @SCTP_CWND_LOGGING_ENABLE, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %98
  %138 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %139 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %140 = load i32, i32* @SCTP_CWND_INITIALIZATION, align 4
  %141 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %138, %struct.sctp_nets* %139, i32 0, i32 %140)
  br label %142

142:                                              ; preds = %137, %98
  ret void
}

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sctp_enforce_cwnd_limit(%struct.sctp_association*, %struct.sctp_nets*) #1

declare dso_local i32 @SDT_PROBE5(i32, i32, %struct.sctp_nets*, i32, i32, i32, %struct.sctp_nets*, i32, i32) #1

declare dso_local i32 @sctp_log_cwnd(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
