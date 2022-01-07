; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_config_glbl_rss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_config_glbl_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_rss_glb_config_cmd = type { %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8* }

@FW_RSS_GLB_CONFIG_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_MODE_MANUAL = common dso_local global i32 0, align 4
@FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_config_glbl_rss(%struct.adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fw_rss_glb_config_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 @memset(%struct.fw_rss_glb_config_cmd* %10, i32 0, i32 40)
  %12 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD, align 4
  %13 = call i32 @V_FW_CMD_OP(i32 %12)
  %14 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @cpu_to_be32(i32 %17)
  %19 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %10, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = call i32 @FW_LEN16(%struct.fw_rss_glb_config_cmd* byval(%struct.fw_rss_glb_config_cmd) align 8 %10)
  %21 = call i8* @cpu_to_be32(i32 %20)
  %22 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %10, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_MODE_MANUAL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @V_FW_RSS_GLB_CONFIG_CMD_MODE(i32 %27)
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %10, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  br label %53

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @V_FW_RSS_GLB_CONFIG_CMD_MODE(i32 %38)
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %10, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  br label %52

49:                                               ; preds = %33
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %57

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.adapter*, %struct.adapter** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @t4_wr_mbox(%struct.adapter* %54, i32 %55, %struct.fw_rss_glb_config_cmd* %10, i32 40, i32* null)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.fw_rss_glb_config_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_rss_glb_config_cmd* byval(%struct.fw_rss_glb_config_cmd) align 8) #1

declare dso_local i32 @V_FW_RSS_GLB_CONFIG_CMD_MODE(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_rss_glb_config_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
