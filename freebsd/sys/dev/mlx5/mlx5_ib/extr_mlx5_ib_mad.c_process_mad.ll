; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_process_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i64 }
%struct.ib_grh = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_TRAP = common dso_local global i64 0, align 8
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_TRAP_REPRESS = common dso_local global i64 0, align 8
@IB_SMP_ATTR_SM_INFO = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@MLX5_IB_VENDOR_CLASS1 = common dso_local global i64 0, align 8
@MLX5_IB_VENDOR_CLASS2 = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_CONG_MGMT = common dso_local global i64 0, align 8
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_BKEY = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*)* @process_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc*, align 8
  %13 = alloca %struct.ib_grh*, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %12, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %13, align 8
  store %struct.ib_mad* %5, %struct.ib_mad** %14, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %15, align 8
  %18 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %19 = icmp ne %struct.ib_wc* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %7
  %21 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %22 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  br label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %26 = call i64 @be16_to_cpu(i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %23, %20 ], [ %26, %24 ]
  store i64 %28, i64* %16, align 8
  %29 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %30 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IB_MGMT_METHOD_TRAP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i64, i64* %16, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %40 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %8, align 4
  br label %185

42:                                               ; preds = %35, %27
  %43 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %44 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %51 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %49, %42
  %57 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %58 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %56
  %64 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %65 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %72 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %78, i32* %8, align 4
  br label %185

79:                                               ; preds = %70, %63, %56
  %80 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %81 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IB_SMP_ATTR_SM_INFO, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %87, i32* %8, align 4
  br label %185

88:                                               ; preds = %79
  br label %137

89:                                               ; preds = %49
  %90 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %91 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %117, label %96

96:                                               ; preds = %89
  %97 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %98 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MLX5_IB_VENDOR_CLASS1, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %117, label %103

103:                                              ; preds = %96
  %104 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %105 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MLX5_IB_VENDOR_CLASS2, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %112 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IB_MGMT_CLASS_CONG_MGMT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %110, %103, %96, %89
  %118 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %119 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %117
  %125 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %126 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %132, i32* %8, align 4
  br label %185

133:                                              ; preds = %124, %117
  br label %136

134:                                              ; preds = %110
  %135 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %135, i32* %8, align 4
  br label %185

136:                                              ; preds = %133
  br label %137

137:                                              ; preds = %136, %88
  %138 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %139 = call i32 @to_mdev(%struct.ib_device* %138)
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @IB_MAD_IGNORE_BKEY, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %148 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %149 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %150 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %151 = call i32 @mlx5_MAD_IFC(i32 %139, i32 %142, i32 %145, i32 %146, %struct.ib_wc* %147, %struct.ib_grh* %148, %struct.ib_mad* %149, %struct.ib_mad* %150)
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %137
  %155 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %155, i32* %8, align 4
  br label %185

156:                                              ; preds = %137
  %157 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %158 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = call i32 @cpu_to_be16(i32 32768)
  %165 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %166 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %164
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %163, %156
  %171 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %172 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %170
  %178 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %179 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %180 = or i32 %178, %179
  store i32 %180, i32* %8, align 4
  br label %185

181:                                              ; preds = %170
  %182 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %183 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %184 = or i32 %182, %183
  store i32 %184, i32* %8, align 4
  br label %185

185:                                              ; preds = %181, %177, %154, %134, %131, %86, %77, %38
  %186 = load i32, i32* %8, align 4
  ret i32 %186
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx5_MAD_IFC(i32, i32, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
