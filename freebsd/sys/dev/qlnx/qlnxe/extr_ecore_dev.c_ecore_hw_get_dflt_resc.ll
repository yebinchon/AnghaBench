; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_get_dflt_resc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_get_dflt_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MAX_NUM_L2_QUEUES_K2 = common dso_local global i32 0, align 4
@MAX_NUM_L2_QUEUES_BB = common dso_local global i32 0, align 4
@MAX_NUM_VPORTS_K2 = common dso_local global i32 0, align 4
@MAX_NUM_VPORTS_BB = common dso_local global i32 0, align 4
@ETH_RSS_ENGINE_NUM_K2 = common dso_local global i32 0, align 4
@ETH_RSS_ENGINE_NUM_BB = common dso_local global i32 0, align 4
@MAX_QM_TX_QUEUES_K2 = common dso_local global i32 0, align 4
@MAX_QM_TX_QUEUES_BB = common dso_local global i32 0, align 4
@MAX_QM_GLOBAL_RLS = common dso_local global i32 0, align 4
@ETH_NUM_MAC_FILTERS = common dso_local global i32 0, align 4
@PXP_NUM_ILT_RECORDS_K2 = common dso_local global i32 0, align 4
@PXP_NUM_ILT_RECORDS_BB = common dso_local global i32 0, align 4
@MAX_NUM_LL2_RX_QUEUES = common dso_local global i32 0, align 4
@NUM_OF_GLOBAL_QUEUES = common dso_local global i32 0, align 4
@RDMA_NUM_STATISTIC_COUNTERS_K2 = common dso_local global i32 0, align 4
@RDMA_NUM_STATISTIC_COUNTERS_BB = common dso_local global i32 0, align 4
@ECORE_PCI_ISCSI = common dso_local global i32 0, align 4
@ECORE_PCI_FCOE = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32, i32*, i32*)* @ecore_hw_get_dflt_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_hw_get_dflt_resc(%struct.ecore_hwfn* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @ECORE_IS_AH(%struct.TYPE_4__* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %136 [
    i32 138, label %20
    i32 128, label %32
    i32 131, label %44
    i32 135, label %56
    i32 132, label %71
    i32 136, label %76
    i32 129, label %76
    i32 139, label %81
    i32 137, label %93
    i32 134, label %98
    i32 140, label %98
    i32 133, label %103
    i32 141, label %115
    i32 130, label %134
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @MAX_NUM_L2_QUEUES_K2, align 4
  br label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @MAX_NUM_L2_QUEUES_BB, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load i32, i32* %10, align 4
  %30 = sdiv i32 %28, %29
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %138

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @MAX_NUM_VPORTS_K2, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @MAX_NUM_VPORTS_BB, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load i32, i32* %10, align 4
  %42 = sdiv i32 %40, %41
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  br label %138

44:                                               ; preds = %4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @ETH_RSS_ENGINE_NUM_K2, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @ETH_RSS_ENGINE_NUM_BB, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, i32* %10, align 4
  %54 = sdiv i32 %52, %53
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %138

56:                                               ; preds = %4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @MAX_QM_TX_QUEUES_K2, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @MAX_QM_TX_QUEUES_BB, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load i32, i32* %10, align 4
  %66 = sdiv i32 %64, %65
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, -8
  store i32 %70, i32* %68, align 4
  br label %138

71:                                               ; preds = %4
  %72 = load i32, i32* @MAX_QM_GLOBAL_RLS, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sdiv i32 %72, %73
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  br label %138

76:                                               ; preds = %4, %4
  %77 = load i32, i32* @ETH_NUM_MAC_FILTERS, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sdiv i32 %77, %78
  %80 = load i32*, i32** %8, align 8
  store i32 %79, i32* %80, align 4
  br label %138

81:                                               ; preds = %4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @PXP_NUM_ILT_RECORDS_K2, align 4
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @PXP_NUM_ILT_RECORDS_BB, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i32, i32* %10, align 4
  %91 = sdiv i32 %89, %90
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  br label %138

93:                                               ; preds = %4
  %94 = load i32, i32* @MAX_NUM_LL2_RX_QUEUES, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sdiv i32 %94, %95
  %97 = load i32*, i32** %8, align 8
  store i32 %96, i32* %97, align 4
  br label %138

98:                                               ; preds = %4, %4
  %99 = load i32, i32* @NUM_OF_GLOBAL_QUEUES, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sdiv i32 %99, %100
  %102 = load i32*, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  br label %138

103:                                              ; preds = %4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @RDMA_NUM_STATISTIC_COUNTERS_K2, align 4
  br label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @RDMA_NUM_STATISTIC_COUNTERS_BB, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = load i32, i32* %10, align 4
  %113 = sdiv i32 %111, %112
  %114 = load i32*, i32** %8, align 8
  store i32 %113, i32* %114, align 4
  br label %138

115:                                              ; preds = %4
  %116 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %117 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ECORE_PCI_ISCSI, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %115
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %124 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ECORE_PCI_FCOE, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32*, i32** %8, align 8
  store i32 0, i32* %130, align 4
  br label %133

131:                                              ; preds = %122, %115
  %132 = load i32*, i32** %8, align 8
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %131, %129
  br label %138

134:                                              ; preds = %4
  %135 = load i32*, i32** %8, align 8
  store i32 0, i32* %135, align 4
  br label %138

136:                                              ; preds = %4
  %137 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %137, i32* %5, align 4
  br label %197

138:                                              ; preds = %134, %133, %110, %98, %93, %88, %76, %71, %63, %51, %39, %27
  %139 = load i32, i32* %7, align 4
  switch i32 %139, label %187 [
    i32 141, label %140
  ]

140:                                              ; preds = %138
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = load i32*, i32** %9, align 8
  store i32 0, i32* %145, align 4
  br label %186

146:                                              ; preds = %140
  %147 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %148 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %147, i32 0, i32 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 4
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %155 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %9, align 8
  store i32 %156, i32* %157, align 4
  br label %185

158:                                              ; preds = %146
  %159 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %160 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @ECORE_PCI_ISCSI, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %167 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  br label %184

170:                                              ; preds = %158
  %171 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %172 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @ECORE_PCI_FCOE, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %170
  %178 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %179 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 2
  %182 = load i32*, i32** %9, align 8
  store i32 %181, i32* %182, align 4
  br label %183

183:                                              ; preds = %177, %170
  br label %184

184:                                              ; preds = %183, %165
  br label %185

185:                                              ; preds = %184, %153
  br label %186

186:                                              ; preds = %185, %144
  br label %195

187:                                              ; preds = %138
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %191 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %189, %192
  %194 = load i32*, i32** %9, align 8
  store i32 %193, i32* %194, align 4
  br label %195

195:                                              ; preds = %187, %186
  %196 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %195, %136
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @ECORE_IS_AH(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
