; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_update_after_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_cwnd_update_after_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_nets = type { i32, i32, i32, i32 }

@sctp = common dso_local global i32 0, align 4
@cwnd = common dso_local global i32 0, align 4
@bl = common dso_local global i32 0, align 4
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_CWND_MONITOR_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_LOG_FROM_BRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*, i32)* @sctp_cwnd_update_after_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cwnd_update_after_output(%struct.sctp_tcb* %0, %struct.sctp_nets* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sctp_nets*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %9 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %12 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %15 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %20 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %23 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %83

27:                                               ; preds = %24
  %28 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %29 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %33 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = add nsw i32 %30, %35
  %37 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %38 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %40 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %39, i32 0, i32 2
  %41 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %42 = call i32 @sctp_enforce_cwnd_limit(%struct.TYPE_4__* %40, %struct.sctp_nets* %41)
  %43 = load i32, i32* @sctp, align 4
  %44 = load i32, i32* @cwnd, align 4
  %45 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %46 = load i32, i32* @bl, align 4
  %47 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %48 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %52 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 16
  %57 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %58 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %56, %59
  %61 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %64 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SDT_PROBE5(i32 %43, i32 %44, %struct.sctp_nets* %45, i32 %46, i32 %50, i32 %60, %struct.sctp_nets* %61, i32 %62, i32 %65)
  %67 = load i32, i32* @sctp_logging_level, align 4
  %68 = call i32 @SCTP_BASE_SYSCTL(i32 %67)
  %69 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %27
  %73 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %74 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %75 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %76 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* @SCTP_CWND_LOG_FROM_BRST, align 4
  %81 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %73, %struct.sctp_nets* %74, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %72, %27
  br label %83

83:                                               ; preds = %82, %24
  ret void
}

declare dso_local i32 @sctp_enforce_cwnd_limit(%struct.TYPE_4__*, %struct.sctp_nets*) #1

declare dso_local i32 @SDT_PROBE5(i32, i32, %struct.sctp_nets*, i32, i32, i32, %struct.sctp_nets*, i32, i32) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_log_cwnd(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
