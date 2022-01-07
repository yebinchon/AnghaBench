; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { i32 }
%struct.dn_queue = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.mbuf = type { i32 }
%struct.fq_pie_si = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.fq_pie_flow* }
%struct.fq_pie_flow = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.fq_pie_schk = type { %struct.dn_sch_fq_pie_parms }
%struct.dn_sch_fq_pie_parms = type { i32, i64, i32 }

@flowchain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*, %struct.dn_queue*, %struct.mbuf*)* @fq_pie_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_pie_enqueue(%struct.dn_sch_inst* %0, %struct.dn_queue* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_sch_inst*, align 8
  %6 = alloca %struct.dn_queue*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.fq_pie_si*, align 8
  %9 = alloca %struct.fq_pie_schk*, align 8
  %10 = alloca %struct.dn_sch_fq_pie_parms*, align 8
  %11 = alloca %struct.dn_queue*, align 8
  %12 = alloca %struct.fq_pie_flow*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %5, align 8
  store %struct.dn_queue* %1, %struct.dn_queue** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %17 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %18 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %17, i64 1
  %19 = bitcast %struct.dn_sch_inst* %18 to %struct.dn_queue*
  store %struct.dn_queue* %19, %struct.dn_queue** %11, align 8
  %20 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %21 = bitcast %struct.dn_sch_inst* %20 to %struct.fq_pie_si*
  store %struct.fq_pie_si* %21, %struct.fq_pie_si** %8, align 8
  %22 = load %struct.fq_pie_si*, %struct.fq_pie_si** %8, align 8
  %23 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %25, align 8
  store %struct.fq_pie_flow* %26, %struct.fq_pie_flow** %12, align 8
  %27 = load %struct.fq_pie_si*, %struct.fq_pie_si** %8, align 8
  %28 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = inttoptr i64 %31 to %struct.fq_pie_schk*
  store %struct.fq_pie_schk* %32, %struct.fq_pie_schk** %9, align 8
  %33 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %9, align 8
  %34 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %33, i32 0, i32 0
  store %struct.dn_sch_fq_pie_parms* %34, %struct.dn_sch_fq_pie_parms** %10, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %36 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %10, align 8
  %37 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fq_pie_si*, %struct.fq_pie_si** %8, align 8
  %40 = call i32 @fq_pie_classify_flow(%struct.mbuf* %35, i32 %38, %struct.fq_pie_si* %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %41, i64 %43
  %45 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %46 = load %struct.fq_pie_si*, %struct.fq_pie_si** %8, align 8
  %47 = call i32 @pie_enqueue(%struct.fq_pie_flow* %44, %struct.mbuf* %45, %struct.fq_pie_si* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %174

51:                                               ; preds = %3
  %52 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %52, i64 %54
  %56 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %51
  %60 = load %struct.fq_pie_si*, %struct.fq_pie_si** %8, align 8
  %61 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %60, i32 0, i32 0
  %62 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %62, i64 %64
  %66 = load i32, i32* @flowchain, align 4
  %67 = call i32 @STAILQ_INSERT_TAIL(i32* %61, %struct.fq_pie_flow* %65, i32 %66)
  %68 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %10, align 8
  %69 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %71, i64 %73
  %75 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %74, i32 0, i32 2
  store i32 %70, i32* %75, align 8
  %76 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %76, i64 %78
  %80 = call i32 @fq_activate_pie(%struct.fq_pie_flow* %79)
  %81 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %81, i64 %83
  %85 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %59, %51
  %87 = load %struct.dn_queue*, %struct.dn_queue** %11, align 8
  %88 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %9, align 8
  %92 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %90, %94
  br i1 %95, label %96, label %172

96:                                               ; preds = %86
  store i32 0, i32* %16, align 4
  br label %97

97:                                               ; preds = %114, %96
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %9, align 8
  %100 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %97
  %105 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %12, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %105, i64 %107
  %109 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %117

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %97

117:                                              ; preds = %112, %97
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %9, align 8
  %120 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %171

124:                                              ; preds = %117
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %161, %124
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %9, align 8
  %130 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %134, label %164

134:                                              ; preds = %127
  %135 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %12, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %135, i64 %137
  %139 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %160

142:                                              ; preds = %134
  %143 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %12, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %143, i64 %145
  %147 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %12, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %150, i64 %152
  %154 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %149, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %142
  %159 = load i32, i32* %15, align 4
  store i32 %159, i32* %16, align 4
  br label %160

160:                                              ; preds = %158, %142, %134
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %15, align 4
  br label %127

164:                                              ; preds = %127
  %165 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %12, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %165, i64 %167
  %169 = load %struct.fq_pie_si*, %struct.fq_pie_si** %8, align 8
  %170 = call i32 @pie_drop_head(%struct.fq_pie_flow* %168, %struct.fq_pie_si* %169)
  store i32 1, i32* %14, align 4
  br label %171

171:                                              ; preds = %164, %117
  br label %172

172:                                              ; preds = %171, %86
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %172, %50
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @fq_pie_classify_flow(%struct.mbuf*, i32, %struct.fq_pie_si*) #1

declare dso_local i32 @pie_enqueue(%struct.fq_pie_flow*, %struct.mbuf*, %struct.fq_pie_si*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fq_pie_flow*, i32) #1

declare dso_local i32 @fq_activate_pie(%struct.fq_pie_flow*) #1

declare dso_local i32 @pie_drop_head(%struct.fq_pie_flow*, %struct.fq_pie_si*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
