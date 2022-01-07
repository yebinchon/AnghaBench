; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_update_vlan_shadow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_update_vlan_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ecore_filter_ucast = type { i64, i64 }

@ECORE_FILTER_REMOVE = common dso_local global i64 0, align 8
@ECORE_ETH_VF_NUM_VLAN_FILTERS = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"VF [%d] - Tries to remove a non-existing vlan\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_FILTER_REPLACE = common dso_local global i64 0, align 8
@ECORE_FILTER_FLUSH = common dso_local global i64 0, align 8
@VLAN_ADDR_FORCED = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_FILTER_ADD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"VF [%d] - Tries to configure more than %d vlan filters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_vf_info*, %struct.ecore_filter_ucast*)* @ecore_iov_vf_update_vlan_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_vf_update_vlan_shadow(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1, %struct.ecore_filter_ucast* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca %struct.ecore_filter_ucast*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %6, align 8
  store %struct.ecore_filter_ucast* %2, %struct.ecore_filter_ucast** %7, align 8
  %9 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %10 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ECORE_FILTER_REMOVE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %72

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %55, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ECORE_ETH_VF_NUM_VLAN_FILTERS, align 4
  %18 = add nsw i32 %17, 1
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %20
  %32 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %33 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %42 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %31
  %46 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %47 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %58

54:                                               ; preds = %31, %20
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %15

58:                                               ; preds = %45, %15
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @ECORE_ETH_VF_NUM_VLAN_FILTERS, align 4
  %61 = add nsw i32 %60, 1
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %65 = load i32, i32* @ECORE_MSG_IOV, align 4
  %66 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %67 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %64, i32 %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %70, i32* %4, align 4
  br label %188

71:                                               ; preds = %58
  br label %104

72:                                               ; preds = %3
  %73 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %74 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ECORE_FILTER_REPLACE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %80 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ECORE_FILTER_FLUSH, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %78, %72
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %99, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @ECORE_ETH_VF_NUM_VLAN_FILTERS, align 4
  %88 = add nsw i32 %87, 1
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %92 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %85

102:                                              ; preds = %85
  br label %103

103:                                              ; preds = %102, %78
  br label %104

104:                                              ; preds = %103, %71
  %105 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %106 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @VLAN_ADDR_FORCED, align 4
  %112 = shl i32 1, %111
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %116, i32* %4, align 4
  br label %188

117:                                              ; preds = %104
  %118 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %119 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ECORE_FILTER_ADD, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %125 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ECORE_FILTER_REPLACE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %186

129:                                              ; preds = %123, %117
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %167, %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @ECORE_ETH_VF_NUM_VLAN_FILTERS, align 4
  %133 = add nsw i32 %132, 1
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %170

135:                                              ; preds = %130
  %136 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %137 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %135
  br label %167

147:                                              ; preds = %135
  %148 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %149 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %157 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %160 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i64 %158, i64* %166, align 8
  br label %170

167:                                              ; preds = %146
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %130

170:                                              ; preds = %147, %130
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @ECORE_ETH_VF_NUM_VLAN_FILTERS, align 4
  %173 = add nsw i32 %172, 1
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %177 = load i32, i32* @ECORE_MSG_IOV, align 4
  %178 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %179 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @ECORE_ETH_VF_NUM_VLAN_FILTERS, align 4
  %182 = add nsw i32 %181, 1
  %183 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %176, i32 %177, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32 %182)
  %184 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %184, i32* %4, align 4
  br label %188

185:                                              ; preds = %170
  br label %186

186:                                              ; preds = %185, %123
  %187 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %186, %175, %115, %63
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
