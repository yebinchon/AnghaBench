; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_config_rss_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_config_rss_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.virtchnl_rss_key = type { i32, i32, i32* }

@IXL_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@M_IAVF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to allocate msg memory for RSS key msg.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"config_rss: vsi_id %d, key_len %d\0A\00", align 1
@VIRTCHNL_OP_CONFIG_RSS_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_config_rss_key(%struct.iavf_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_sc*, align 8
  %4 = alloca %struct.virtchnl_rss_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %3, align 8
  %10 = load i32, i32* @IXL_RSS_KEY_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = call i32 @ixl_get_default_rss_key(i32* %13)
  %15 = load i32, i32* @IXL_RSS_KEY_SIZE, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = add i64 16, %18
  %20 = sub i64 %19, 1
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @M_IAVF, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.virtchnl_rss_key* @malloc(i32 %22, i32 %23, i32 %26)
  store %struct.virtchnl_rss_key* %27, %struct.virtchnl_rss_key** %4, align 8
  %28 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %4, align 8
  %29 = icmp eq %struct.virtchnl_rss_key* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %32 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

36:                                               ; preds = %1
  %37 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %38 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %4, align 8
  %43 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %4, align 8
  %46 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %4, align 8
  %48 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @bcopy(i32* %13, i32* %50, i32 %51)
  %53 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %54 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %4, align 8
  %55 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %4, align 8
  %58 = getelementptr inbounds %struct.virtchnl_rss_key, %struct.virtchnl_rss_key* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @iavf_dbg_vc(%struct.iavf_sc* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %62 = load i32, i32* @VIRTCHNL_OP_CONFIG_RSS_KEY, align 4
  %63 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %4, align 8
  %64 = bitcast %struct.virtchnl_rss_key* %63 to i32*
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @iavf_send_pf_msg(%struct.iavf_sc* %61, i32 %62, i32* %64, i32 %65)
  %67 = load %struct.virtchnl_rss_key*, %struct.virtchnl_rss_key** %4, align 8
  %68 = load i32, i32* @M_IAVF, align 4
  %69 = call i32 @free(%struct.virtchnl_rss_key* %67, i32 %68)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

70:                                               ; preds = %36, %30
  %71 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ixl_get_default_rss_key(i32*) #2

declare dso_local %struct.virtchnl_rss_key* @malloc(i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i32 @iavf_dbg_vc(%struct.iavf_sc*, i8*, i32, i32) #2

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_sc*, i32, i32*, i32) #2

declare dso_local i32 @free(%struct.virtchnl_rss_key*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
