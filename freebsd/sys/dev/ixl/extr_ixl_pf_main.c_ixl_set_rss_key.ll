; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_set_rss_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_set_rss_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.ixl_vsi, %struct.i40e_hw }
%struct.ixl_vsi = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.i40e_aqc_get_set_rss_key_data = type { i32 }

@IXL_RSS_KEY_SIZE_REG = common dso_local global i32 0, align 4
@I40E_MAC_X722 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"i40e_aq_set_rss_key status %s, error %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_set_rss_key(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_aqc_get_set_rss_key_data, align 4
  %10 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %12 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %11, i32 0, i32 2
  store %struct.i40e_hw* %12, %struct.i40e_hw** %3, align 8
  %13 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %14 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %13, i32 0, i32 1
  store %struct.ixl_vsi* %14, %struct.ixl_vsi** %4, align 8
  %15 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %16 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @IXL_RSS_KEY_SIZE_REG, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = call i32 @ixl_get_default_rss_key(i32* %21)
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @I40E_MAC_X722, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %1
  %30 = call i32 @bcopy(i32* %21, %struct.i40e_aqc_get_set_rss_key_data* %9, i32 52)
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %32 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %33 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @i40e_aq_set_rss_key(%struct.i40e_hw* %31, i32 %34, %struct.i40e_aqc_get_set_rss_key_data* %9)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @i40e_stat_str(%struct.i40e_hw* %40, i32 %41)
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %45 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @i40e_aq_str(%struct.i40e_hw* %43, i32 %47)
  %49 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %38, %29
  br label %69

51:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @IXL_RSS_KEY_SIZE_REG, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @I40E_PFQF_HKEY(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %21, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %57, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %52

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %70)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ixl_get_default_rss_key(i32*) #2

declare dso_local i32 @bcopy(i32*, %struct.i40e_aqc_get_set_rss_key_data*, i32) #2

declare dso_local i32 @i40e_aq_set_rss_key(%struct.i40e_hw*, i32, %struct.i40e_aqc_get_set_rss_key_data*) #2

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #2

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #2

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #2

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #2

declare dso_local i32 @I40E_PFQF_HKEY(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
