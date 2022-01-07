; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_update_mac_shadow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_update_mac_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_filter_ucast = type { i64, i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@MAC_ADDR_FORCED = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_FILTER_REMOVE = common dso_local global i64 0, align 8
@ECORE_ETH_VF_NUM_MAC_FILTERS = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MAC isn't configured\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_FILTER_REPLACE = common dso_local global i64 0, align 8
@ECORE_FILTER_FLUSH = common dso_local global i64 0, align 8
@ECORE_FILTER_ADD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Added MAC at %d entry in shadow\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"No available place for MAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_vf_info*, %struct.ecore_filter_ucast*)* @ecore_iov_vf_update_mac_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_vf_update_mac_shadow(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1, %struct.ecore_filter_ucast* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca %struct.ecore_filter_ucast*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %6, align 8
  store %struct.ecore_filter_ucast* %2, %struct.ecore_filter_ucast** %7, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @OSAL_MEM_ZERO(i8* %15, i32 %16)
  %18 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %19 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAC_ADDR_FORCED, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %178

30:                                               ; preds = %3
  %31 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %32 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ECORE_FILTER_REMOVE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %68, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @ECORE_ETH_VF_NUM_MAC_FILTERS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %43 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %51 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = call i32 @OSAL_MEMCMP(i8* %49, i8* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %41
  %57 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %58 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @OSAL_MEM_ZERO(i8* %64, i32 %65)
  br label %71

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %37

71:                                               ; preds = %56, %37
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @ECORE_ETH_VF_NUM_MAC_FILTERS, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %77 = load i32, i32* @ECORE_MSG_IOV, align 4
  %78 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %76, i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %178

80:                                               ; preds = %71
  br label %114

81:                                               ; preds = %30
  %82 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %83 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ECORE_FILTER_REPLACE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %89 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ECORE_FILTER_FLUSH, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %87, %81
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %109, %93
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @ECORE_ETH_VF_NUM_MAC_FILTERS, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %100 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* @ETH_ALEN, align 4
  %108 = call i32 @OSAL_MEM_ZERO(i8* %106, i32 %107)
  br label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %94

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112, %87
  br label %114

114:                                              ; preds = %113, %80
  %115 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %116 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ECORE_FILTER_ADD, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %122 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ECORE_FILTER_REPLACE, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %127, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %178

128:                                              ; preds = %120, %114
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %164, %128
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @ECORE_ETH_VF_NUM_MAC_FILTERS, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %167

133:                                              ; preds = %129
  %134 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %135 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* @ETH_ALEN, align 4
  %143 = call i32 @OSAL_MEMCMP(i8* %141, i8* %15, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %163, label %145

145:                                              ; preds = %133
  %146 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %147 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i8**, i8*** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %155 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* @ETH_ALEN, align 4
  %158 = call i32 @OSAL_MEMCPY(i8* %153, i8* %156, i32 %157)
  %159 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %160 = load i32, i32* @ECORE_MSG_IOV, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %159, i32 %160, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  br label %167

163:                                              ; preds = %133
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %129

167:                                              ; preds = %145, %129
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @ECORE_ETH_VF_NUM_MAC_FILTERS, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %167
  %172 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %173 = load i32, i32* @ECORE_MSG_IOV, align 4
  %174 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %172, i32 %173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %175 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %175, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %178

176:                                              ; preds = %167
  %177 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %177, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %178

178:                                              ; preds = %176, %171, %126, %75, %28
  %179 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OSAL_MEM_ZERO(i8*, i32) #2

declare dso_local i32 @OSAL_MEMCMP(i8*, i8*, i32) #2

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #2

declare dso_local i32 @OSAL_MEMCPY(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
