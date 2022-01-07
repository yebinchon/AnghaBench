; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_config_rss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_config_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32*, i32*, i32 }
%struct.rss_cfg_msg = type { i64, i32, i32, i32*, i32 }

@NIC_PF_RSSI_0_4097_RQ = common dso_local global i32 0, align 4
@NIC_PF_CPI_0_2047_CFG = common dso_local global i32 0, align 4
@NIC_PF_MPI_0_2047_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, %struct.rss_cfg_msg*)* @nic_config_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_config_rss(%struct.nicpf* %0, %struct.rss_cfg_msg* %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca %struct.rss_cfg_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store %struct.rss_cfg_msg* %1, %struct.rss_cfg_msg** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %13 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %16 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %21 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %26 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %57, %2
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %33 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %29
  %38 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %39 = load i32, i32* @NIC_PF_RSSI_0_4097_RQ, align 4
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %40, 3
  %42 = or i32 %39, %41
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 3
  %45 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %46 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 7
  %53 = or i32 %44, %52
  %54 = call i32 @nic_reg_write(%struct.nicpf* %38, i32 %42, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %37
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %29

60:                                               ; preds = %29
  %61 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %62 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %65 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %70 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @pass1_silicon(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* @NIC_PF_CPI_0_2047_CFG, align 4
  store i32 %75, i32* %11, align 4
  br label %78

76:                                               ; preds = %60
  %77 = load i32, i32* @NIC_PF_MPI_0_2047_CFG, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %8, align 4
  %82 = shl i32 %81, 3
  %83 = or i32 %80, %82
  %84 = call i32 @nic_reg_read(%struct.nicpf* %79, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = and i64 %86, -15728641
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  %89 = load %struct.rss_cfg_msg*, %struct.rss_cfg_msg** %4, align 8
  %90 = getelementptr inbounds %struct.rss_cfg_msg, %struct.rss_cfg_msg* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = shl i32 %91, 20
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %8, align 4
  %98 = shl i32 %97, 3
  %99 = or i32 %96, %98
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @nic_reg_write(%struct.nicpf* %95, i32 %99, i32 %100)
  ret void
}

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

declare dso_local i64 @pass1_silicon(i32) #1

declare dso_local i32 @nic_reg_read(%struct.nicpf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
