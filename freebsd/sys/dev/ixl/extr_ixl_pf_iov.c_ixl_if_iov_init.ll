; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_if_iov_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_if_iov_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.TYPE_5__*, i64, i32, %struct.ixl_vsi, %struct.i40e_hw }
%struct.TYPE_5__ = type { i32 }
%struct.ixl_vsi = type { i32, i32 }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@M_IXL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"i40e_aq_add_veb failed; status %s error %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_if_iov_init(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ixl_pf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_hw*, align 8
  %11 = alloca %struct.ixl_vsi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.ixl_pf* @iflib_get_softc(i32 %15)
  store %struct.ixl_pf* %16, %struct.ixl_pf** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @iflib_get_dev(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  %20 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %19, i32 0, i32 5
  store %struct.i40e_hw* %20, %struct.i40e_hw** %10, align 8
  %21 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  %22 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %21, i32 0, i32 4
  store %struct.ixl_vsi* %22, %struct.ixl_vsi** %11, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @M_IXL, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.TYPE_5__* @malloc(i32 %26, i32 %27, i32 %30)
  %32 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  %33 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %32, i32 0, i32 1
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %33, align 8
  %34 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  %35 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp eq %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %14, align 4
  br label %102

40:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  %47 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @sysctl_ctx_init(i32* %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %59 = load %struct.ixl_vsi*, %struct.ixl_vsi** %11, align 8
  %60 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ixl_vsi*, %struct.ixl_vsi** %11, align 8
  %63 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FALSE, align 4
  %66 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  %67 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %66, i32 0, i32 3
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @i40e_aq_add_veb(%struct.i40e_hw* %58, i32 %61, i32 %64, i32 1, i32 %65, i32* %67, i32 %68, i32* null)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @I40E_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %57
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %75 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @i40e_stat_str(%struct.i40e_hw* %79, i32 %80)
  %82 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @i40e_aq_str(%struct.i40e_hw* %82, i32 %83)
  %85 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %84)
  br label %102

86:                                               ; preds = %57
  %87 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  %88 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  %93 = call i32 @ixl_config_pf_vsi_loopback(%struct.ixl_pf* %92, i32 1)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.ixl_vsi*, %struct.ixl_vsi** %11, align 8
  %96 = call i32 @ixl_del_default_hw_filters(%struct.ixl_vsi* %95)
  %97 = load %struct.ixl_vsi*, %struct.ixl_vsi** %11, align 8
  %98 = call i32 @ixl_reconfigure_filters(%struct.ixl_vsi* %97)
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  %101 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %4, align 4
  br label %111

102:                                              ; preds = %73, %38
  %103 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  %104 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* @M_IXL, align 4
  %107 = call i32 @free(%struct.TYPE_5__* %105, i32 %106)
  %108 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  %109 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %108, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %109, align 8
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %102, %94
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.TYPE_5__* @malloc(i32, i32, i32) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32 @i40e_aq_add_veb(%struct.i40e_hw*, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @ixl_config_pf_vsi_loopback(%struct.ixl_pf*, i32) #1

declare dso_local i32 @ixl_del_default_hw_filters(%struct.ixl_vsi*) #1

declare dso_local i32 @ixl_reconfigure_filters(%struct.ixl_vsi*) #1

declare dso_local i32 @free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
