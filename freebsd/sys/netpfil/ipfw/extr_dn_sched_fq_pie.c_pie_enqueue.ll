; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_pie_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_pie_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fq_pie_flow = type { i32, %struct.TYPE_4__, %struct.pie_status }
%struct.TYPE_4__ = type { i64 }
%struct.pie_status = type { i32, i64, i32, i64, i32, i32, i64, %struct.dn_aqm_pie_parms* }
%struct.dn_aqm_pie_parms = type { i32, i32, i32, i64 }
%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fq_pie_si = type { i32 }
%struct.m_tag = type { i32 }

@ENQUE = common dso_local global i32 0, align 4
@PIE_ACTIVE = common dso_local global i32 0, align 4
@DROP = common dso_local global i32 0, align 4
@PIE_ECN_ENABLED = common dso_local global i32 0, align 4
@PIE_PROB_BITS = common dso_local global i32 0, align 4
@PIE_FIX_POINT_BITS = common dso_local global i32 0, align 4
@PIE_ON_OFF_MODE_ENABLED = common dso_local global i32 0, align 4
@PIE_DEPRATEEST_ENABLED = common dso_local global i32 0, align 4
@MTAG_ABI_COMPAT = common dso_local global i32 0, align 4
@DN_AQM_MTAG_TS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@AQM_UNOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fq_pie_flow*, %struct.mbuf*, %struct.fq_pie_si*)* @pie_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pie_enqueue(%struct.fq_pie_flow* %0, %struct.mbuf* %1, %struct.fq_pie_si* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fq_pie_flow*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.fq_pie_si*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pie_status*, align 8
  %10 = alloca %struct.dn_aqm_pie_parms*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.m_tag*, align 8
  store %struct.fq_pie_flow* %0, %struct.fq_pie_flow** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.fq_pie_si* %2, %struct.fq_pie_si** %7, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %18 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %17, i32 0, i32 2
  store %struct.pie_status* %18, %struct.pie_status** %9, align 8
  %19 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %20 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %19, i32 0, i32 7
  %21 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %20, align 8
  store %struct.dn_aqm_pie_parms* %21, %struct.dn_aqm_pie_parms** %10, align 8
  %22 = load i32, i32* @ENQUE, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %24 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PIE_ACTIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %3
  %30 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %31 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %29
  %35 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %36 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %37 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @drop_early(%struct.pie_status* %35, i64 %39)
  %41 = load i32, i32* @DROP, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %34
  %44 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %10, align 8
  %45 = getelementptr inbounds %struct.dn_aqm_pie_parms, %struct.dn_aqm_pie_parms* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PIE_ECN_ENABLED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %43
  %51 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %52 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %10, align 8
  %55 = getelementptr inbounds %struct.dn_aqm_pie_parms, %struct.dn_aqm_pie_parms* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PIE_PROB_BITS, align 4
  %58 = load i32, i32* @PIE_FIX_POINT_BITS, align 4
  %59 = sub nsw i32 %57, %58
  %60 = shl i32 %56, %59
  %61 = icmp slt i32 %53, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %64 = call i64 @ecn_mark(%struct.mbuf* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @ENQUE, align 4
  store i32 %67, i32* %11, align 4
  br label %70

68:                                               ; preds = %62, %50, %43
  %69 = load i32, i32* @DROP, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %66
  br label %71

71:                                               ; preds = %70, %34, %29, %3
  %72 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %73 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PIE_ACTIVE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %71
  %79 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %80 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %84 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %89 = call i32 @fq_activate_pie(%struct.fq_pie_flow* %88)
  br label %90

90:                                               ; preds = %87, %78, %71
  %91 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %92 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %135

95:                                               ; preds = %90
  %96 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %97 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %10, align 8
  %100 = getelementptr inbounds %struct.dn_aqm_pie_parms, %struct.dn_aqm_pie_parms* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = ashr i32 %101, 1
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %135

104:                                              ; preds = %95
  %105 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %106 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %10, align 8
  %109 = getelementptr inbounds %struct.dn_aqm_pie_parms, %struct.dn_aqm_pie_parms* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = ashr i32 %110, 1
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %104
  %114 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %10, align 8
  %115 = getelementptr inbounds %struct.dn_aqm_pie_parms, %struct.dn_aqm_pie_parms* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %118 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %10, align 8
  %120 = getelementptr inbounds %struct.dn_aqm_pie_parms, %struct.dn_aqm_pie_parms* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PIE_ON_OFF_MODE_ENABLED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %113
  %126 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %127 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sle i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %133 = call i32 @fq_deactivate_pie(%struct.pie_status* %132)
  br label %134

134:                                              ; preds = %131, %125, %113
  br label %135

135:                                              ; preds = %134, %104, %95, %90
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @DROP, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %173

139:                                              ; preds = %135
  %140 = load %struct.dn_aqm_pie_parms*, %struct.dn_aqm_pie_parms** %10, align 8
  %141 = getelementptr inbounds %struct.dn_aqm_pie_parms, %struct.dn_aqm_pie_parms* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @PIE_DEPRATEEST_ENABLED, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %173, label %146

146:                                              ; preds = %139
  %147 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %148 = load i32, i32* @MTAG_ABI_COMPAT, align 4
  %149 = load i32, i32* @DN_AQM_MTAG_TS, align 4
  %150 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %147, i32 %148, i32 %149, i32* null)
  store %struct.m_tag* %150, %struct.m_tag** %12, align 8
  %151 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %152 = icmp eq %struct.m_tag* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load i32, i32* @MTAG_ABI_COMPAT, align 4
  %155 = load i32, i32* @DN_AQM_MTAG_TS, align 4
  %156 = load i32, i32* @M_NOWAIT, align 4
  %157 = call %struct.m_tag* @m_tag_alloc(i32 %154, i32 %155, i32 4, i32 %156)
  store %struct.m_tag* %157, %struct.m_tag** %12, align 8
  br label %158

158:                                              ; preds = %153, %146
  %159 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %160 = icmp eq %struct.m_tag* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %163 = call i32 @m_freem(%struct.mbuf* %162)
  %164 = load i32, i32* @DROP, align 4
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %161, %158
  %166 = load i32, i32* @AQM_UNOW, align 4
  %167 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %168 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %167, i64 1
  %169 = bitcast %struct.m_tag* %168 to i32*
  store i32 %166, i32* %169, align 4
  %170 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %171 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %172 = call i32 @m_tag_prepend(%struct.mbuf* %170, %struct.m_tag* %171)
  br label %173

173:                                              ; preds = %165, %139, %135
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @DROP, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %173
  %178 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %179 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %178, i32 0, i32 0
  %180 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %181 = call i32 @mq_append(i32* %179, %struct.mbuf* %180)
  %182 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %183 = load %struct.fq_pie_si*, %struct.fq_pie_si** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @fq_update_stats(%struct.fq_pie_flow* %182, %struct.fq_pie_si* %183, i32 %184, i32 0)
  store i32 0, i32* %4, align 4
  br label %195

186:                                              ; preds = %173
  %187 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %188 = load %struct.fq_pie_si*, %struct.fq_pie_si** %7, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @fq_update_stats(%struct.fq_pie_flow* %187, %struct.fq_pie_si* %188, i32 %189, i32 1)
  %191 = load %struct.pie_status*, %struct.pie_status** %9, align 8
  %192 = getelementptr inbounds %struct.pie_status, %struct.pie_status* %191, i32 0, i32 6
  store i64 0, i64* %192, align 8
  %193 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %194 = call i32 @FREE_PKT(%struct.mbuf* %193)
  store i32 1, i32* %4, align 4
  br label %195

195:                                              ; preds = %186, %177
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @drop_early(%struct.pie_status*, i64) #1

declare dso_local i64 @ecn_mark(%struct.mbuf*) #1

declare dso_local i32 @fq_activate_pie(%struct.fq_pie_flow*) #1

declare dso_local i32 @fq_deactivate_pie(%struct.pie_status*) #1

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local %struct.m_tag* @m_tag_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

declare dso_local i32 @mq_append(i32*, %struct.mbuf*) #1

declare dso_local i32 @fq_update_stats(%struct.fq_pie_flow*, %struct.fq_pie_si*, i32, i32) #1

declare dso_local i32 @FREE_PKT(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
