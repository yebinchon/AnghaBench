; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_get_dev_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_get_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.ecore_dev* }
%struct.ecore_dev = type { i32, i32, i32, i32, i32, %struct.ecore_hwfn*, i8*, i8*, i8*, i32 }
%struct.ecore_ptt = type { i32 }

@PCICFG_VENDOR_ID_OFFSET = common dso_local global i32 0, align 4
@PCICFG_DEVICE_ID_OFFSET = common dso_local global i32 0, align 4
@ECORE_DEV_ID_MASK = common dso_local global i32 0, align 4
@ECORE_DEV_TYPE_BB = common dso_local global i32 0, align 4
@ECORE_DEV_TYPE_AH = common dso_local global i32 0, align 4
@ECORE_DEV_TYPE_E5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown device id 0x%x\0A\00", align 1
@ECORE_ABORTED = common dso_local global i32 0, align 4
@MISCS_REG_CHIP_NUM = common dso_local global i32 0, align 4
@CHIP_NUM = common dso_local global i32 0, align 4
@MISCS_REG_CHIP_REV = common dso_local global i32 0, align 4
@CHIP_REV = common dso_local global i32 0, align 4
@MISCS_REG_CMT_ENABLED_FOR_PAIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"device in CMT mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"device on emul - assume no CMT\0A\00", align 1
@MISCS_REG_CHIP_TEST_REG = common dso_local global i32 0, align 4
@CHIP_BOND_ID = common dso_local global i32 0, align 4
@MISCS_REG_CHIP_METAL = common dso_local global i32 0, align 4
@CHIP_METAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"Chip details - %s %c%d, Num: %04x Rev: %02x Bond id: %02x Metal: %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"AH\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"The chip type/rev (BB A0) is not supported!\0A\00", align 1
@MISCS_REG_PLL_MAIN_CTRL_4 = common dso_local global i32 0, align 4
@MISCS_REG_ECO_RESERVED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Emulation: Running on a FULL build\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Emulation: Running on a REDUCED build\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_get_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_get_dev_info(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 1
  %11 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  store %struct.ecore_dev* %11, %struct.ecore_dev** %6, align 8
  %12 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %13 = load i32, i32* @PCICFG_VENDOR_ID_OFFSET, align 4
  %14 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %14, i32 0, i32 0
  %16 = call i32 @OSAL_PCI_READ_CONFIG_WORD(%struct.ecore_dev* %12, i32 %13, i32* %15)
  %17 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %18 = load i32, i32* @PCICFG_DEVICE_ID_OFFSET, align 4
  %19 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %19, i32 0, i32 1
  %21 = call i32 @OSAL_PCI_READ_CONFIG_WORD(%struct.ecore_dev* %17, i32 %18, i32* %20)
  %22 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ECORE_DEV_ID_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %40 [
    i32 129, label %28
    i32 130, label %32
    i32 128, label %36
  ]

28:                                               ; preds = %2
  %29 = load i32, i32* @ECORE_DEV_TYPE_BB, align 4
  %30 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  br label %47

32:                                               ; preds = %2
  %33 = load i32, i32* @ECORE_DEV_TYPE_AH, align 4
  %34 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %35 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  br label %47

36:                                               ; preds = %2
  %37 = load i32, i32* @ECORE_DEV_TYPE_E5, align 4
  %38 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %39 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  br label %47

40:                                               ; preds = %2
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %43 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %41, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ECORE_ABORTED, align 4
  store i32 %46, i32* %3, align 4
  br label %195

47:                                               ; preds = %36, %32, %28
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %49 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %50 = load i32, i32* @MISCS_REG_CHIP_NUM, align 4
  %51 = call i32 @ecore_rd(%struct.ecore_hwfn* %48, %struct.ecore_ptt* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @CHIP_NUM, align 4
  %54 = call i64 @GET_FIELD(i32 %52, i32 %53)
  %55 = trunc i64 %54 to i32
  %56 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %57 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %59 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %60 = load i32, i32* @MISCS_REG_CHIP_REV, align 4
  %61 = call i32 @ecore_rd(%struct.ecore_hwfn* %58, %struct.ecore_ptt* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @CHIP_REV, align 4
  %64 = call i64 @GET_FIELD(i32 %62, i32 %63)
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %67 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %66, i32 0, i32 8
  store i8* %65, i8** %67, align 8
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %69 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %70 = load i32, i32* @MISCS_REG_CMT_ENABLED_FOR_PAIR, align 4
  %71 = call i32 @ecore_rd(%struct.ecore_hwfn* %68, %struct.ecore_ptt* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %74 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 1, %75
  %77 = and i32 %72, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %47
  %80 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %81 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %80, i32 0, i32 5
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %81, align 8
  %83 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %82, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %85 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %84, i32 0, i32 3
  store i32 2, i32* %85, align 4
  br label %89

86:                                               ; preds = %47
  %87 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %88 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %87, i32 0, i32 3
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %79
  %90 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %91 = call i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %94, i32 0, i32 5
  %96 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %95, align 8
  %97 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %96, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %99 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %98, i32 0, i32 3
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %89
  %101 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %102 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %103 = load i32, i32* @MISCS_REG_CHIP_TEST_REG, align 4
  %104 = call i32 @ecore_rd(%struct.ecore_hwfn* %101, %struct.ecore_ptt* %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @CHIP_BOND_ID, align 4
  %107 = call i64 @GET_FIELD(i32 %105, i32 %106)
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %110 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %109, i32 0, i32 7
  store i8* %108, i8** %110, align 8
  %111 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %112 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %113 = load i32, i32* @MISCS_REG_CHIP_METAL, align 4
  %114 = call i32 @ecore_rd(%struct.ecore_hwfn* %111, %struct.ecore_ptt* %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @CHIP_METAL, align 4
  %117 = call i64 @GET_FIELD(i32 %115, i32 %116)
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %120 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %122 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %121, i32 0, i32 5
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %122, align 8
  %124 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %125 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %124)
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %129 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %130 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %129, i32 0, i32 8
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr i8, i8* %131, i64 65
  %133 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %134 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %133, i32 0, i32 6
  %135 = load i8*, i8** %134, align 8
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %138 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %141 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %140, i32 0, i32 8
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %144 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %143, i32 0, i32 7
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %147 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %146, i32 0, i32 6
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @DP_INFO(%struct.ecore_hwfn* %123, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i8* %128, i8* %132, i32 %136, i32 %139, i8* %142, i8* %145, i8* %148)
  %150 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %151 = call i64 @ECORE_IS_BB_A0(%struct.ecore_dev* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %100
  %154 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %155 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %154, i32 0, i32 5
  %156 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %155, align 8
  %157 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %156, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %158 = load i32, i32* @ECORE_ABORTED, align 4
  store i32 %158, i32* %3, align 4
  br label %195

159:                                              ; preds = %100
  %160 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %161 = call i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %165 = call i64 @ECORE_IS_AH(%struct.ecore_dev* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %169 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %170 = load i32, i32* @MISCS_REG_PLL_MAIN_CTRL_4, align 4
  %171 = call i32 @ecore_wr(%struct.ecore_hwfn* %168, %struct.ecore_ptt* %169, i32 %170, i32 1)
  br label %172

172:                                              ; preds = %167, %163, %159
  %173 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %174 = call i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %172
  %177 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %178 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %179 = load i32, i32* @MISCS_REG_ECO_RESERVED, align 4
  %180 = call i32 @ecore_rd(%struct.ecore_hwfn* %177, %struct.ecore_ptt* %178, i32 %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = and i32 %181, 536870912
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %176
  %185 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %186 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %185, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %187 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %188 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %187, i32 0, i32 4
  store i32 1, i32* %188, align 8
  br label %192

189:                                              ; preds = %176
  %190 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %191 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %190, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %184
  br label %193

193:                                              ; preds = %192, %172
  %194 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %193, %153, %40
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @OSAL_PCI_READ_CONFIG_WORD(%struct.ecore_dev*, i32, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev*) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i64 @ECORE_IS_BB(%struct.ecore_dev*) #1

declare dso_local i64 @ECORE_IS_BB_A0(%struct.ecore_dev*) #1

declare dso_local i64 @ECORE_IS_AH(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
