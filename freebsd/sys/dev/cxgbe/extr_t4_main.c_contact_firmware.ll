; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_contact_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_contact_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i64, i32, i32 }
%struct.fw_info = type { %struct.fw_h }
%struct.fw_h = type { i32 }
%struct.fw_hdr = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"unable to look up firmware information for chip %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M_CXGBE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"unable to read firmware header from card's flash: %d\0A\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@MASTER_MAY = common dso_local global i32 0, align 4
@DEV_STATE_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"failed to connect to the firmware: %d, %d.  PCIE_FW 0x%08x\0A\00", align 1
@A_PCIE_FW = common dso_local global i32 0, align 4
@FW_HDR_FLAGS_RESET_HALT = common dso_local global i32 0, align 4
@FW_OK = common dso_local global i32 0, align 4
@MASTER_PF = common dso_local global i32 0, align 4
@DEV_STATE_UNINIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [84 x i8] c"couldn't be master(%d), device not already initialized either(%d).  PCIE_FW 0x%08x\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"PF%d is master, device state %d.  PCIE_FW 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pf%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @contact_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contact_firmware(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_info*, align 8
  %8 = alloca %struct.fw_hdr*, align 8
  %9 = alloca %struct.fw_h*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = call i32 @chip_id(%struct.adapter* %10)
  %12 = call %struct.fw_info* @find_fw_info(i32 %11)
  store %struct.fw_info* %12, %struct.fw_info** %7, align 8
  %13 = load %struct.fw_info*, %struct.fw_info** %7, align 8
  %14 = icmp eq %struct.fw_info* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = call i32 @chip_id(%struct.adapter* %19)
  %21 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %18, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %2, align 4
  br label %186

23:                                               ; preds = %1
  %24 = load %struct.fw_info*, %struct.fw_info** %7, align 8
  %25 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %24, i32 0, i32 0
  store %struct.fw_h* %25, %struct.fw_h** %9, align 8
  %26 = load i32, i32* @M_CXGBE, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.fw_hdr* @malloc(i32 4, i32 %26, i32 %29)
  store %struct.fw_hdr* %30, %struct.fw_hdr** %8, align 8
  br label %31

31:                                               ; preds = %53, %23
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = load %struct.fw_hdr*, %struct.fw_hdr** %8, align 8
  %34 = call i32 @t4_get_fw_hdr(%struct.adapter* %32, %struct.fw_hdr* %33)
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %159

44:                                               ; preds = %31
  %45 = load %struct.adapter*, %struct.adapter** %3, align 8
  %46 = load %struct.fw_hdr*, %struct.fw_hdr** %8, align 8
  %47 = bitcast %struct.fw_hdr* %46 to %struct.fw_h*
  %48 = load %struct.fw_h*, %struct.fw_h** %9, align 8
  %49 = call i32 @install_kld_firmware(%struct.adapter* %45, %struct.fw_h* %47, %struct.fw_h* %48, i8* null, i32* %5)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ERESTART, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %31

54:                                               ; preds = %44
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %159

58:                                               ; preds = %54
  %59 = load %struct.adapter*, %struct.adapter** %3, align 8
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MASTER_MAY, align 4
  %67 = call i32 @t4_fw_hello(%struct.adapter* %59, i32 %62, i32 %65, i32 %66, i32* %6)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @DEV_STATE_ERR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70, %58
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  %77 = load %struct.adapter*, %struct.adapter** %3, align 8
  %78 = getelementptr inbounds %struct.adapter, %struct.adapter* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.adapter*, %struct.adapter** %3, align 8
  %83 = load i32, i32* @A_PCIE_FW, align 4
  %84 = call i32 @t4_read_reg(%struct.adapter* %82, i32 %83)
  %85 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81, i32 %84)
  br label %159

86:                                               ; preds = %70
  %87 = load %struct.fw_hdr*, %struct.fw_hdr** %8, align 8
  %88 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @be32toh(i32 %89)
  %91 = load i32, i32* @FW_HDR_FLAGS_RESET_HALT, align 4
  %92 = and i32 %90, %91
  %93 = call i32 @MPASS(i32 %92)
  %94 = load i32, i32* @FW_OK, align 4
  %95 = load %struct.adapter*, %struct.adapter** %3, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.adapter*, %struct.adapter** %3, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %86
  %105 = load i32, i32* @MASTER_PF, align 4
  %106 = load %struct.adapter*, %struct.adapter** %3, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.adapter*, %struct.adapter** %3, align 8
  %111 = load %struct.fw_hdr*, %struct.fw_hdr** %8, align 8
  %112 = bitcast %struct.fw_hdr* %111 to %struct.fw_h*
  %113 = load %struct.fw_h*, %struct.fw_h** %9, align 8
  %114 = call i32 @install_kld_firmware(%struct.adapter* %110, %struct.fw_h* %112, %struct.fw_h* %113, i8* null, i32* %5)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @ERESTART, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %124

119:                                              ; preds = %104
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %159

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %118
  br label %158

125:                                              ; preds = %86
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @DEV_STATE_UNINIT, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load %struct.adapter*, %struct.adapter** %3, align 8
  %131 = getelementptr inbounds %struct.adapter, %struct.adapter* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.adapter*, %struct.adapter** %3, align 8
  %136 = load i32, i32* @A_PCIE_FW, align 4
  %137 = call i32 @t4_read_reg(%struct.adapter* %135, i32 %136)
  %138 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %132, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %134, i32 %137)
  %139 = load i32, i32* @EPROTO, align 4
  store i32 %139, i32* %4, align 4
  br label %159

140:                                              ; preds = %125
  %141 = load %struct.adapter*, %struct.adapter** %3, align 8
  %142 = getelementptr inbounds %struct.adapter, %struct.adapter* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.adapter*, %struct.adapter** %3, align 8
  %147 = load i32, i32* @A_PCIE_FW, align 4
  %148 = call i32 @t4_read_reg(%struct.adapter* %146, i32 %147)
  %149 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %143, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %144, i32 %145, i32 %148)
  %150 = load %struct.adapter*, %struct.adapter** %3, align 8
  %151 = getelementptr inbounds %struct.adapter, %struct.adapter* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @snprintf(i32 %152, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  %155 = load %struct.adapter*, %struct.adapter** %3, align 8
  %156 = getelementptr inbounds %struct.adapter, %struct.adapter* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %140
  br label %158

158:                                              ; preds = %157, %124
  br label %159

159:                                              ; preds = %158, %129, %122, %74, %57, %38
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %159
  %163 = load %struct.adapter*, %struct.adapter** %3, align 8
  %164 = getelementptr inbounds %struct.adapter, %struct.adapter* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @FW_OK, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %162
  %170 = load %struct.adapter*, %struct.adapter** %3, align 8
  %171 = load %struct.adapter*, %struct.adapter** %3, align 8
  %172 = getelementptr inbounds %struct.adapter, %struct.adapter* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @t4_fw_bye(%struct.adapter* %170, i32 %173)
  %175 = load i32, i32* @FW_OK, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.adapter*, %struct.adapter** %3, align 8
  %178 = getelementptr inbounds %struct.adapter, %struct.adapter* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %169, %162, %159
  %182 = load %struct.fw_hdr*, %struct.fw_hdr** %8, align 8
  %183 = load i32, i32* @M_CXGBE, align 4
  %184 = call i32 @free(%struct.fw_hdr* %182, i32 %183)
  %185 = load i32, i32* %4, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %181, %15
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.fw_info* @find_fw_info(i32) #1

declare dso_local i32 @chip_id(%struct.adapter*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local %struct.fw_hdr* @malloc(i32, i32, i32) #1

declare dso_local i32 @t4_get_fw_hdr(%struct.adapter*, %struct.fw_hdr*) #1

declare dso_local i32 @install_kld_firmware(%struct.adapter*, %struct.fw_h*, %struct.fw_h*, i8*, i32*) #1

declare dso_local i32 @t4_fw_hello(%struct.adapter*, i32, i32, i32, i32*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @t4_fw_bye(%struct.adapter*, i32) #1

declare dso_local i32 @free(%struct.fw_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
