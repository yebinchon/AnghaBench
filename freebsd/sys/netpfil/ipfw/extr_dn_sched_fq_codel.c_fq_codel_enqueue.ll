; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_fq_codel_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_fq_codel_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { i32 }
%struct.dn_queue = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.mbuf = type { i32 }
%struct.fq_codel_si = type { %struct.TYPE_12__*, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.fq_codel_schk = type { %struct.dn_sch_fq_codel_parms }
%struct.dn_sch_fq_codel_parms = type { i32, i64, i32 }

@flowchain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"over limit\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"maxidx = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*, %struct.dn_queue*, %struct.mbuf*)* @fq_codel_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_codel_enqueue(%struct.dn_sch_inst* %0, %struct.dn_queue* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_sch_inst*, align 8
  %6 = alloca %struct.dn_queue*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.fq_codel_si*, align 8
  %9 = alloca %struct.fq_codel_schk*, align 8
  %10 = alloca %struct.dn_sch_fq_codel_parms*, align 8
  %11 = alloca %struct.dn_queue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %5, align 8
  store %struct.dn_queue* %1, %struct.dn_queue** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %16 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %17 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %16, i64 1
  %18 = bitcast %struct.dn_sch_inst* %17 to %struct.dn_queue*
  store %struct.dn_queue* %18, %struct.dn_queue** %11, align 8
  %19 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %20 = bitcast %struct.dn_sch_inst* %19 to %struct.fq_codel_si*
  store %struct.fq_codel_si* %20, %struct.fq_codel_si** %8, align 8
  %21 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %22 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = inttoptr i64 %25 to %struct.fq_codel_schk*
  store %struct.fq_codel_schk* %26, %struct.fq_codel_schk** %9, align 8
  %27 = load %struct.fq_codel_schk*, %struct.fq_codel_schk** %9, align 8
  %28 = getelementptr inbounds %struct.fq_codel_schk, %struct.fq_codel_schk* %27, i32 0, i32 0
  store %struct.dn_sch_fq_codel_parms* %28, %struct.dn_sch_fq_codel_parms** %10, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %30 = load %struct.dn_sch_fq_codel_parms*, %struct.dn_sch_fq_codel_parms** %10, align 8
  %31 = getelementptr inbounds %struct.dn_sch_fq_codel_parms, %struct.dn_sch_fq_codel_parms* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %34 = call i32 @fq_codel_classify_flow(%struct.mbuf* %29, i32 %32, %struct.fq_codel_si* %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %36 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 %39
  %41 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %42 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %43 = call i32 @codel_enqueue(%struct.TYPE_12__* %40, %struct.mbuf* %41, %struct.fq_codel_si* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %202

47:                                               ; preds = %3
  %48 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %49 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %101, label %57

57:                                               ; preds = %47
  %58 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %59 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %58, i32 0, i32 1
  %60 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %61 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 %64
  %66 = load i32, i32* @flowchain, align 4
  %67 = call i32 @STAILQ_INSERT_TAIL(i32* %59, %struct.TYPE_12__* %65, i32 %66)
  %68 = load %struct.dn_sch_fq_codel_parms*, %struct.dn_sch_fq_codel_parms** %10, align 8
  %69 = getelementptr inbounds %struct.dn_sch_fq_codel_parms, %struct.dn_sch_fq_codel_parms* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %72 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  store i32 %70, i32* %77, align 8
  %78 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %79 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %87 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %95 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %57, %47
  %102 = load %struct.dn_queue*, %struct.dn_queue** %11, align 8
  %103 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.fq_codel_schk*, %struct.fq_codel_schk** %9, align 8
  %107 = getelementptr inbounds %struct.fq_codel_schk, %struct.fq_codel_schk* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.dn_sch_fq_codel_parms, %struct.dn_sch_fq_codel_parms* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %105, %109
  br i1 %110, label %111, label %200

111:                                              ; preds = %101
  %112 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %113

113:                                              ; preds = %132, %111
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.fq_codel_schk*, %struct.fq_codel_schk** %9, align 8
  %116 = getelementptr inbounds %struct.fq_codel_schk, %struct.fq_codel_schk* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.dn_sch_fq_codel_parms, %struct.dn_sch_fq_codel_parms* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %113
  %121 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %122 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %121, i32 0, i32 0
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %135

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  br label %113

135:                                              ; preds = %130, %113
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.fq_codel_schk*, %struct.fq_codel_schk** %9, align 8
  %138 = getelementptr inbounds %struct.fq_codel_schk, %struct.fq_codel_schk* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.dn_sch_fq_codel_parms, %struct.dn_sch_fq_codel_parms* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %136, %140
  br i1 %141, label %142, label %199

142:                                              ; preds = %135
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %185, %142
  %146 = load i32, i32* %14, align 4
  %147 = load %struct.fq_codel_schk*, %struct.fq_codel_schk** %9, align 8
  %148 = getelementptr inbounds %struct.fq_codel_schk, %struct.fq_codel_schk* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.dn_sch_fq_codel_parms, %struct.dn_sch_fq_codel_parms* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %146, %150
  br i1 %151, label %152, label %188

152:                                              ; preds = %145
  %153 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %154 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %153, i32 0, i32 0
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %184

162:                                              ; preds = %152
  %163 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %164 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %163, i32 0, i32 0
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %173 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %172, i32 0, i32 0
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %171, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %162
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %182, %162, %152
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %145

188:                                              ; preds = %145
  %189 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %190 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %189, i32 0, i32 0
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i64 %193
  %195 = load %struct.fq_codel_si*, %struct.fq_codel_si** %8, align 8
  %196 = call i32 @codel_drop_head(%struct.TYPE_12__* %194, %struct.fq_codel_si* %195)
  %197 = load i32, i32* %15, align 4
  %198 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %197)
  store i32 1, i32* %13, align 4
  br label %199

199:                                              ; preds = %188, %135
  br label %200

200:                                              ; preds = %199, %101
  %201 = load i32, i32* %13, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %200, %46
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @fq_codel_classify_flow(%struct.mbuf*, i32, %struct.fq_codel_si*) #1

declare dso_local i32 @codel_enqueue(%struct.TYPE_12__*, %struct.mbuf*, %struct.fq_codel_si*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @D(i8*, ...) #1

declare dso_local i32 @codel_drop_head(%struct.TYPE_12__*, %struct.fq_codel_si*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
