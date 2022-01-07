; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_tick_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_tick_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, %struct.port_info*, %struct.adapter_params, %struct.TYPE_9__ }
%struct.port_info = type { i32, %struct.cmac }
%struct.cmac = type { i64, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.adapter_params = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.sge_qset* }
%struct.sge_qset = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@CXGB_SHUTDOWN = common dso_local global i32 0, align 4
@FULL_INIT_DONE = common dso_local global i32 0, align 4
@T3_REV_B2 = common dso_local global i64 0, align 8
@A_SG_INT_CAUSE = common dso_local global i64 0, align 8
@F_RSPQSTARVE = common dso_local global i32 0, align 4
@F_FLEMPTY = common dso_local global i32 0, align 4
@A_SG_RSPQ_FL_STATUS = common dso_local global i64 0, align 8
@SGE_QSETS = common dso_local global i32 0, align 4
@A_XGM_INT_CAUSE = common dso_local global i64 0, align 8
@F_RXFIFO_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @cxgb_tick_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb_tick_handler(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.adapter_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sge_qset*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.port_info*, align 8
  %14 = alloca %struct.cmac*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  store %struct.adapter_params* %18, %struct.adapter_params** %6, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CXGB_SHUTDOWN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FULL_INIT_DONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25, %2
  br label %206

33:                                               ; preds = %25
  %34 = load %struct.adapter_params*, %struct.adapter_params** %6, align 8
  %35 = getelementptr inbounds %struct.adapter_params, %struct.adapter_params* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @T3_REV_B2, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.adapter_params*, %struct.adapter_params** %6, align 8
  %41 = getelementptr inbounds %struct.adapter_params, %struct.adapter_params* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = call i32 @check_t3b2_mac(%struct.TYPE_13__* %50)
  br label %52

52:                                               ; preds = %49, %44, %39, %33
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = load i64, i64* @A_SG_INT_CAUSE, align 8
  %55 = call i32 @t3_read_reg(%struct.TYPE_13__* %53, i64 %54)
  %56 = load i32, i32* @F_RSPQSTARVE, align 4
  %57 = load i32, i32* @F_FLEMPTY, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %140

62:                                               ; preds = %52
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.sge_qset*, %struct.sge_qset** %65, align 8
  %67 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %66, i64 0
  store %struct.sge_qset* %67, %struct.sge_qset** %10, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = load i64, i64* @A_SG_RSPQ_FL_STATUS, align 8
  %70 = call i32 @t3_read_reg(%struct.TYPE_13__* %68, i64 %69)
  %71 = and i32 %70, -65281
  store i32 %71, i32* %12, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %93, %62
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SGE_QSETS, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.sge_qset*, %struct.sge_qset** %10, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %82, i64 %84
  %86 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %81, %76
  %91 = load i32, i32* %11, align 4
  %92 = shl i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %72

96:                                               ; preds = %72
  %97 = load i32, i32* @SGE_QSETS, align 4
  %98 = load i32, i32* %11, align 4
  %99 = shl i32 %98, %97
  store i32 %99, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %128, %96
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @SGE_QSETS, align 4
  %103 = mul nsw i32 %102, 2
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %131

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = load %struct.sge_qset*, %struct.sge_qset** %10, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sdiv i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %111, i64 %114
  %116 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = srem i32 %118, 2
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %110, %105
  %126 = load i32, i32* %11, align 4
  %127 = shl i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %100

131:                                              ; preds = %100
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = load i64, i64* @A_SG_RSPQ_FL_STATUS, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @t3_write_reg(%struct.TYPE_13__* %132, i64 %133, i32 %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = load i64, i64* @A_SG_INT_CAUSE, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @t3_write_reg(%struct.TYPE_13__* %136, i64 %137, i32 %138)
  br label %140

140:                                              ; preds = %131, %52
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %203, %140
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.adapter_params, %struct.adapter_params* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %142, %146
  br i1 %147, label %148, label %206

148:                                              ; preds = %141
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = load %struct.port_info*, %struct.port_info** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.port_info, %struct.port_info* %151, i64 %153
  store %struct.port_info* %154, %struct.port_info** %13, align 8
  %155 = load %struct.port_info*, %struct.port_info** %13, align 8
  %156 = getelementptr inbounds %struct.port_info, %struct.port_info* %155, i32 0, i32 1
  store %struct.cmac* %156, %struct.cmac** %14, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load %struct.port_info*, %struct.port_info** %13, align 8
  %160 = getelementptr inbounds %struct.port_info, %struct.port_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @isset(i64* %158, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %148
  br label %203

165:                                              ; preds = %148
  %166 = load %struct.port_info*, %struct.port_info** %13, align 8
  %167 = call i32 @cxgb_refresh_stats(%struct.port_info* %166)
  %168 = load %struct.cmac*, %struct.cmac** %14, align 8
  %169 = getelementptr inbounds %struct.cmac, %struct.cmac* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %203

173:                                              ; preds = %165
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %175 = load i64, i64* @A_XGM_INT_CAUSE, align 8
  %176 = load %struct.cmac*, %struct.cmac** %14, align 8
  %177 = getelementptr inbounds %struct.cmac, %struct.cmac* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %175, %178
  %180 = call i32 @t3_read_reg(%struct.TYPE_13__* %174, i64 %179)
  store i32 %180, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @F_RXFIFO_OVERFLOW, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %173
  %186 = load %struct.cmac*, %struct.cmac** %14, align 8
  %187 = getelementptr inbounds %struct.cmac, %struct.cmac* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  %191 = load i32, i32* @F_RXFIFO_OVERFLOW, align 4
  %192 = load i32, i32* %9, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %185, %173
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %196 = load i64, i64* @A_XGM_INT_CAUSE, align 8
  %197 = load %struct.cmac*, %struct.cmac** %14, align 8
  %198 = getelementptr inbounds %struct.cmac, %struct.cmac* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %196, %199
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @t3_write_reg(%struct.TYPE_13__* %195, i64 %200, i32 %201)
  br label %203

203:                                              ; preds = %194, %172, %164
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %141

206:                                              ; preds = %32, %141
  ret void
}

declare dso_local i32 @check_t3b2_mac(%struct.TYPE_13__*) #1

declare dso_local i32 @t3_read_reg(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @isset(i64*, i32) #1

declare dso_local i32 @cxgb_refresh_stats(%struct.port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
