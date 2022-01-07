; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_config_rss_lut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_config_rss_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.virtchnl_rss_lut = type { i32, i32*, i32 }

@IXL_RSS_VSI_LUT_SIZE = common dso_local global i32 0, align 4
@M_IAVF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to allocate msg memory for RSS lut msg.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IXL_RSS_VSI_LUT_ENTRY_MASK = common dso_local global i32 0, align 4
@VIRTCHNL_OP_CONFIG_RSS_LUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_config_rss_lut(%struct.iavf_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_sc*, align 8
  %4 = alloca %struct.virtchnl_rss_lut*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %3, align 8
  %10 = load i32, i32* @IXL_RSS_VSI_LUT_SIZE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 24, %13
  %15 = sub i64 %14, 1
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @M_IAVF, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.virtchnl_rss_lut* @malloc(i32 %17, i32 %18, i32 %21)
  store %struct.virtchnl_rss_lut* %22, %struct.virtchnl_rss_lut** %4, align 8
  %23 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %4, align 8
  %24 = icmp eq %struct.virtchnl_rss_lut* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %27 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %2, align 4
  br label %76

31:                                               ; preds = %1
  %32 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %33 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %4, align 8
  %38 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %4, align 8
  %41 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %63, %31
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %49 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = srem i32 %47, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @IXL_RSS_VSI_LUT_ENTRY_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %4, align 8
  %58 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %46
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %42

66:                                               ; preds = %42
  %67 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %68 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_LUT, align 4
  %69 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %4, align 8
  %70 = bitcast %struct.virtchnl_rss_lut* %69 to i32*
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @iavf_send_pf_msg(%struct.iavf_sc* %67, i32 %68, i32* %70, i32 %71)
  %73 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %4, align 8
  %74 = load i32, i32* @M_IAVF, align 4
  %75 = call i32 @free(%struct.virtchnl_rss_lut* %73, i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %66, %25
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.virtchnl_rss_lut* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_sc*, i32, i32*, i32) #1

declare dso_local i32 @free(%struct.virtchnl_rss_lut*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
