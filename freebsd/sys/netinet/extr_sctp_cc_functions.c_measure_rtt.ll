; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_measure_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_measure_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_nets = type { i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@SCTP_RTT_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_nets*)* @measure_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @measure_rtt(%struct.sctp_nets* %0) #0 {
  %2 = alloca %struct.sctp_nets*, align 8
  %3 = alloca i64, align 8
  store %struct.sctp_nets* %0, %struct.sctp_nets** %2, align 8
  %4 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %5 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SCTP_RTT_SHIFT, align 8
  %8 = ashr i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %10 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %18 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %16, %1
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %26 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %31 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %92

34:                                               ; preds = %29
  %35 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %36 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 65535
  br i1 %38, label %39, label %92

39:                                               ; preds = %34
  %40 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %41 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @htcp_ccount(%struct.TYPE_4__* %42)
  %44 = icmp sgt i32 %43, 3
  br i1 %44, label %45, label %92

45:                                               ; preds = %39
  %46 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %47 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %52 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %50, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %45
  %58 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %59 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %64 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %57, %45
  %68 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %69 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %67
  %76 = load i64, i64* %3, align 8
  %77 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %78 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @MSEC_TO_TICKS(i32 20)
  %83 = add nsw i64 %81, %82
  %84 = icmp sle i64 %76, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load i64, i64* %3, align 8
  %87 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %88 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i64 %86, i64* %90, align 8
  br label %91

91:                                               ; preds = %85, %75, %67
  br label %92

92:                                               ; preds = %91, %39, %34, %29
  ret void
}

declare dso_local i32 @htcp_ccount(%struct.TYPE_4__*) #1

declare dso_local i64 @MSEC_TO_TICKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
