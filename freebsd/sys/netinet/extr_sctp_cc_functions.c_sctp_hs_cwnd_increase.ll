; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_hs_cwnd_increase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_hs_cwnd_increase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.sctp_tcb = type { i32 }
%struct.sctp_nets = type { i32, i64, i64, i32 }

@SCTP_HS_TABLE_SIZE = common dso_local global i32 0, align 4
@sctp_cwnd_adjust = common dso_local global %struct.TYPE_2__* null, align 8
@sctp_logging_level = common dso_local global i32 0, align 4
@SCTP_CWND_MONITOR_ENABLE = common dso_local global i32 0, align 4
@SCTP_CWND_LOG_FROM_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*)* @sctp_hs_cwnd_increase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_hs_cwnd_increase(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %10 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %14 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 10
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @SCTP_HS_TABLE_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sctp_cwnd_adjust, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %2
  %26 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %27 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %30 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %35 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %38 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  br label %53

43:                                               ; preds = %25
  %44 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %45 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %48 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  br label %53

53:                                               ; preds = %43, %33
  br label %94

54:                                               ; preds = %2
  %55 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %56 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %74, %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SCTP_HS_TABLE_SIZE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sctp_cwnd_adjust, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %63, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %7, align 4
  br label %77

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %58

77:                                               ; preds = %71, %58
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %80 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sctp_cwnd_adjust, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %87, 10
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %91 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %77, %53
  %95 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %96 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %95, i32 0, i32 0
  %97 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %98 = call i32 @sctp_enforce_cwnd_limit(i32* %96, %struct.sctp_nets* %97)
  %99 = load i32, i32* @sctp_logging_level, align 4
  %100 = call i32 @SCTP_BASE_SYSCTL(i32 %99)
  %101 = load i32, i32* @SCTP_CWND_MONITOR_ENABLE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %94
  %105 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %106 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %107 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %108 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* @SCTP_CWND_LOG_FROM_SS, align 4
  %113 = call i32 @sctp_log_cwnd(%struct.sctp_tcb* %105, %struct.sctp_nets* %106, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %104, %94
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
