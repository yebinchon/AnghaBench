; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_check_aq_errors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_check_aq_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, i32, %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@I40E_VF_ARQLEN1_ARQVFE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ARQ VF Error detected\0A\00", align 1
@I40E_VF_ARQLEN1_ARQOVFL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ARQ Overflow Error detected\0A\00", align 1
@I40E_VF_ARQLEN1_ARQCRIT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ARQ Critical Error detected\0A\00", align 1
@I40E_VF_ATQLEN1_ATQVFE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ASQ VF Error detected\0A\00", align 1
@I40E_VF_ATQLEN1_ATQOVFL_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"ASQ Overflow Error detected\0A\00", align 1
@I40E_VF_ATQLEN1_ATQCRIT_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"ASQ Critical Error detected\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"WARNING: Stopping VF!\0A\00", align 1
@IAVF_RESET_REQUIRED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_sc*)* @iavf_check_aq_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_check_aq_errors(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  %8 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %9 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %8, i32 0, i32 2
  store %struct.i40e_hw* %9, %struct.i40e_hw** %3, align 8
  %10 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %11 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @rd32(%struct.i40e_hw* %13, i32 %18)
  store i32 %19, i32* %5, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @I40E_VF_ARQLEN1_ARQVFE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @I40E_VF_ARQLEN1_ARQVFE_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %24, %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @I40E_VF_ARQLEN1_ARQOVFL_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @I40E_VF_ARQLEN1_ARQOVFL_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @I40E_VF_ARQLEN1_ARQCRIT_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @I40E_VF_ARQLEN1_ARQCRIT_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %48, %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %62 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @wr32(%struct.i40e_hw* %60, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %55
  %69 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %71 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @rd32(%struct.i40e_hw* %69, i32 %74)
  store i32 %75, i32* %5, align 4
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @I40E_VF_ATQLEN1_ATQVFE_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %68
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @I40E_VF_ATQLEN1_ATQVFE_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %87

87:                                               ; preds = %80, %68
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @I40E_VF_ATQLEN1_ATQOVFL_MASK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @I40E_VF_ATQLEN1_ATQOVFL_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %99

99:                                               ; preds = %92, %87
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @I40E_VF_ATQLEN1_ATQCRIT_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* @I40E_VF_ATQLEN1_ATQCRIT_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %111

111:                                              ; preds = %104, %99
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %117 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %118 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @wr32(%struct.i40e_hw* %116, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %115, %111
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @device_printf(i32 %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i32, i32* @IAVF_RESET_REQUIRED, align 4
  %131 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %132 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %134 = call i32 @iavf_stop(%struct.iavf_sc* %133)
  %135 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %136 = call i32 @iavf_request_reset(%struct.iavf_sc* %135)
  br label %137

137:                                              ; preds = %127, %124
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @EIO, align 4
  br label %143

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %141, %140 ], [ 0, %142 ]
  ret i32 %144
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @iavf_stop(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_request_reset(%struct.iavf_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
