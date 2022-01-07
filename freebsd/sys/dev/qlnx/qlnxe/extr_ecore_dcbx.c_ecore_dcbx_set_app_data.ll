; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_app_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_app_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.dcbx_app_priority_feature = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_dcbx_params = type { i32, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@DCBX_APP_WILLING_MASK = common dso_local global i32 0, align 4
@DCBX_APP_ENABLED_MASK = common dso_local global i32 0, align 4
@DCBX_APP_NUM_ENTRIES_MASK = common dso_local global i32 0, align 4
@DCBX_APP_NUM_ENTRIES_OFFSET = common dso_local global i32 0, align 4
@DCBX_APP_SF_IEEE_MASK = common dso_local global i32 0, align 4
@DCBX_APP_SF_MASK = common dso_local global i32 0, align 4
@DCBX_APP_SF_IEEE_ETHTYPE = common dso_local global i64 0, align 8
@DCBX_APP_SF_IEEE_OFFSET = common dso_local global i32 0, align 4
@DCBX_APP_SF_ETHTYPE = common dso_local global i64 0, align 8
@DCBX_APP_SF_OFFSET = common dso_local global i32 0, align 4
@DCBX_APP_SF_IEEE_TCP_PORT = common dso_local global i64 0, align 8
@DCBX_APP_SF_PORT = common dso_local global i64 0, align 8
@DCBX_APP_SF_IEEE_UDP_PORT = common dso_local global i64 0, align 8
@DCBX_APP_SF_IEEE_TCP_UDP_PORT = common dso_local global i64 0, align 8
@DCBX_APP_PROTOCOL_ID_MASK = common dso_local global i32 0, align 4
@DCBX_APP_PROTOCOL_ID_OFFSET = common dso_local global i32 0, align 4
@DCBX_APP_PRI_MAP_MASK = common dso_local global i32 0, align 4
@DCBX_APP_PRI_MAP_OFFSET = common dso_local global i32 0, align 4
@ECORE_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"flags = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.dcbx_app_priority_feature*, %struct.ecore_dcbx_params*, i32)* @ecore_dcbx_set_app_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dcbx_set_app_data(%struct.ecore_hwfn* %0, %struct.dcbx_app_priority_feature* %1, %struct.ecore_dcbx_params* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.dcbx_app_priority_feature*, align 8
  %7 = alloca %struct.ecore_dcbx_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.dcbx_app_priority_feature* %1, %struct.dcbx_app_priority_feature** %6, align 8
  store %struct.ecore_dcbx_params* %2, %struct.ecore_dcbx_params** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %7, align 8
  %12 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* @DCBX_APP_WILLING_MASK, align 4
  %17 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %18 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @DCBX_APP_WILLING_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %25 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %21, %15
  %29 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %7, align 8
  %30 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @DCBX_APP_ENABLED_MASK, align 4
  %35 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %36 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %46

39:                                               ; preds = %28
  %40 = load i32, i32* @DCBX_APP_ENABLED_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %43 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %39, %33
  %47 = load i32, i32* @DCBX_APP_NUM_ENTRIES_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %50 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %7, align 8
  %54 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DCBX_APP_NUM_ENTRIES_OFFSET, align 4
  %57 = shl i32 %55, %56
  %58 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %59 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %227, %46
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %7, align 8
  %65 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %230

68:                                               ; preds = %62
  %69 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %70 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %156

79:                                               ; preds = %68
  %80 = load i32, i32* @DCBX_APP_SF_IEEE_MASK, align 4
  %81 = load i32, i32* @DCBX_APP_SF_MASK, align 4
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %83
  store i32 %86, i32* %84, align 4
  %87 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %7, align 8
  %88 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %155 [
    i32 131, label %95
    i32 130, label %110
    i32 128, label %125
    i32 129, label %140
  ]

95:                                               ; preds = %79
  %96 = load i64, i64* @DCBX_APP_SF_IEEE_ETHTYPE, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @DCBX_APP_SF_IEEE_OFFSET, align 4
  %99 = shl i32 %97, %98
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 4
  %103 = load i64, i64* @DCBX_APP_SF_ETHTYPE, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* @DCBX_APP_SF_OFFSET, align 4
  %106 = shl i32 %104, %105
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  br label %155

110:                                              ; preds = %79
  %111 = load i64, i64* @DCBX_APP_SF_IEEE_TCP_PORT, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* @DCBX_APP_SF_IEEE_OFFSET, align 4
  %114 = shl i32 %112, %113
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  %118 = load i64, i64* @DCBX_APP_SF_PORT, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* @DCBX_APP_SF_OFFSET, align 4
  %121 = shl i32 %119, %120
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 4
  br label %155

125:                                              ; preds = %79
  %126 = load i64, i64* @DCBX_APP_SF_IEEE_UDP_PORT, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @DCBX_APP_SF_IEEE_OFFSET, align 4
  %129 = shl i32 %127, %128
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 4
  %133 = load i64, i64* @DCBX_APP_SF_PORT, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* @DCBX_APP_SF_OFFSET, align 4
  %136 = shl i32 %134, %135
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %136
  store i32 %139, i32* %137, align 4
  br label %155

140:                                              ; preds = %79
  %141 = load i64, i64* @DCBX_APP_SF_IEEE_TCP_UDP_PORT, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* @DCBX_APP_SF_IEEE_OFFSET, align 4
  %144 = shl i32 %142, %143
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %144
  store i32 %147, i32* %145, align 4
  %148 = load i64, i64* @DCBX_APP_SF_PORT, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* @DCBX_APP_SF_OFFSET, align 4
  %151 = shl i32 %149, %150
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %79, %140, %125, %110, %95
  br label %188

156:                                              ; preds = %68
  %157 = load i32, i32* @DCBX_APP_SF_MASK, align 4
  %158 = xor i32 %157, -1
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %158
  store i32 %161, i32* %159, align 4
  %162 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %7, align 8
  %163 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %162, i32 0, i32 1
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %156
  %172 = load i64, i64* @DCBX_APP_SF_ETHTYPE, align 8
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* @DCBX_APP_SF_OFFSET, align 4
  %175 = shl i32 %173, %174
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %175
  store i32 %178, i32* %176, align 4
  br label %187

179:                                              ; preds = %156
  %180 = load i64, i64* @DCBX_APP_SF_PORT, align 8
  %181 = trunc i64 %180 to i32
  %182 = load i32, i32* @DCBX_APP_SF_OFFSET, align 4
  %183 = shl i32 %181, %182
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %183
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %179, %171
  br label %188

188:                                              ; preds = %187, %155
  %189 = load i32, i32* @DCBX_APP_PROTOCOL_ID_MASK, align 4
  %190 = xor i32 %189, -1
  %191 = load i32*, i32** %9, align 8
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, %190
  store i32 %193, i32* %191, align 4
  %194 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %7, align 8
  %195 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %194, i32 0, i32 1
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = load i32, i32* @DCBX_APP_PROTOCOL_ID_OFFSET, align 4
  %204 = shl i32 %202, %203
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %204
  store i32 %207, i32* %205, align 4
  %208 = load i32, i32* @DCBX_APP_PRI_MAP_MASK, align 4
  %209 = xor i32 %208, -1
  %210 = load i32*, i32** %9, align 8
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, %209
  store i32 %212, i32* %210, align 4
  %213 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %7, align 8
  %214 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %213, i32 0, i32 1
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = shl i32 1, %220
  %222 = load i32, i32* @DCBX_APP_PRI_MAP_OFFSET, align 4
  %223 = shl i32 %221, %222
  %224 = load i32*, i32** %9, align 8
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %223
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %188
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %10, align 4
  br label %62

230:                                              ; preds = %62
  %231 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %232 = load i32, i32* @ECORE_MSG_DCB, align 4
  %233 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %6, align 8
  %234 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %231, i32 %232, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %235)
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
