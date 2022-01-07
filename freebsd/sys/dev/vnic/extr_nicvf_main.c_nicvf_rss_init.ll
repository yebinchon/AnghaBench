; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_rss_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_rss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i64, i32, %struct.nicvf_rss_info }
%struct.nicvf_rss_info = type { i32*, i32, i32, i32*, i64, i32 }

@CPI_ALG_NONE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RSS_IP_HASH_ENA = common dso_local global i32 0, align 4
@RSS_TCP_HASH_ENA = common dso_local global i32 0, align 4
@RSS_UDP_HASH_ENA = common dso_local global i32 0, align 4
@NIC_VNIC_RSS_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*)* @nicvf_rss_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_rss_init(%struct.nicvf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.nicvf_rss_info*, align 8
  %5 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  %6 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %7 = call i32 @nicvf_get_rss_size(%struct.nicvf* %6)
  %8 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %9 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %8, i32 0, i32 2
  store %struct.nicvf_rss_info* %9, %struct.nicvf_rss_info** %4, align 8
  %10 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CPI_ALG_NONE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  %17 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %18 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %20 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %92

22:                                               ; preds = %1
  %23 = load i32, i32* @TRUE, align 4
  %24 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %25 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %27 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 -18019411, i32* %29, align 4
  %30 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %31 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 -18019411, i32* %33, align 4
  %34 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %35 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 -18019411, i32* %37, align 4
  %38 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %39 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 -18019411, i32* %41, align 4
  %42 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %43 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32 -18019411, i32* %45, align 4
  %46 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %47 = call i32 @nicvf_set_rss_key(%struct.nicvf* %46)
  %48 = load i32, i32* @RSS_IP_HASH_ENA, align 4
  %49 = load i32, i32* @RSS_TCP_HASH_ENA, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @RSS_UDP_HASH_ENA, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %54 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %56 = load i32, i32* @NIC_VNIC_RSS_CFG, align 4
  %57 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %58 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @nicvf_reg_write(%struct.nicvf* %55, i32 %56, i32 %59)
  %61 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %62 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @fls(i32 %63)
  %65 = sub nsw i64 %64, 1
  %66 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %67 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %66, i32 0, i32 4
  store i64 %65, i64* %67, align 8
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %86, %22
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %71 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %77 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = srem i32 %75, %78
  %80 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %81 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %68

89:                                               ; preds = %68
  %90 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %91 = call i32 @nicvf_config_rss(%struct.nicvf* %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %15
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @nicvf_get_rss_size(%struct.nicvf*) #1

declare dso_local i32 @nicvf_set_rss_key(%struct.nicvf*) #1

declare dso_local i32 @nicvf_reg_write(%struct.nicvf*, i32, i32) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @nicvf_config_rss(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
