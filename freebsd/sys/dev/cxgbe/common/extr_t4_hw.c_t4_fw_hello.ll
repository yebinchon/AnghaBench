; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_fw_hello.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_fw_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_hello_cmd = type { i32 }

@FW_CMD_HELLO_RETRIES = common dso_local global i32 0, align 4
@HELLO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@MASTER_CANT = common dso_local global i32 0, align 4
@MASTER_MUST = common dso_local global i32 0, align 4
@M_FW_HELLO_CMD_MBMASTER = common dso_local global i32 0, align 4
@FW_HELLO_CMD_STAGE_OS = common dso_local global i32 0, align 4
@F_FW_HELLO_CMD_CLEARINIT = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@A_PCIE_FW = common dso_local global i32 0, align 4
@F_PCIE_FW_ERR = common dso_local global i32 0, align 4
@F_FW_HELLO_CMD_ERR = common dso_local global i32 0, align 4
@DEV_STATE_ERR = common dso_local global i32 0, align 4
@F_FW_HELLO_CMD_INIT = common dso_local global i32 0, align 4
@DEV_STATE_INIT = common dso_local global i32 0, align 4
@DEV_STATE_UNINIT = common dso_local global i32 0, align 4
@FW_CMD_HELLO_TIMEOUT = common dso_local global i32 0, align 4
@F_PCIE_FW_INIT = common dso_local global i32 0, align 4
@M_PCIE_FW_MASTER = common dso_local global i32 0, align 4
@F_PCIE_FW_MASTER_VLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_fw_hello(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fw_hello_cmd, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* @FW_CMD_HELLO_RETRIES, align 4
  store i32 %19, i32* %16, align 4
  br label %20

20:                                               ; preds = %154, %79, %5
  %21 = call i32 @memset(%struct.fw_hello_cmd* %13, i32 0, i32 4)
  %22 = load i32, i32* @HELLO, align 4
  %23 = load i32, i32* @WRITE, align 4
  %24 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %13, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @INIT_CMD(i32 %25, i32 %22, i32 %23)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @MASTER_CANT, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @V_FW_HELLO_CMD_MASTERDIS(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MASTER_MUST, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @V_FW_HELLO_CMD_MASTERFORCE(i32 %35)
  %37 = or i32 %31, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @MASTER_MUST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %20
  %42 = load i32, i32* %8, align 4
  br label %45

43:                                               ; preds = %20
  %44 = load i32, i32* @M_FW_HELLO_CMD_MBMASTER, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @V_FW_HELLO_CMD_MBMASTER(i32 %46)
  %48 = or i32 %37, %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @V_FW_HELLO_CMD_MBASYNCNOT(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* @FW_HELLO_CMD_STAGE_OS, align 4
  %53 = call i32 @V_FW_HELLO_CMD_STAGE(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @F_FW_HELLO_CMD_CLEARINIT, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @cpu_to_be32(i32 %56)
  %58 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %13, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.adapter*, %struct.adapter** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @t4_wr_mbox(%struct.adapter* %59, i32 %60, %struct.fw_hello_cmd* %13, i32 4, %struct.fw_hello_cmd* %13)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @FW_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %45
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %16, align 4
  %78 = icmp sgt i32 %76, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %20

80:                                               ; preds = %75, %70
  %81 = load %struct.adapter*, %struct.adapter** %7, align 8
  %82 = load i32, i32* @A_PCIE_FW, align 4
  %83 = call i32 @t4_read_reg(%struct.adapter* %81, i32 %82)
  %84 = load i32, i32* @F_PCIE_FW_ERR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.adapter*, %struct.adapter** %7, align 8
  %89 = call i32 @t4_report_fw_error(%struct.adapter* %88)
  br label %90

90:                                               ; preds = %87, %80
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %6, align 4
  br label %196

92:                                               ; preds = %45
  %93 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %13, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @be32_to_cpu(i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @G_FW_HELLO_CMD_MBMASTER(i32 %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %121

100:                                              ; preds = %92
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @F_FW_HELLO_CMD_ERR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @DEV_STATE_ERR, align 4
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  br label %120

108:                                              ; preds = %100
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @F_FW_HELLO_CMD_INIT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @DEV_STATE_INIT, align 4
  %115 = load i32*, i32** %11, align 8
  store i32 %114, i32* %115, align 4
  br label %119

116:                                              ; preds = %108
  %117 = load i32, i32* @DEV_STATE_UNINIT, align 4
  %118 = load i32*, i32** %11, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %105
  br label %121

121:                                              ; preds = %120, %92
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @F_FW_HELLO_CMD_ERR, align 4
  %124 = load i32, i32* @F_FW_HELLO_CMD_INIT, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %122, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %194

128:                                              ; preds = %121
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %194

132:                                              ; preds = %128
  %133 = load i32, i32* @FW_CMD_HELLO_TIMEOUT, align 4
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %158, %132
  %135 = call i32 @msleep(i32 50)
  %136 = load i32, i32* %17, align 4
  %137 = sub nsw i32 %136, 50
  store i32 %137, i32* %17, align 4
  %138 = load %struct.adapter*, %struct.adapter** %7, align 8
  %139 = load i32, i32* @A_PCIE_FW, align 4
  %140 = call i32 @t4_read_reg(%struct.adapter* %138, i32 %139)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* @F_PCIE_FW_ERR, align 4
  %143 = load i32, i32* @F_PCIE_FW_INIT, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %134
  %148 = load i32, i32* %17, align 4
  %149 = icmp sle i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %16, align 4
  %153 = icmp sgt i32 %151, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %20

155:                                              ; preds = %150
  %156 = load i32, i32* @ETIMEDOUT, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %6, align 4
  br label %196

158:                                              ; preds = %147
  br label %134

159:                                              ; preds = %134
  %160 = load i32*, i32** %11, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %180

162:                                              ; preds = %159
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* @F_PCIE_FW_ERR, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* @DEV_STATE_ERR, align 4
  %169 = load i32*, i32** %11, align 8
  store i32 %168, i32* %169, align 4
  br label %179

170:                                              ; preds = %162
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* @F_PCIE_FW_INIT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32, i32* @DEV_STATE_INIT, align 4
  %177 = load i32*, i32** %11, align 8
  store i32 %176, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %170
  br label %179

179:                                              ; preds = %178, %167
  br label %180

180:                                              ; preds = %179, %159
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @M_PCIE_FW_MASTER, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* @F_PCIE_FW_MASTER_VLD, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load i32, i32* %18, align 4
  %191 = call i32 @G_PCIE_FW_MASTER(i32 %190)
  store i32 %191, i32* %15, align 4
  br label %192

192:                                              ; preds = %189, %184, %180
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193, %128, %121
  %195 = load i32, i32* %15, align 4
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %194, %155, %90
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local i32 @memset(%struct.fw_hello_cmd*, i32, i32) #1

declare dso_local i32 @INIT_CMD(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_HELLO_CMD_MASTERDIS(i32) #1

declare dso_local i32 @V_FW_HELLO_CMD_MASTERFORCE(i32) #1

declare dso_local i32 @V_FW_HELLO_CMD_MBMASTER(i32) #1

declare dso_local i32 @V_FW_HELLO_CMD_MBASYNCNOT(i32) #1

declare dso_local i32 @V_FW_HELLO_CMD_STAGE(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_hello_cmd*, i32, %struct.fw_hello_cmd*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_report_fw_error(%struct.adapter*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @G_FW_HELLO_CMD_MBMASTER(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @G_PCIE_FW_MASTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
