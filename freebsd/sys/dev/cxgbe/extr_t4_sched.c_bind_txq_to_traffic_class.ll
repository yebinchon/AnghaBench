; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sched.c_bind_txq_to_traffic_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sched.c_bind_txq_to_traffic_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.tx_cl_rl_params* }
%struct.tx_cl_rl_params = type { i32, i64 }
%struct.sge_txq = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32 }

@EQ_ALLOCATED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CLRL_ERR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"t4btxq\00", align 1
@FW_PARAMS_MNEM_DMAQ = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DMAQ_EQ_SCHEDCLASS_ETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_txq*, i32)* @bind_txq_to_traffic_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_txq_to_traffic_class(%struct.adapter* %0, %struct.sge_txq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_txq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tx_cl_rl_params*, align 8
  %9 = alloca %struct.tx_cl_rl_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %15 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EQ_ALLOCATED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EAGAIN, align 4
  store i32 %22, i32* %4, align 4
  br label %203

23:                                               ; preds = %3
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = call i32 @mtx_lock(i32* %25)
  %27 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %28 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, -2
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @EBUSY, align 4
  store i32 %32, i32* %10, align 4
  br label %180

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %36 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %180

40:                                               ; preds = %33
  %41 = load %struct.adapter*, %struct.adapter** %5, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 4
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %45 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %52, align 8
  %54 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %53, i64 0
  store %struct.tx_cl_rl_params* %54, %struct.tx_cl_rl_params** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %76

57:                                               ; preds = %40
  %58 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %58, i64 %60
  store %struct.tx_cl_rl_params* %61, %struct.tx_cl_rl_params** %9, align 8
  %62 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %9, align 8
  %63 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CLRL_ERR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %10, align 4
  br label %180

70:                                               ; preds = %57
  %71 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %9, align 8
  %72 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %40
  %77 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %78 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %11, align 4
  %80 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %81 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %80, i32 0, i32 0
  store i32 -2, i32* %81, align 8
  %82 = load %struct.adapter*, %struct.adapter** %5, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 0
  %84 = call i32 @mtx_unlock(i32* %83)
  %85 = load %struct.adapter*, %struct.adapter** %5, align 8
  %86 = load i32, i32* @SLEEP_OK, align 4
  %87 = load i32, i32* @INTR_OK, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @begin_synchronized_op(%struct.adapter* %85, i32* null, i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %203

94:                                               ; preds = %76
  %95 = load i32, i32* @FW_PARAMS_MNEM_DMAQ, align 4
  %96 = call i32 @V_FW_PARAMS_MNEM(i32 %95)
  %97 = load i32, i32* @FW_PARAMS_PARAM_DMAQ_EQ_SCHEDCLASS_ETH, align 4
  %98 = call i32 @V_FW_PARAMS_PARAM_X(i32 %97)
  %99 = or i32 %96, %98
  %100 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %101 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @V_FW_PARAMS_PARAM_YZ(i32 %103)
  %105 = or i32 %99, %104
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %111

109:                                              ; preds = %94
  %110 = load i32, i32* %7, align 4
  br label %111

111:                                              ; preds = %109, %108
  %112 = phi i32 [ -1, %108 ], [ %110, %109 ]
  store i32 %112, i32* %13, align 4
  %113 = load %struct.adapter*, %struct.adapter** %5, align 8
  %114 = load %struct.adapter*, %struct.adapter** %5, align 8
  %115 = getelementptr inbounds %struct.adapter, %struct.adapter* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.adapter*, %struct.adapter** %5, align 8
  %118 = getelementptr inbounds %struct.adapter, %struct.adapter* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @t4_set_params(%struct.adapter* %113, i32 %116, i32 %119, i32 0, i32 1, i32* %12, i32* %13)
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %10, align 4
  %122 = load %struct.adapter*, %struct.adapter** %5, align 8
  %123 = call i32 @end_synchronized_op(%struct.adapter* %122, i32 0)
  %124 = load %struct.adapter*, %struct.adapter** %5, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 0
  %126 = call i32 @mtx_lock(i32* %125)
  %127 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %128 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, -2
  %131 = zext i1 %130 to i32
  %132 = call i32 @MPASS(i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %111
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, -1
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %8, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %139, i64 %141
  store %struct.tx_cl_rl_params* %142, %struct.tx_cl_rl_params** %9, align 8
  %143 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %9, align 8
  %144 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @MPASS(i32 %147)
  %149 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %9, align 8
  %150 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, -1
  store i64 %152, i64* %150, align 8
  br label %153

153:                                              ; preds = %138, %135
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %156 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %179

157:                                              ; preds = %111
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, -1
  br i1 %159, label %160, label %175

160:                                              ; preds = %157
  %161 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %8, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %161, i64 %163
  store %struct.tx_cl_rl_params* %164, %struct.tx_cl_rl_params** %9, align 8
  %165 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %9, align 8
  %166 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @MPASS(i32 %169)
  %171 = load %struct.tx_cl_rl_params*, %struct.tx_cl_rl_params** %9, align 8
  %172 = getelementptr inbounds %struct.tx_cl_rl_params, %struct.tx_cl_rl_params* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, -1
  store i64 %174, i64* %172, align 8
  br label %175

175:                                              ; preds = %160, %157
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %178 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %175, %153
  br label %180

180:                                              ; preds = %179, %68, %39, %31
  %181 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %182 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp sge i32 %183, -1
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  %186 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %187 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.adapter*, %struct.adapter** %5, align 8
  %190 = getelementptr inbounds %struct.adapter, %struct.adapter* %189, i32 0, i32 1
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %188, %193
  br label %195

195:                                              ; preds = %185, %180
  %196 = phi i1 [ false, %180 ], [ %194, %185 ]
  %197 = zext i1 %196 to i32
  %198 = call i32 @MPASS(i32 %197)
  %199 = load %struct.adapter*, %struct.adapter** %5, align 8
  %200 = getelementptr inbounds %struct.adapter, %struct.adapter* %199, i32 0, i32 0
  %201 = call i32 @mtx_unlock(i32* %200)
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %195, %92, %21
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i32 @V_FW_PARAMS_MNEM(i32) #1

declare dso_local i32 @V_FW_PARAMS_PARAM_X(i32) #1

declare dso_local i32 @V_FW_PARAMS_PARAM_YZ(i32) #1

declare dso_local i32 @t4_set_params(%struct.adapter*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
