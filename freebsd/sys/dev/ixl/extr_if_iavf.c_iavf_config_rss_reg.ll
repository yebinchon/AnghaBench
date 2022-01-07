; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_config_rss_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_config_rss_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, %struct.ixl_vsi, %struct.i40e_hw }
%struct.ixl_vsi = type { i32 }
%struct.i40e_hw = type { i32 }

@IXL_RSS_KEY_SIZE_REG = common dso_local global i32 0, align 4
@IXL_DEFAULT_RSS_HENA_XL710 = common dso_local global i32 0, align 4
@IXL_RSS_VSI_LUT_SIZE = common dso_local global i32 0, align 4
@IXL_RSS_VF_LUT_ENTRY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"HLUT(%2d): %#010x\00", align 1
@I40E_FILTER_PCTYPE_FRAG_IPV6 = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV4_OTHER = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV4_TCP = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV4_UDP = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV6_OTHER = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV6_TCP = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV6_UDP = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_IPV4 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_IPV6 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_IPV6_EX = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_TCP_IPV4 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_TCP_IPV6 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_UDP_IPV4 = common dso_local global i32 0, align 4
@RSS_HASHTYPE_RSS_UDP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_sc*)* @iavf_config_rss_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_config_rss_reg(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  %14 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %15 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %14, i32 0, i32 2
  store %struct.i40e_hw* %15, %struct.i40e_hw** %3, align 8
  %16 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %17 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %16, i32 0, i32 1
  store %struct.ixl_vsi* %17, %struct.ixl_vsi** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* @IXL_RSS_KEY_SIZE_REG, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %23 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %28 = call i32 @I40E_VFQF_HENA(i32 0)
  %29 = call i32 @wr32(%struct.i40e_hw* %27, i32 %28, i32 0)
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %31 = call i32 @I40E_VFQF_HENA(i32 1)
  %32 = call i32 @wr32(%struct.i40e_hw* %30, i32 %31, i32 0)
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %34 = call i32 @ixl_flush(%struct.i40e_hw* %33)
  store i32 1, i32* %13, align 4
  br label %121

35:                                               ; preds = %1
  %36 = call i32 @ixl_get_default_rss_key(i32* %21)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %50, %35
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @IXL_RSS_KEY_SIZE_REG, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @I40E_VFQF_HKEY(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %21, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wr32(%struct.i40e_hw* %42, i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load i32, i32* @IXL_DEFAULT_RSS_HENA_XL710, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %56 = call i32 @I40E_VFQF_HENA(i32 0)
  %57 = call i64 @rd32(%struct.i40e_hw* %55, i32 %56)
  %58 = trunc i64 %57 to i32
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %60 = call i32 @I40E_VFQF_HENA(i32 1)
  %61 = call i64 @rd32(%struct.i40e_hw* %59, i32 %60)
  %62 = trunc i64 %61 to i32
  %63 = shl i32 %62, 32
  %64 = or i32 %58, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %69 = call i32 @I40E_VFQF_HENA(i32 0)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @wr32(%struct.i40e_hw* %68, i32 %69, i32 %70)
  %72 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %73 = call i32 @I40E_VFQF_HENA(i32 1)
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 32
  %76 = call i32 @wr32(%struct.i40e_hw* %72, i32 %73, i32 %75)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %113, %53
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @IXL_RSS_VSI_LUT_SIZE, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %84 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %5, align 4
  %91 = shl i32 %90, 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @IXL_RSS_VF_LUT_ENTRY_MASK, align 4
  %94 = and i32 %92, %93
  %95 = or i32 %91, %94
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, 3
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %112

99:                                               ; preds = %88
  %100 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 2
  %103 = call i32 @I40E_VFQF_HLUT(i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @wr32(%struct.i40e_hw* %100, i32 %103, i32 %104)
  %106 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %107 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @DDPRINTF(i32 %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %99, %88
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %77

118:                                              ; preds = %77
  %119 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %120 = call i32 @ixl_flush(%struct.i40e_hw* %119)
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %118, %26
  %122 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %13, align 4
  switch i32 %123, label %125 [
    i32 0, label %124
    i32 1, label %124
  ]

124:                                              ; preds = %121, %121
  ret void

125:                                              ; preds = %121
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #2

declare dso_local i32 @I40E_VFQF_HENA(i32) #2

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #2

declare dso_local i32 @ixl_get_default_rss_key(i32*) #2

declare dso_local i32 @I40E_VFQF_HKEY(i32) #2

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #2

declare dso_local i32 @I40E_VFQF_HLUT(i32) #2

declare dso_local i32 @DDPRINTF(i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
