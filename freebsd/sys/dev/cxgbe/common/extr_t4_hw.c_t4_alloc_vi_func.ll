; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_alloc_vi_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_alloc_vi_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.fw_vi_cmd = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@FW_VI_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4
@F_FW_CMD_EXEC = common dso_local global i32 0, align 4
@F_FW_VI_CMD_ALLOC = common dso_local global i32 0, align 4
@F_FW_VI_CMD_NORSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_alloc_vi_func(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8, i32* %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.adapter*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.fw_vi_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  %28 = call i32 @memset(%struct.fw_vi_cmd* %27, i32 0, i32 56)
  %29 = load i32, i32* @FW_VI_CMD, align 4
  %30 = call i32 @V_FW_CMD_OP(i32 %29)
  %31 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @F_FW_CMD_EXEC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @V_FW_VI_CMD_PFN(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @V_FW_VI_CMD_VFN(i32 %40)
  %42 = or i32 %39, %41
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 10
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @F_FW_VI_CMD_ALLOC, align 4
  %46 = call i32 @FW_LEN16(%struct.fw_vi_cmd* byval(%struct.fw_vi_cmd) align 8 %27)
  %47 = or i32 %45, %46
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %25, align 4
  %51 = call i32 @V_FW_VI_CMD_TYPE(i32 %50)
  %52 = load i32, i32* %24, align 4
  %53 = call i32 @V_FW_VI_CMD_FUNC(i32 %52)
  %54 = or i32 %51, %53
  %55 = call i32 @cpu_to_be16(i32 %54)
  %56 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 8
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @V_FW_VI_CMD_PORTID(i32 %57)
  %59 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 9
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %19, align 4
  %61 = sub i32 %60, 1
  %62 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load i32*, i32** %21, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %12
  %66 = load i32, i32* @F_FW_VI_CMD_NORSS, align 4
  %67 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %12
  %69 = load %struct.adapter*, %struct.adapter** %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @t4_wr_mbox(%struct.adapter* %69, i32 %70, %struct.fw_vi_cmd* %27, i32 56, %struct.fw_vi_cmd* %27)
  store i32 %71, i32* %26, align 4
  %72 = load i32, i32* %26, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %26, align 4
  store i32 %75, i32* %13, align 4
  br label %165

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @be16_to_cpu(i32 %78)
  %80 = call i32 @G_FW_VI_CMD_VIID(i32 %79)
  store i32 %80, i32* %26, align 4
  %81 = load i32*, i32** %20, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %114

83:                                               ; preds = %76
  %84 = load i32*, i32** %20, align 8
  %85 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcpy(i32* %84, i32 %86, i32 4)
  %88 = load i32, i32* %19, align 4
  switch i32 %88, label %113 [
    i32 5, label %89
    i32 4, label %95
    i32 3, label %101
    i32 2, label %107
  ]

89:                                               ; preds = %83
  %90 = load i32*, i32** %20, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 24
  %92 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @memcpy(i32* %91, i32 %93, i32 4)
  br label %95

95:                                               ; preds = %83, %89
  %96 = load i32*, i32** %20, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 18
  %98 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(i32* %97, i32 %99, i32 4)
  br label %101

101:                                              ; preds = %83, %95
  %102 = load i32*, i32** %20, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 12
  %104 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @memcpy(i32* %103, i32 %105, i32 4)
  br label %107

107:                                              ; preds = %83, %101
  %108 = load i32*, i32** %20, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 6
  %110 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memcpy(i32* %109, i32 %111, i32 4)
  br label %113

113:                                              ; preds = %107, %83
  br label %114

114:                                              ; preds = %113, %76
  %115 = load i32*, i32** %21, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @be16_to_cpu(i32 %119)
  %121 = call i32 @G_FW_VI_CMD_RSSSIZE(i32 %120)
  %122 = load i32*, i32** %21, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %114
  %124 = load i32*, i32** %22, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %143

126:                                              ; preds = %123
  %127 = load %struct.adapter*, %struct.adapter** %14, align 8
  %128 = getelementptr inbounds %struct.adapter, %struct.adapter* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @be32_to_cpu(i8* %134)
  %136 = call i32 @G_FW_VI_CMD_VFVLD(i32 %135)
  br label %140

137:                                              ; preds = %126
  %138 = load i32, i32* %26, align 4
  %139 = call i32 @G_FW_VIID_VIVLD(i32 %138)
  br label %140

140:                                              ; preds = %137, %132
  %141 = phi i32 [ %136, %132 ], [ %139, %137 ]
  %142 = load i32*, i32** %22, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %123
  %144 = load i32*, i32** %23, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %163

146:                                              ; preds = %143
  %147 = load %struct.adapter*, %struct.adapter** %14, align 8
  %148 = getelementptr inbounds %struct.adapter, %struct.adapter* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.fw_vi_cmd, %struct.fw_vi_cmd* %27, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @be32_to_cpu(i8* %154)
  %156 = call i32 @G_FW_VI_CMD_VIN(i32 %155)
  br label %160

157:                                              ; preds = %146
  %158 = load i32, i32* %26, align 4
  %159 = call i32 @G_FW_VIID_VIN(i32 %158)
  br label %160

160:                                              ; preds = %157, %152
  %161 = phi i32 [ %156, %152 ], [ %159, %157 ]
  %162 = load i32*, i32** %23, align 8
  store i32 %161, i32* %162, align 4
  br label %163

163:                                              ; preds = %160, %143
  %164 = load i32, i32* %26, align 4
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %163, %74
  %166 = load i32, i32* %13, align 4
  ret i32 %166
}

declare dso_local i32 @memset(%struct.fw_vi_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @V_FW_VI_CMD_PFN(i32) #1

declare dso_local i32 @V_FW_VI_CMD_VFN(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_vi_cmd* byval(%struct.fw_vi_cmd) align 8) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @V_FW_VI_CMD_TYPE(i32) #1

declare dso_local i32 @V_FW_VI_CMD_FUNC(i32) #1

declare dso_local i32 @V_FW_VI_CMD_PORTID(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_vi_cmd*, i32, %struct.fw_vi_cmd*) #1

declare dso_local i32 @G_FW_VI_CMD_VIID(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @G_FW_VI_CMD_RSSSIZE(i32) #1

declare dso_local i32 @G_FW_VI_CMD_VFVLD(i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @G_FW_VIID_VIVLD(i32) #1

declare dso_local i32 @G_FW_VI_CMD_VIN(i32) #1

declare dso_local i32 @G_FW_VIID_VIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
