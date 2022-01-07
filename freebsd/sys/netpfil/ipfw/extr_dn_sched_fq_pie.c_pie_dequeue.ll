; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_pie_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_pie_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fq_pie_flow = type { %struct.TYPE_4__, %struct.pie_status }
%struct.TYPE_4__ = type { i32 }
%struct.pie_status = type { i32, i32, i64, i64, i64, %struct.dn_aqm_pie_parms* }
%struct.dn_aqm_pie_parms = type { i32 }
%struct.fq_pie_si = type { i32 }

@PIE_DEPRATEEST_ENABLED = common dso_local global i32 0, align 4
@PIE_ACTIVE = common dso_local global i32 0, align 4
@AQM_UNOW = common dso_local global i64 0, align 8
@PIE_INMEASUREMENT = common dso_local global i32 0, align 4
@PIE_DQ_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.fq_pie_flow*, %struct.fq_pie_si*)* @pie_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @pie_dequeue(%struct.fq_pie_flow* %0, %struct.fq_pie_si* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.fq_pie_flow*, align 8
  %5 = alloca %struct.fq_pie_si*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.dn_aqm_pie_parms*, align 8
  %8 = alloca %struct.pie_status*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.fq_pie_flow* %0, %struct.fq_pie_flow** %4, align 8
  store %struct.fq_pie_si* %1, %struct.fq_pie_si** %5, align 8
  %13 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %4, align 8
  %14 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %13, i32 0, i32 1
  store %struct.pie_status* %14, %struct.pie_status** %8, align 8
  %15 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %4, align 8
  %16 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %16, i32 0, i32 5
  %18 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %17, align 8
  store %struct.dn_aqm_pie_parms* %18, %struct.dn_aqm_pie_parms** %7, align 8
  %19 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %4, align 8
  %20 = load %struct.fq_pie_si*, %struct.fq_pie_si** %5, align 8
  %21 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %7, align 8
  %22 = getelementptr inbounds %struct.dn_aqm_pie_parms, %struct.dn_aqm_pie_parms* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PIE_DEPRATEEST_ENABLED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call %struct.mbuf* @fq_pie_extract_head(%struct.fq_pie_flow* %19, i64* %10, %struct.fq_pie_si* %20, i32 %28)
  store %struct.mbuf* %29, %struct.mbuf** %6, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = icmp ne %struct.mbuf* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %34 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PIE_ACTIVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32, %2
  %40 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %40, %struct.mbuf** %3, align 8
  br label %143

41:                                               ; preds = %32
  %42 = load i64, i64* @AQM_UNOW, align 8
  store i64 %42, i64* %9, align 8
  %43 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %7, align 8
  %44 = getelementptr inbounds %struct.dn_aqm_pie_parms, %struct.dn_aqm_pie_parms* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PIE_DEPRATEEST_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %135

49:                                               ; preds = %41
  %50 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %51 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PIE_INMEASUREMENT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %109

56:                                               ; preds = %49
  %57 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %62 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %66 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PIE_DQ_THRESHOLD, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %108

70:                                               ; preds = %56
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %73 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  store i64 %75, i64* %11, align 8
  %76 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %77 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %83 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  br label %107

84:                                               ; preds = %70
  %85 = load i32, i32* @PIE_DQ_THRESHOLD, align 4
  %86 = ashr i32 %85, 8
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = mul nsw i64 %88, %89
  %91 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %92 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = sub nsw i64 256, %94
  %96 = mul nsw i64 %93, %95
  %97 = add nsw i64 %90, %96
  %98 = ashr i64 %97, 8
  %99 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %100 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %99, i32 0, i32 3
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @PIE_INMEASUREMENT, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %104 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %84, %80
  br label %108

108:                                              ; preds = %107, %56
  br label %109

109:                                              ; preds = %108, %49
  %110 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %111 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PIE_INMEASUREMENT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %134, label %116

116:                                              ; preds = %109
  %117 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %4, align 8
  %118 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @PIE_DQ_THRESHOLD, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %116
  %124 = load i32, i32* @PIE_INMEASUREMENT, align 4
  %125 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %126 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %131 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  %132 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %133 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %132, i32 0, i32 1
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %123, %116, %109
  br label %141

135:                                              ; preds = %41
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %10, align 8
  %138 = sub nsw i64 %136, %137
  %139 = load %struct.pie_status*, %struct.pie_status** %8, align 8
  %140 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %139, i32 0, i32 4
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %135, %134
  %142 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %142, %struct.mbuf** %3, align 8
  br label %143

143:                                              ; preds = %141, %39
  %144 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %144
}

declare dso_local %struct.mbuf* @fq_pie_extract_head(%struct.fq_pie_flow*, i64*, %struct.fq_pie_si*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
