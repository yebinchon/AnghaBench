; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_configure_hashfilter_tcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_configure_hashfilter_tcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.filter_entry = type { i64, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@S_TF_CCTRL_ECE = common dso_local global i32 0, align 4
@VLAN_INSERT = common dso_local global i64 0, align 8
@VLAN_REWRITE = common dso_local global i64 0, align 8
@S_TF_CCTRL_RFR = common dso_local global i32 0, align 4
@S_TF_CCTRL_CWR = common dso_local global i32 0, align 4
@W_TCB_SMAC_SEL = common dso_local global i32 0, align 4
@M_TCB_SMAC_SEL = common dso_local global i32 0, align 4
@W_TCB_RCV_NXT = common dso_local global i32 0, align 4
@M_TCB_RCV_NXT = common dso_local global i64 0, align 8
@FILTER_DROP = common dso_local global i64 0, align 8
@W_TCB_T_FLAGS = common dso_local global i32 0, align 4
@FILTER_SWITCH = common dso_local global i64 0, align 8
@S_TF_CCTRL_ECN = common dso_local global i32 0, align 4
@W_TCB_TIMESTAMP = common dso_local global i32 0, align 4
@M_TCB_TIMESTAMP = common dso_local global i64 0, align 8
@M_TCB_T_RTT_TS_RECENT_AGE = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.filter_entry*)* @configure_hashfilter_tcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_hashfilter_tcb(%struct.adapter* %0, %struct.filter_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.filter_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.filter_entry* %1, %struct.filter_entry** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %8 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %9, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @MPASS(i32 %15)
  %17 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %18 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @MPASS(i32 %20)
  %22 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %23 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @MPASS(i32 %24)
  %26 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %27 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @MPASS(i32 %30)
  %32 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %33 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %2
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %40 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @S_TF_CCTRL_ECE, align 4
  %43 = call i32 @set_tcb_tflag(%struct.adapter* %38, i64 %41, i32 %42, i32 1, i32 1)
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %37, %2
  %47 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %48 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VLAN_INSERT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %55 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VLAN_REWRITE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %53, %46
  %61 = load %struct.adapter*, %struct.adapter** %4, align 8
  %62 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %63 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @S_TF_CCTRL_RFR, align 4
  %66 = call i32 @set_tcb_tflag(%struct.adapter* %61, i64 %64, i32 %65, i32 1, i32 1)
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %60, %53
  %70 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %71 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %69
  %76 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %77 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %76, i32 0, i32 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = icmp ne %struct.TYPE_5__* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 @MPASS(i32 %80)
  %82 = load %struct.adapter*, %struct.adapter** %4, align 8
  %83 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %84 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @S_TF_CCTRL_CWR, align 4
  %87 = call i32 @set_tcb_tflag(%struct.adapter* %82, i64 %85, i32 %86, i32 1, i32 1)
  %88 = load %struct.adapter*, %struct.adapter** %4, align 8
  %89 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %90 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @W_TCB_SMAC_SEL, align 4
  %93 = load i32, i32* @M_TCB_SMAC_SEL, align 4
  %94 = call i32 @V_TCB_SMAC_SEL(i32 %93)
  %95 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %96 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %95, i32 0, i32 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @V_TCB_SMAC_SEL(i32 %99)
  %101 = call i32 @set_tcb_field(%struct.adapter* %88, i64 %91, i32 %92, i32 %94, i32 %100, i32 1)
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %75, %69
  %105 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %106 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %152 [
    i32 129, label %109
    i32 134, label %110
    i32 133, label %116
    i32 132, label %122
    i32 131, label %128
    i32 128, label %134
    i32 130, label %140
    i32 135, label %146
  ]

109:                                              ; preds = %104
  br label %154

110:                                              ; preds = %104
  %111 = load %struct.adapter*, %struct.adapter** %4, align 8
  %112 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %113 = call i32 @set_nat_params(%struct.adapter* %111, %struct.filter_entry* %112, i32 1, i32 0, i32 0, i32 0)
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %154

116:                                              ; preds = %104
  %117 = load %struct.adapter*, %struct.adapter** %4, align 8
  %118 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %119 = call i32 @set_nat_params(%struct.adapter* %117, %struct.filter_entry* %118, i32 1, i32 0, i32 1, i32 0)
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %154

122:                                              ; preds = %104
  %123 = load %struct.adapter*, %struct.adapter** %4, align 8
  %124 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %125 = call i32 @set_nat_params(%struct.adapter* %123, %struct.filter_entry* %124, i32 1, i32 1, i32 1, i32 0)
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %154

128:                                              ; preds = %104
  %129 = load %struct.adapter*, %struct.adapter** %4, align 8
  %130 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %131 = call i32 @set_nat_params(%struct.adapter* %129, %struct.filter_entry* %130, i32 1, i32 0, i32 1, i32 1)
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %154

134:                                              ; preds = %104
  %135 = load %struct.adapter*, %struct.adapter** %4, align 8
  %136 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %137 = call i32 @set_nat_params(%struct.adapter* %135, %struct.filter_entry* %136, i32 0, i32 1, i32 0, i32 1)
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %154

140:                                              ; preds = %104
  %141 = load %struct.adapter*, %struct.adapter** %4, align 8
  %142 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %143 = call i32 @set_nat_params(%struct.adapter* %141, %struct.filter_entry* %142, i32 1, i32 1, i32 0, i32 1)
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %154

146:                                              ; preds = %104
  %147 = load %struct.adapter*, %struct.adapter** %4, align 8
  %148 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %149 = call i32 @set_nat_params(%struct.adapter* %147, %struct.filter_entry* %148, i32 1, i32 1, i32 1, i32 1)
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %154

152:                                              ; preds = %104
  %153 = call i32 @MPASS(i32 0)
  br label %154

154:                                              ; preds = %152, %146, %140, %134, %128, %122, %116, %110, %109
  %155 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %156 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %154
  %161 = load %struct.adapter*, %struct.adapter** %4, align 8
  %162 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %163 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @W_TCB_RCV_NXT, align 4
  %166 = load i64, i64* @M_TCB_RCV_NXT, align 8
  %167 = call i32 @V_TCB_RCV_NXT(i64 %166)
  %168 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %169 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @V_TCB_RCV_NXT(i64 %171)
  %173 = call i32 @set_tcb_field(%struct.adapter* %161, i64 %164, i32 %165, i32 %167, i32 %172, i32 1)
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %160, %154
  %177 = load %struct.adapter*, %struct.adapter** %4, align 8
  %178 = call i64 @is_t5(%struct.adapter* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %200

180:                                              ; preds = %176
  %181 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %182 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @FILTER_DROP, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %180
  %188 = load %struct.adapter*, %struct.adapter** %4, align 8
  %189 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %190 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @W_TCB_T_FLAGS, align 4
  %193 = call i32 @V_TF_NON_OFFLOAD(i32 1)
  %194 = call i32 @V_TF_MIGRATING(i32 1)
  %195 = or i32 %193, %194
  %196 = call i32 @V_TF_MIGRATING(i32 1)
  %197 = call i32 @set_tcb_field(%struct.adapter* %188, i64 %191, i32 %192, i32 %195, i32 %196, i32 1)
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %187, %180, %176
  %201 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %202 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @FILTER_SWITCH, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %216

207:                                              ; preds = %200
  %208 = load %struct.adapter*, %struct.adapter** %4, align 8
  %209 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %210 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @S_TF_CCTRL_ECN, align 4
  %213 = call i32 @set_tcb_tflag(%struct.adapter* %208, i64 %211, i32 %212, i32 1, i32 1)
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %207, %200
  %217 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %218 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %216
  %223 = load i32, i32* %6, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %222, %216
  %226 = load %struct.adapter*, %struct.adapter** %4, align 8
  %227 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %228 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* @W_TCB_TIMESTAMP, align 4
  %231 = load i64, i64* @M_TCB_TIMESTAMP, align 8
  %232 = call i32 @V_TCB_TIMESTAMP(i64 %231)
  %233 = load i64, i64* @M_TCB_T_RTT_TS_RECENT_AGE, align 8
  %234 = call i32 @V_TCB_T_RTT_TS_RECENT_AGE(i64 %233)
  %235 = or i32 %232, %234
  %236 = call i32 @V_TCB_TIMESTAMP(i64 0)
  %237 = call i32 @V_TCB_T_RTT_TS_RECENT_AGE(i64 0)
  %238 = or i32 %236, %237
  %239 = call i32 @set_tcb_field(%struct.adapter* %226, i64 %229, i32 %230, i32 %235, i32 %238, i32 0)
  %240 = load i32, i32* @EINPROGRESS, align 4
  store i32 %240, i32* %3, align 4
  br label %242

241:                                              ; preds = %222
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %241, %225
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @set_tcb_tflag(%struct.adapter*, i64, i32, i32, i32) #1

declare dso_local i32 @set_tcb_field(%struct.adapter*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @V_TCB_SMAC_SEL(i32) #1

declare dso_local i32 @set_nat_params(%struct.adapter*, %struct.filter_entry*, i32, i32, i32, i32) #1

declare dso_local i32 @V_TCB_RCV_NXT(i64) #1

declare dso_local i64 @is_t5(%struct.adapter*) #1

declare dso_local i32 @V_TF_NON_OFFLOAD(i32) #1

declare dso_local i32 @V_TF_MIGRATING(i32) #1

declare dso_local i32 @V_TCB_TIMESTAMP(i64) #1

declare dso_local i32 @V_TCB_T_RTT_TS_RECENT_AGE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
