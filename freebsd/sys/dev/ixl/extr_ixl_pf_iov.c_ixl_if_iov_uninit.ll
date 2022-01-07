; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_if_iov_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_if_iov_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i64, %struct.ixl_vf*, i64, i32, %struct.ixl_vsi, %struct.i40e_hw }
%struct.ixl_vf = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ixl_vsi = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.i40e_hw = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"VF %d: %d released\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Unallocated total: %d\0A\00", align 1
@M_IXL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_if_iov_uninit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.ixl_vsi*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ixl_vf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.ixl_pf* @iflib_get_softc(i32 %10)
  store %struct.ixl_pf* %11, %struct.ixl_pf** %3, align 8
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %13 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %12, i32 0, i32 6
  store %struct.i40e_hw* %13, %struct.i40e_hw** %4, align 8
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %15 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %14, i32 0, i32 5
  store %struct.ixl_vsi* %15, %struct.ixl_vsi** %5, align 8
  %16 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %17 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %16, i32 0, i32 0
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %6, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %84, %1
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %22 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %87

25:                                               ; preds = %19
  %26 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %27 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %26, i32 0, i32 2
  %28 = load %struct.ixl_vf*, %struct.ixl_vf** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %28, i64 %30
  %32 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %25
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %38 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %39 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %38, i32 0, i32 2
  %40 = load %struct.ixl_vf*, %struct.ixl_vf** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %40, i64 %42
  %44 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @i40e_aq_delete_element(%struct.i40e_hw* %37, i64 %46, i32* null)
  br label %48

48:                                               ; preds = %36, %25
  %49 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %50 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %49, i32 0, i32 4
  %51 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %52 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %51, i32 0, i32 2
  %53 = load %struct.ixl_vf*, %struct.ixl_vf** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %53, i64 %55
  %57 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %56, i32 0, i32 1
  %58 = call i32 @ixl_pf_qmgr_release(i32* %50, %struct.TYPE_3__* %57)
  %59 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %60 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %59, i32 0, i32 2
  %61 = load %struct.ixl_vf*, %struct.ixl_vf** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %61, i64 %63
  %65 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %64, i32 0, i32 2
  %66 = call i32 @ixl_free_mac_filters(%struct.TYPE_4__* %65)
  %67 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %70 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %69, i32 0, i32 2
  %71 = load %struct.ixl_vf*, %struct.ixl_vf** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %71, i64 %73
  %75 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.ixl_pf*, i8*, i32, ...) @ixl_dbg_iov(%struct.ixl_pf* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %77)
  %79 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %80 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %81 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %80, i32 0, i32 4
  %82 = call i32 @ixl_pf_qmgr_get_num_free(i32* %81)
  %83 = call i32 (%struct.ixl_pf*, i8*, i32, ...) @ixl_dbg_iov(%struct.ixl_pf* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %48
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %19

87:                                               ; preds = %19
  %88 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %89 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %94 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %95 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @i40e_aq_delete_element(%struct.i40e_hw* %93, i64 %96, i32* null)
  %98 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %99 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %92, %87
  %101 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %102 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %107 = call i32 @ixl_config_pf_vsi_loopback(%struct.ixl_pf* %106, i32 0)
  br label %108

108:                                              ; preds = %105, %100
  %109 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %110 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %109, i32 0, i32 2
  %111 = load %struct.ixl_vf*, %struct.ixl_vf** %110, align 8
  store %struct.ixl_vf* %111, %struct.ixl_vf** %7, align 8
  %112 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %113 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %9, align 4
  %115 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %116 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %115, i32 0, i32 2
  store %struct.ixl_vf* null, %struct.ixl_vf** %116, align 8
  %117 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %118 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %130, %108
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load %struct.ixl_vf*, %struct.ixl_vf** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %124, i64 %126
  %128 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %127, i32 0, i32 0
  %129 = call i32 @sysctl_ctx_free(i32* %128)
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %119

133:                                              ; preds = %119
  %134 = load %struct.ixl_vf*, %struct.ixl_vf** %7, align 8
  %135 = load i32, i32* @M_IXL, align 4
  %136 = call i32 @free(%struct.ixl_vf* %134, i32 %135)
  ret void
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local i32 @i40e_aq_delete_element(%struct.i40e_hw*, i64, i32*) #1

declare dso_local i32 @ixl_pf_qmgr_release(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @ixl_free_mac_filters(%struct.TYPE_4__*) #1

declare dso_local i32 @ixl_dbg_iov(%struct.ixl_pf*, i8*, i32, ...) #1

declare dso_local i32 @ixl_pf_qmgr_get_num_free(i32*) #1

declare dso_local i32 @ixl_config_pf_vsi_loopback(%struct.ixl_pf*, i32) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @free(%struct.ixl_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
