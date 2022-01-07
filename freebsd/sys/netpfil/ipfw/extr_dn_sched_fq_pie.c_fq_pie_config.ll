; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }
%struct.dn_schk = type { i64 }
%struct.fq_pie_schk = type { %struct.dn_sch_fq_pie_parms }
%struct.dn_sch_fq_pie_parms = type { i64, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.dn_extra_parms = type { i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@DN_SCH_PARAMS = common dso_local global i64 0, align 8
@fq_pie_sysctl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@AQM_TIME_1S = common dso_local global i32 0, align 4
@PIE_SCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Wrong parameters for fq_pie scheduler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_schk*)* @fq_pie_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_pie_config(%struct.dn_schk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dn_schk*, align 8
  %4 = alloca %struct.fq_pie_schk*, align 8
  %5 = alloca %struct.dn_extra_parms*, align 8
  %6 = alloca %struct.dn_sch_fq_pie_parms*, align 8
  store %struct.dn_schk* %0, %struct.dn_schk** %3, align 8
  %7 = load %struct.dn_schk*, %struct.dn_schk** %3, align 8
  %8 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %7, i64 1
  %9 = bitcast %struct.dn_schk* %8 to %struct.fq_pie_schk*
  store %struct.fq_pie_schk* %9, %struct.fq_pie_schk** %4, align 8
  %10 = load %struct.dn_schk*, %struct.dn_schk** %3, align 8
  %11 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.dn_extra_parms*
  store %struct.dn_extra_parms* %13, %struct.dn_extra_parms** %5, align 8
  %14 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %15 = icmp ne %struct.dn_extra_parms* %14, null
  br i1 %15, label %16, label %322

16:                                               ; preds = %1
  %17 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %18 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, 24
  br i1 %22, label %23, label %322

23:                                               ; preds = %16
  %24 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %25 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DN_SCH_PARAMS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %322

30:                                               ; preds = %23
  %31 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %4, align 8
  %32 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %31, i32 0, i32 0
  store %struct.dn_sch_fq_pie_parms* %32, %struct.dn_sch_fq_pie_parms** %6, align 8
  %33 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %34 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fq_pie_sysctl, i32 0, i32 3, i32 0), align 8
  %41 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %42 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  br label %53

44:                                               ; preds = %30
  %45 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %46 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %51 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  br label %53

53:                                               ; preds = %44, %39
  %54 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %55 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fq_pie_sysctl, i32 0, i32 3, i32 1), align 8
  %62 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %63 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  br label %74

65:                                               ; preds = %53
  %66 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %67 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %72 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %65, %60
  %75 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %76 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fq_pie_sysctl, i32 0, i32 3, i32 2), align 8
  %83 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %84 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store i64 %82, i64* %85, align 8
  br label %95

86:                                               ; preds = %74
  %87 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %88 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %93 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i64 %91, i64* %94, align 8
  br label %95

95:                                               ; preds = %86, %81
  %96 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %97 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fq_pie_sysctl, i32 0, i32 3, i32 3), align 8
  %104 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %105 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  store i64 %103, i64* %106, align 8
  br label %116

107:                                              ; preds = %95
  %108 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %109 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %114 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  store i64 %112, i64* %115, align 8
  br label %116

116:                                              ; preds = %107, %102
  %117 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %118 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fq_pie_sysctl, i32 0, i32 3, i32 4), align 8
  %125 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %126 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  store i64 %124, i64* %127, align 8
  br label %137

128:                                              ; preds = %116
  %129 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %130 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 4
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %135 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  store i64 %133, i64* %136, align 8
  br label %137

137:                                              ; preds = %128, %123
  %138 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %139 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fq_pie_sysctl, i32 0, i32 3, i32 5), align 8
  %146 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %147 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 5
  store i64 %145, i64* %148, align 8
  br label %158

149:                                              ; preds = %137
  %150 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %151 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 5
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %156 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 5
  store i64 %154, i64* %157, align 8
  br label %158

158:                                              ; preds = %149, %144
  %159 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %160 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %167 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 6
  store i64 0, i64* %168, align 8
  br label %178

169:                                              ; preds = %158
  %170 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %171 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 6
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %176 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 6
  store i64 %174, i64* %177, align 8
  br label %178

178:                                              ; preds = %169, %165
  %179 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %180 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 7
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fq_pie_sysctl, i32 0, i32 0), align 8
  %187 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %188 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  br label %197

189:                                              ; preds = %178
  %190 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %191 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %190, i32 0, i32 0
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 7
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %196 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  br label %197

197:                                              ; preds = %189, %185
  %198 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %199 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %198, i32 0, i32 0
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 8
  %202 = load i64, i64* %201, align 8
  %203 = icmp slt i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %197
  %205 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fq_pie_sysctl, i32 0, i32 1), align 8
  %206 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %207 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  br label %216

208:                                              ; preds = %197
  %209 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %210 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %209, i32 0, i32 0
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 8
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %215 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %214, i32 0, i32 1
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %208, %204
  %217 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %218 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 9
  %221 = load i64, i64* %220, align 8
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %216
  %224 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fq_pie_sysctl, i32 0, i32 2), align 8
  %225 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %226 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %225, i32 0, i32 2
  store i64 %224, i64* %226, align 8
  br label %235

227:                                              ; preds = %216
  %228 = load %struct.dn_extra_parms*, %struct.dn_extra_parms** %5, align 8
  %229 = getelementptr inbounds %struct.dn_extra_parms, %struct.dn_extra_parms* %228, i32 0, i32 0
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 9
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %234 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %233, i32 0, i32 2
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %227, %223
  %236 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %237 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* @AQM_TIME_1S, align 4
  %241 = mul nsw i32 5, %240
  %242 = call i8* @BOUND_VAR(i64 %239, i32 1, i32 %241)
  %243 = ptrtoint i8* %242 to i64
  %244 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %245 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  store i64 %243, i64* %246, align 8
  %247 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %248 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load i32, i32* @AQM_TIME_1S, align 4
  %252 = mul nsw i32 5, %251
  %253 = call i8* @BOUND_VAR(i64 %250, i32 1, i32 %252)
  %254 = ptrtoint i8* %253 to i64
  %255 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %256 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 1
  store i64 %254, i64* %257, align 8
  %258 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %259 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* @AQM_TIME_1S, align 4
  %263 = mul nsw i32 5, %262
  %264 = call i8* @BOUND_VAR(i64 %261, i32 0, i32 %263)
  %265 = ptrtoint i8* %264 to i64
  %266 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %267 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  store i64 %265, i64* %268, align 8
  %269 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %270 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* @PIE_SCALE, align 4
  %274 = call i8* @BOUND_VAR(i64 %272, i32 0, i32 %273)
  %275 = ptrtoint i8* %274 to i64
  %276 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %277 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 3
  store i64 %275, i64* %278, align 8
  %279 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %280 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 4
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* @PIE_SCALE, align 4
  %284 = mul nsw i32 7, %283
  %285 = call i8* @BOUND_VAR(i64 %282, i32 0, i32 %284)
  %286 = ptrtoint i8* %285 to i64
  %287 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %288 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 4
  store i64 %286, i64* %289, align 8
  %290 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %291 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 5
  %293 = load i64, i64* %292, align 8
  %294 = load i32, i32* @PIE_SCALE, align 4
  %295 = mul nsw i32 7, %294
  %296 = call i8* @BOUND_VAR(i64 %293, i32 0, i32 %295)
  %297 = ptrtoint i8* %296 to i64
  %298 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %299 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 5
  store i64 %297, i64* %300, align 8
  %301 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %302 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = call i8* @BOUND_VAR(i64 %303, i32 1, i32 9000)
  %305 = ptrtoint i8* %304 to i64
  %306 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %307 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %306, i32 0, i32 0
  store i64 %305, i64* %307, align 8
  %308 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %309 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = call i8* @BOUND_VAR(i64 %310, i32 1, i32 20480)
  %312 = ptrtoint i8* %311 to i64
  %313 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %314 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %313, i32 0, i32 1
  store i64 %312, i64* %314, align 8
  %315 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %316 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = call i8* @BOUND_VAR(i64 %317, i32 1, i32 65536)
  %319 = ptrtoint i8* %318 to i64
  %320 = load %struct.dn_sch_fq_pie_parms*, %struct.dn_sch_fq_pie_parms** %6, align 8
  %321 = getelementptr inbounds %struct.dn_sch_fq_pie_parms, %struct.dn_sch_fq_pie_parms* %320, i32 0, i32 2
  store i64 %319, i64* %321, align 8
  br label %324

322:                                              ; preds = %23, %16, %1
  %323 = call i32 @D(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %325

324:                                              ; preds = %235
  store i32 0, i32* %2, align 4
  br label %325

325:                                              ; preds = %324, %322
  %326 = load i32, i32* %2, align 4
  ret i32 %326
}

declare dso_local i8* @BOUND_VAR(i64, i32, i32) #1

declare dso_local i32 @D(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
