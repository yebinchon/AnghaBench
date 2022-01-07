; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_config_vi_rss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_config_vi_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_rss_vi_config_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@FW_RSS_VI_CONFIG_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_config_vi_rss(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fw_rss_vi_config_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = call i32 @memset(%struct.fw_rss_vi_config_cmd* %15, i32 0, i32 40)
  %17 = load i32, i32* @FW_RSS_VI_CONFIG_CMD, align 4
  %18 = call i32 @V_FW_CMD_OP(i32 %17)
  %19 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @V_FW_RSS_VI_CONFIG_CMD_VIID(i32 %23)
  %25 = or i32 %22, %24
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, %struct.fw_rss_vi_config_cmd* %15, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = call i32 @FW_LEN16(%struct.fw_rss_vi_config_cmd* byval(%struct.fw_rss_vi_config_cmd) align 8 %15)
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, %struct.fw_rss_vi_config_cmd* %15, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @V_FW_RSS_VI_CONFIG_CMD_DEFAULTQ(i32 %32)
  %34 = or i32 %31, %33
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, %struct.fw_rss_vi_config_cmd* %15, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @V_FW_RSS_VI_CONFIG_CMD_SECRETKEYIDX(i32 %39)
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, %struct.fw_rss_vi_config_cmd* %15, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, %struct.fw_rss_vi_config_cmd* %15, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.adapter*, %struct.adapter** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @t4_wr_mbox(%struct.adapter* %50, i32 %51, %struct.fw_rss_vi_config_cmd* %15, i32 40, i32* null)
  ret i32 %52
}

declare dso_local i32 @memset(%struct.fw_rss_vi_config_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @V_FW_RSS_VI_CONFIG_CMD_VIID(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_rss_vi_config_cmd* byval(%struct.fw_rss_vi_config_cmd) align 8) #1

declare dso_local i32 @V_FW_RSS_VI_CONFIG_CMD_DEFAULTQ(i32) #1

declare dso_local i32 @V_FW_RSS_VI_CONFIG_CMD_SECRETKEYIDX(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_rss_vi_config_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
