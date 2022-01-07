; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4vf_hw.c_t4vf_get_rss_glb_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4vf_hw.c_t4vf_get_rss_glb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rss_params }
%struct.rss_params = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_rss_glb_config_cmd = type { %struct.TYPE_10__, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FW_RSS_GLB_CONFIG_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_READ = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4
@F_FW_RSS_GLB_CONFIG_CMD_SYNMAPEN = common dso_local global i32 0, align 4
@F_FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV6 = common dso_local global i32 0, align 4
@F_FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV6 = common dso_local global i32 0, align 4
@F_FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV4 = common dso_local global i32 0, align 4
@F_FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV4 = common dso_local global i32 0, align 4
@F_FW_RSS_GLB_CONFIG_CMD_OFDMAPEN = common dso_local global i32 0, align 4
@F_FW_RSS_GLB_CONFIG_CMD_TNLMAPEN = common dso_local global i32 0, align 4
@F_FW_RSS_GLB_CONFIG_CMD_TNLALLLKP = common dso_local global i32 0, align 4
@F_FW_RSS_GLB_CONFIG_CMD_HASHTOEPLITZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_get_rss_glb_config(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.rss_params*, align 8
  %5 = alloca %struct.fw_rss_glb_config_cmd, align 8
  %6 = alloca %struct.fw_rss_glb_config_cmd, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store %struct.rss_params* %11, %struct.rss_params** %4, align 8
  %12 = call i32 @memset(%struct.fw_rss_glb_config_cmd* %5, i32 0, i32 24)
  %13 = load i32, i32* @FW_RSS_GLB_CONFIG_CMD, align 4
  %14 = call i32 @V_FW_CMD_OP(i32 %13)
  %15 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @F_FW_CMD_READ, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %5, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = call i32 @FW_LEN16(%struct.fw_rss_glb_config_cmd* byval(%struct.fw_rss_glb_config_cmd) align 8 %5)
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %5, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = call i32 @t4vf_wr_mbox(%struct.adapter* %24, %struct.fw_rss_glb_config_cmd* %5, i32 24, %struct.fw_rss_glb_config_cmd* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @FW_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %144

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %6, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  %37 = call i32 @G_FW_RSS_GLB_CONFIG_CMD_MODE(i32 %36)
  %38 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %39 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %41 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %140 [
    i32 128, label %43
  ]

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, %struct.fw_rss_glb_config_cmd* %6, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @be32_to_cpu(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @F_FW_RSS_GLB_CONFIG_CMD_SYNMAPEN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %55 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @F_FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV6, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %64 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @F_FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV6, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %73 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @F_FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV4, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %82 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @F_FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV4, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %91 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @F_FW_RSS_GLB_CONFIG_CMD_OFDMAPEN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %100 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 5
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @F_FW_RSS_GLB_CONFIG_CMD_TNLMAPEN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %109 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 6
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @F_FW_RSS_GLB_CONFIG_CMD_TNLALLLKP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %118 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 7
  store i32 %116, i32* %120, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @F_FW_RSS_GLB_CONFIG_CMD_HASHTOEPLITZ, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %127 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 8
  store i32 %125, i32* %129, align 4
  %130 = load %struct.rss_params*, %struct.rss_params** %4, align 8
  %131 = getelementptr inbounds %struct.rss_params, %struct.rss_params* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %43
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %144

139:                                              ; preds = %43
  br label %143

140:                                              ; preds = %31
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %144

143:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %140, %136, %29
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @memset(%struct.fw_rss_glb_config_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_rss_glb_config_cmd* byval(%struct.fw_rss_glb_config_cmd) align 8) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_rss_glb_config_cmd*, i32, %struct.fw_rss_glb_config_cmd*) #1

declare dso_local i32 @G_FW_RSS_GLB_CONFIG_CMD_MODE(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
