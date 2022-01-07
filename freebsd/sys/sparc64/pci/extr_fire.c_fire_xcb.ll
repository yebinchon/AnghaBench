; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_xcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_xcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fire_softc = type { i64, i32, i32, i32, i32, i32, i32 }

@FIRE_MODE_OBERON = common dso_local global i64 0, align 8
@FO_XBC_INT_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"UBC error: interrupt status %#llx\0A\00", align 1
@OBERON_UBC_ERR_INT_DMARDUEB_P = common dso_local global i32 0, align 4
@OBERON_UBC_ERR_INT_DMARDUEA_P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: fatal UBC core block error\00", align 1
@FO_XBC_ERR_STAT_CLR = common dso_local global i32 0, align 4
@FIRE_JBC_CORE_BLOCK_ERR_STAT = common dso_local global i32 0, align 4
@FIRE_JBC_CORE_BLOCK_ERR_STAT_MERGE = common dso_local global i32 0, align 4
@FIRE_JBC_CORE_BLOCK_ERR_STAT_JBCINT = common dso_local global i32 0, align 4
@FIRE_JBC_CORE_BLOCK_ERR_STAT_DMCINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"JBC interrupt status %#llx\0A\00", align 1
@FIRE_JBC_ERR_INT_EBUS_TO_P = common dso_local global i32 0, align 4
@FIRE_JBC_CSR_ERR_LOG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"CSR error log %#llx\0A\00", align 1
@FIRE_JBC_ERR_INT_UNSOL_RD_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_UNSOL_INT_P = common dso_local global i32 0, align 4
@FIRE_DMCINT_IDC_ERR_LOG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"DMCINT IDC error log %#llx\0A\00", align 1
@FIRE_JBC_ERR_INT_MB_PER_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_MB_PEW_P = common dso_local global i32 0, align 4
@FIRE_MERGE_TRANS_ERR_LOG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"merge transaction error log %#llx\0A\00", align 1
@FIRE_JBC_ERR_INT_IJP_P = common dso_local global i32 0, align 4
@FIRE_JBCINT_OTRANS_ERR_LOG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"JBCINT out transaction error log %#llx\0A\00", align 1
@FIRE_JBCINT_OTRANS_ERR_LOG2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"JBCINT out transaction error log 2 %#llx\0A\00", align 1
@FIRE_JBC_ERR_INT_UE_ASYN_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_CE_ASYN_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_JTE_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_JBE_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_JUE_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_ICISE_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_WR_DPE_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_RD_DPE_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_ILL_BMW_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_ILL_BMR_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_BJC_P = common dso_local global i32 0, align 4
@FIRE_JBCINT_ITRANS_ERR_LOG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"JBCINT in transaction error log %#llx\0A\00", align 1
@FIRE_JBCINT_ITRANS_ERR_LOG2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"JBCINT in transaction error log 2 %#llx\0A\00", align 1
@FIRE_JBC_ERR_INT_PIO_UNMAP_RD_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_ILL_ACC_RD_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_PIO_UNMAP_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_PIO_DPE_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_PIO_CPE_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_ILL_ACC_P = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"DMCINT ODCD error log %#llx\0A\00", align 1
@FIRE_JBC_ERR_INT_MB_PEA_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_CPE_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_APE_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_JTCEEW_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_JTCEEI_P = common dso_local global i32 0, align 4
@FIRE_JBC_ERR_INT_JTCEER_P = common dso_local global i32 0, align 4
@FIRE_FATAL_ERR_LOG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"fatal error log %#llx\0A\00", align 1
@FIRE_FATAL_ERR_LOG2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"fatal error log 2 %#llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"%s: fatal JBC core block error\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"%s: unknown JCB core block error status %#llx\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fire_xcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_xcb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fire_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.fire_softc*
  store %struct.fire_softc* %10, %struct.fire_softc** %3, align 8
  %11 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %12 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %15 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %14, i32 0, i32 2
  %16 = call i32 @mtx_lock_spin(i32* %15)
  %17 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %18 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FIRE_MODE_OBERON, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %1
  %23 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %24 = load i32, i32* @FO_XBC_INT_STAT, align 4
  %25 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @OBERON_UBC_ERR_INT_DMARDUEB_P, align 4
  %32 = load i32, i32* @OBERON_UBC_ERR_INT_DMARDUEA_P, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %30, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  br label %43

38:                                               ; preds = %22
  %39 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %40 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %37
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %48 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %47, i32 0, i32 2
  %49 = call i32 @mtx_unlock_spin(i32* %48)
  %50 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %51 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @device_get_nameunit(i32 %52)
  %54 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %62

55:                                               ; preds = %43
  %56 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %57 = load i32, i32* @FO_XBC_ERR_STAT_CLR, align 4
  %58 = call i32 @FIRE_CTRL_SET(%struct.fire_softc* %56, i32 %57, i64 -1)
  %59 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %60 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %59, i32 0, i32 2
  %61 = call i32 @mtx_unlock_spin(i32* %60)
  br label %62

62:                                               ; preds = %55, %46
  br label %321

63:                                               ; preds = %1
  %64 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %65 = load i32, i32* @FIRE_JBC_CORE_BLOCK_ERR_STAT, align 4
  %66 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @FIRE_JBC_CORE_BLOCK_ERR_STAT_MERGE, align 4
  %69 = load i32, i32* @FIRE_JBC_CORE_BLOCK_ERR_STAT_JBCINT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @FIRE_JBC_CORE_BLOCK_ERR_STAT_DMCINT, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %67, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %309

75:                                               ; preds = %63
  %76 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %77 = load i32, i32* @FO_XBC_INT_STAT, align 4
  %78 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @FIRE_JBC_ERR_INT_EBUS_TO_P, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %75
  %88 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %89 = load i32, i32* @FIRE_JBC_CSR_ERR_LOG, align 4
  %90 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %87, %75
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @FIRE_JBC_ERR_INT_UNSOL_RD_P, align 4
  %98 = load i32, i32* @FIRE_JBC_ERR_INT_UNSOL_INT_P, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %95
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @FIRE_JBC_ERR_INT_UNSOL_RD_P, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %109 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @FIRE_JBC_ERR_INT_UNSOL_INT_P, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %119 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %124 = load i32, i32* @FIRE_DMCINT_IDC_ERR_LOG, align 4
  %125 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %123, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = call i32 @device_printf(i32 %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %122, %95
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @FIRE_JBC_ERR_INT_MB_PER_P, align 4
  %133 = load i32, i32* @FIRE_JBC_ERR_INT_MB_PEW_P, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  store i32 1, i32* %8, align 4
  %138 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %139 = load i32, i32* @FIRE_MERGE_TRANS_ERR_LOG, align 4
  %140 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %138, i32 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = call i32 @device_printf(i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %143)
  br label %145

145:                                              ; preds = %137, %130
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @FIRE_JBC_ERR_INT_IJP_P, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %145
  store i32 1, i32* %8, align 4
  %151 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %152 = load i32, i32* @FIRE_JBCINT_OTRANS_ERR_LOG, align 4
  %153 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %151, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = call i32 @device_printf(i32 %154, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %156)
  %158 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %159 = load i32, i32* @FIRE_JBCINT_OTRANS_ERR_LOG2, align 4
  %160 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %158, i32 %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = call i32 @device_printf(i32 %161, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %163)
  br label %165

165:                                              ; preds = %150, %145
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @FIRE_JBC_ERR_INT_UE_ASYN_P, align 4
  %168 = load i32, i32* @FIRE_JBC_ERR_INT_CE_ASYN_P, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @FIRE_JBC_ERR_INT_JTE_P, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @FIRE_JBC_ERR_INT_JBE_P, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @FIRE_JBC_ERR_INT_JUE_P, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @FIRE_JBC_ERR_INT_ICISE_P, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @FIRE_JBC_ERR_INT_WR_DPE_P, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @FIRE_JBC_ERR_INT_RD_DPE_P, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @FIRE_JBC_ERR_INT_ILL_BMW_P, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @FIRE_JBC_ERR_INT_ILL_BMR_P, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @FIRE_JBC_ERR_INT_BJC_P, align 4
  %187 = or i32 %185, %186
  %188 = and i32 %166, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %234

190:                                              ; preds = %165
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @FIRE_JBC_ERR_INT_UE_ASYN_P, align 4
  %193 = load i32, i32* @FIRE_JBC_ERR_INT_JTE_P, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @FIRE_JBC_ERR_INT_JBE_P, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @FIRE_JBC_ERR_INT_JUE_P, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @FIRE_JBC_ERR_INT_ICISE_P, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @FIRE_JBC_ERR_INT_WR_DPE_P, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @FIRE_JBC_ERR_INT_RD_DPE_P, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @FIRE_JBC_ERR_INT_ILL_BMW_P, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @FIRE_JBC_ERR_INT_ILL_BMR_P, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @FIRE_JBC_ERR_INT_BJC_P, align 4
  %210 = or i32 %208, %209
  %211 = and i32 %191, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %190
  store i32 1, i32* %8, align 4
  br label %219

214:                                              ; preds = %190
  %215 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %216 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %214, %213
  %220 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %221 = load i32, i32* @FIRE_JBCINT_ITRANS_ERR_LOG, align 4
  %222 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %220, i32 %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = call i32 @device_printf(i32 %223, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %225)
  %227 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %228 = load i32, i32* @FIRE_JBCINT_ITRANS_ERR_LOG2, align 4
  %229 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %227, i32 %228)
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = call i32 @device_printf(i32 %230, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i64 %232)
  br label %234

234:                                              ; preds = %219, %165
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* @FIRE_JBC_ERR_INT_PIO_UNMAP_RD_P, align 4
  %237 = load i32, i32* @FIRE_JBC_ERR_INT_ILL_ACC_RD_P, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @FIRE_JBC_ERR_INT_PIO_UNMAP_P, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @FIRE_JBC_ERR_INT_PIO_DPE_P, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @FIRE_JBC_ERR_INT_PIO_CPE_P, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @FIRE_JBC_ERR_INT_ILL_ACC_P, align 4
  %246 = or i32 %244, %245
  %247 = and i32 %235, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %234
  store i32 1, i32* %8, align 4
  %250 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %251 = load i32, i32* @FIRE_JBC_CSR_ERR_LOG, align 4
  %252 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %250, i32 %251)
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = call i32 @device_printf(i32 %253, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 %255)
  br label %257

257:                                              ; preds = %249, %234
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* @FIRE_JBC_ERR_INT_MB_PEA_P, align 4
  %260 = load i32, i32* @FIRE_JBC_ERR_INT_CPE_P, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @FIRE_JBC_ERR_INT_APE_P, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @FIRE_JBC_ERR_INT_PIO_CPE_P, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* @FIRE_JBC_ERR_INT_JTCEEW_P, align 4
  %267 = or i32 %265, %266
  %268 = load i32, i32* @FIRE_JBC_ERR_INT_JTCEEI_P, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @FIRE_JBC_ERR_INT_JTCEER_P, align 4
  %271 = or i32 %269, %270
  %272 = and i32 %258, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %257
  store i32 1, i32* %8, align 4
  %275 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %276 = load i32, i32* @FIRE_FATAL_ERR_LOG, align 4
  %277 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %275, i32 %276)
  store i32 %277, i32* %7, align 4
  %278 = load i32, i32* %4, align 4
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = call i32 @device_printf(i32 %278, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 %280)
  %282 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %283 = load i32, i32* @FIRE_FATAL_ERR_LOG2, align 4
  %284 = call i32 @FIRE_CTRL_READ_8(%struct.fire_softc* %282, i32 %283)
  store i32 %284, i32* %7, align 4
  %285 = load i32, i32* %4, align 4
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = call i32 @device_printf(i32 %285, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i64 %287)
  br label %289

289:                                              ; preds = %274, %257
  %290 = load i32, i32* %8, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %289
  %293 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %294 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %293, i32 0, i32 2
  %295 = call i32 @mtx_unlock_spin(i32* %294)
  %296 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %297 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @device_get_nameunit(i32 %298)
  %300 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %299)
  br label %308

301:                                              ; preds = %289
  %302 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %303 = load i32, i32* @FO_XBC_ERR_STAT_CLR, align 4
  %304 = call i32 @FIRE_CTRL_SET(%struct.fire_softc* %302, i32 %303, i64 -1)
  %305 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %306 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %305, i32 0, i32 2
  %307 = call i32 @mtx_unlock_spin(i32* %306)
  br label %308

308:                                              ; preds = %301, %292
  br label %320

309:                                              ; preds = %63
  %310 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %311 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %310, i32 0, i32 2
  %312 = call i32 @mtx_unlock_spin(i32* %311)
  %313 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %314 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @device_get_nameunit(i32 %315)
  %317 = load i32, i32* %5, align 4
  %318 = sext i32 %317 to i64
  %319 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %316, i64 %318)
  br label %320

320:                                              ; preds = %309, %308
  br label %321

321:                                              ; preds = %320, %62
  %322 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %322
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @FIRE_CTRL_READ_8(%struct.fire_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @FIRE_CTRL_SET(%struct.fire_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
