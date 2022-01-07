; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_set_glob_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_set_glob_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ecore_rdma_glob_cfg }
%struct.ecore_rdma_glob_cfg = type { i64, i32, i64, i32, i64, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"dscp %d dscp en %d ecn %d ecn en %d vlan pri %d vlan_pri_en %d\0A\00", align 1
@ECORE_RDMA_DCSP_BIT_MASK = common dso_local global i32 0, align 4
@MAX_DSCP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid glob dscp %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_RDMA_DCSP_EN_BIT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid glob_dscp_en %d\0A\00", align 1
@ECORE_RDMA_ECN_BIT_MASK = common dso_local global i32 0, align 4
@INET_ECN_ECT_0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid glob ecn %d\0A\00", align 1
@ECORE_RDMA_ECN_EN_BIT_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid glob ecn en %d\0A\00", align 1
@ECORE_RDMA_VLAN_PRIO_BIT_MASK = common dso_local global i32 0, align 4
@MAX_VLAN_PRIO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid glob vlan pri %d\0A\00", align 1
@ECORE_RDMA_VLAN_PRIO_EN_BIT_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"invalid glob vlan pri en %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_set_glob_cfg(%struct.ecore_hwfn* %0, %struct.ecore_rdma_glob_cfg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_rdma_glob_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_rdma_glob_cfg, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_rdma_glob_cfg* %1, %struct.ecore_rdma_glob_cfg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %15 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %19 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %25 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @DP_VERBOSE(i32 %13, i32 %14, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %20, i64 %23, i32 %26, i64 %29, i32 %32)
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %35 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @OSAL_MEMCPY(%struct.ecore_rdma_glob_cfg* %8, %struct.ecore_rdma_glob_cfg* %37, i32 48)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ECORE_RDMA_DCSP_BIT_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %3
  %44 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MAX_DSCP, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %51 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %54 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @DP_ERR(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %57, i32* %4, align 4
  br label %195

58:                                               ; preds = %43
  %59 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %60 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %8, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %3
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @ECORE_RDMA_DCSP_EN_BIT_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %70 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %75 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %78 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = call i32 @DP_ERR(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %82, i32* %4, align 4
  br label %195

83:                                               ; preds = %68
  %84 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %85 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %8, i32 0, i32 1
  store i32 %86, i32* %87, align 8
  br label %88

88:                                               ; preds = %83, %63
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @ECORE_RDMA_ECN_BIT_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @INET_ECN_ECT_0, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %101 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %104 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @DP_ERR(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %105)
  %107 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %107, i32* %4, align 4
  br label %195

108:                                              ; preds = %93
  %109 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %110 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %8, i32 0, i32 2
  store i64 %111, i64* %112, align 8
  br label %113

113:                                              ; preds = %108, %88
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @ECORE_RDMA_ECN_EN_BIT_MASK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %113
  %119 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %120 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %125 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %128 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = call i32 @DP_ERR(i32 %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  %132 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %132, i32* %4, align 4
  br label %195

133:                                              ; preds = %118
  %134 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %135 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %8, i32 0, i32 3
  store i32 %136, i32* %137, align 8
  br label %138

138:                                              ; preds = %133, %113
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @ECORE_RDMA_VLAN_PRIO_BIT_MASK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %163

143:                                              ; preds = %138
  %144 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %145 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @MAX_VLAN_PRIO, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %151 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %154 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @DP_ERR(i32 %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %155)
  %157 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %157, i32* %4, align 4
  br label %195

158:                                              ; preds = %143
  %159 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %160 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %8, i32 0, i32 4
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %158, %138
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @ECORE_RDMA_VLAN_PRIO_EN_BIT_MASK, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %163
  %169 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %170 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %175 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %178 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = call i32 @DP_ERR(i32 %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %180)
  %182 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %182, i32* %4, align 4
  br label %195

183:                                              ; preds = %168
  %184 = load %struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg** %6, align 8
  %185 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.ecore_rdma_glob_cfg, %struct.ecore_rdma_glob_cfg* %8, i32 0, i32 5
  store i32 %186, i32* %187, align 8
  br label %188

188:                                              ; preds = %183, %163
  %189 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %190 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %189, i32 0, i32 0
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = call i32 @OSAL_MEMCPY(%struct.ecore_rdma_glob_cfg* %192, %struct.ecore_rdma_glob_cfg* %8, i32 48)
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %188, %173, %149, %123, %99, %73, %49
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @DP_VERBOSE(i32, i32, i8*, i64, i32, i64, i32, i64, i32) #1

declare dso_local i32 @OSAL_MEMCPY(%struct.ecore_rdma_glob_cfg*, %struct.ecore_rdma_glob_cfg*, i32) #1

declare dso_local i32 @DP_ERR(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
