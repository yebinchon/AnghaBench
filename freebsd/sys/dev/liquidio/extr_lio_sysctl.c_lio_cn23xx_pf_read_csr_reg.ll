; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_cn23xx_pf_read_csr_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_cn23xx_pf_read_csr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"\09 Octeon CSR Registers\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"[%08x] (SLI_PKT_MAC%d_PF%d_RINFO): %016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"[%08x] (SLI_MAC%d_PF%d_INT_ENB): %016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"[%08x] (SLI_MAC%d_PF%d_INT_SUM): %016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"[%08x] (SLI_PKT_MEM_CTL): %016llx\0A\00", align 1
@LIO_CN23XX_MAC_INT_OFFSET = common dso_local global i32 0, align 4
@LIO_CN23XX_PF_INT_OFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"[%08x] (SLI_MAC%d_PF%d_PKT_VF_INT): %016llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"[%08x] (SLI_MAC%d_PF%d_PP_VF_INT): %016llx\0A\00", align 1
@LIO_CN23XX_SLI_PKT_CNT_INT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"[%08x] (SLI_PKT_CNT_INT): %016llx\0A\00", align 1
@LIO_CN23XX_SLI_PKT_TIME_INT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"[%08x] (SLI_PKT_TIME_INT): %016llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"[%08x] (SLI_PKT_INT): %016llx\0A\00", align 1
@LIO_CN23XX_SLI_OQ_WMARK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"[%08x] (SLI_PKT_OUTPUT_WMARK): %016llx\0A\00", align 1
@LIO_CN23XX_SLI_PKT_IOQ_RING_RST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"[%08x] (SLI_PKT_RING_RST): %016llx\0A\00", align 1
@LIO_CN23XX_SLI_GBL_CONTROL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"[%08x] (SLI_PKT_GBL_CONTROL): %016llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"[%08x] (SLI_PKT_BIST_STATUS): %016llx\0A\00", align 1
@LIO_CN23XX_SLI_OUT_BP_EN_W1S = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [42 x i8] c"[%08x] (SLI_PKT_OUT_BP_EN_W1S):  %016llx\0A\00", align 1
@LIO_CN23XX_SLI_OUT_BP_EN2_W1S = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [42 x i8] c"[%08x] (SLI_PKT_OUT_BP_EN2_W1S): %016llx\0A\00", align 1
@LIO_CN23XX_PF_MAX_OUTPUT_QUEUES = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"[%08x] (SLI_PKT%d_OUT_SIZE): %016llx\0A\00", align 1
@LIO_CN23XX_PF_MAX_INPUT_QUEUES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [42 x i8] c"[%08x] (SLI_PKT_IN_DONE%d_CNTS): %016llx\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"[%08x] (SLI_PKT%d_SLIST_BAOFF_DBELL): %016llx\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"[%08x] (SLI_PKT%d_SLIST_FIFO_RSIZE): %016llx\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"[%08x] (SLI_PKT%d__OUTPUT_CONTROL): %016llx\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"[%08x] (SLI_PKT%d_SLIST_BADDR): %016llx\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"[%08x] (SLI_PKT%d_INT_LEVELS): %016llx\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"[%08x] (SLI_PKT%d_CNTS): %016llx\0A\00", align 1
@LIO_CN23XX_OQ_OFFSET = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [40 x i8] c"[%08x] (SLI_PKT%d_ERROR_INFO): %016llx\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"[%08x] (SLI_PKT%d_INPUT_CONTROL): %016llx\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"[%08x] (SLI_PKT%d_INSTR_BADDR): %016llx\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"[%08x] (SLI_PKT%d_INSTR_BAOFF_DBELL): %016llx\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"[%08x] (SLI_PKT%d_INSTR_FIFO_RSIZE): %016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.octeon_device*)* @lio_cn23xx_pf_read_csr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_cn23xx_pf_read_csr_reg(i8* %0, %struct.octeon_device* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.octeon_device* %1, %struct.octeon_device** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = call i64 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @LIO_CN23XX_SLI_PKT_MAC_RINFO64(i32 %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %34 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @lio_read_csr64(%struct.octeon_device* %39, i32 %40)
  %42 = call i32 @LIO_CAST64(i32 %41)
  %43 = call i64 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35, i32 %38, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %49 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %52 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @LIO_CN23XX_SLI_MAC_PF_INT_ENB64(i32 %50, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %64 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @lio_read_csr64(%struct.octeon_device* %66, i32 %67)
  %69 = call i32 @LIO_CAST64(i32 %68)
  %70 = call i64 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %76 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %79 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @LIO_CN23XX_SLI_MAC_PF_INT_SUM64(i32 %77, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %88 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %91 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @lio_read_csr64(%struct.octeon_device* %93, i32 %94)
  %96 = call i32 @LIO_CAST64(i32 %95)
  %97 = call i64 (i8*, i8*, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %89, i32 %92, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %7, align 4
  store i32 168224, i32* %5, align 4
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @lio_read_csr64(%struct.octeon_device* %107, i32 %108)
  %110 = call i32 @LIO_CAST64(i32 %109)
  %111 = call i64 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %7, align 4
  %116 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %117 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @LIO_CN23XX_MAC_INT_OFFSET, align 4
  %120 = mul nsw i32 %118, %119
  %121 = add nsw i32 160512, %120
  %122 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %123 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @LIO_CN23XX_PF_INT_OFFSET, align 4
  %126 = mul nsw i32 %124, %125
  %127 = add nsw i32 %121, %126
  store i32 %127, i32* %5, align 4
  %128 = load i8*, i8** %3, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %134 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %137 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @lio_read_csr64(%struct.octeon_device* %139, i32 %140)
  %142 = call i32 @LIO_CAST64(i32 %141)
  %143 = call i64 (i8*, i8*, ...) @sprintf(i8* %131, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %132, i32 %135, i32 %138, i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %7, align 4
  %148 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %149 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @LIO_CN23XX_MAC_INT_OFFSET, align 4
  %152 = mul nsw i32 %150, %151
  %153 = add nsw i32 160256, %152
  %154 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %155 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @LIO_CN23XX_PF_INT_OFFSET, align 4
  %158 = mul nsw i32 %156, %157
  %159 = add nsw i32 %153, %158
  store i32 %159, i32* %5, align 4
  %160 = load i8*, i8** %3, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i32, i32* %5, align 4
  %165 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %166 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %169 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @lio_read_csr64(%struct.octeon_device* %171, i32 %172)
  %174 = call i32 @LIO_CAST64(i32 %173)
  %175 = call i64 (i8*, i8*, ...) @sprintf(i8* %163, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %164, i32 %167, i32 %170, i32 %174)
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* @LIO_CN23XX_SLI_PKT_CNT_INT, align 4
  store i32 %180, i32* %5, align 4
  %181 = load i8*, i8** %3, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i32, i32* %5, align 4
  %186 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @lio_read_csr64(%struct.octeon_device* %186, i32 %187)
  %189 = call i32 @LIO_CAST64(i32 %188)
  %190 = call i64 (i8*, i8*, ...) @sprintf(i8* %184, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %185, i32 %189)
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %190
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* @LIO_CN23XX_SLI_PKT_TIME_INT, align 4
  store i32 %195, i32* %5, align 4
  %196 = load i8*, i8** %3, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i32, i32* %5, align 4
  %201 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @lio_read_csr64(%struct.octeon_device* %201, i32 %202)
  %204 = call i32 @LIO_CAST64(i32 %203)
  %205 = call i64 (i8*, i8*, ...) @sprintf(i8* %199, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %200, i32 %204)
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, %205
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %7, align 4
  store i32 168288, i32* %5, align 4
  %210 = load i8*, i8** %3, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load i32, i32* %5, align 4
  %215 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @lio_read_csr64(%struct.octeon_device* %215, i32 %216)
  %218 = call i32 @LIO_CAST64(i32 %217)
  %219 = call i64 (i8*, i8*, ...) @sprintf(i8* %213, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %214, i32 %218)
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %221, %219
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* @LIO_CN23XX_SLI_OQ_WMARK, align 4
  store i32 %224, i32* %5, align 4
  %225 = load i8*, i8** %3, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i32, i32* %5, align 4
  %230 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %231 = load i32, i32* %5, align 4
  %232 = call i32 @lio_read_csr64(%struct.octeon_device* %230, i32 %231)
  %233 = call i32 @LIO_CAST64(i32 %232)
  %234 = call i64 (i8*, i8*, ...) @sprintf(i8* %228, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %229, i32 %233)
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %234
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* @LIO_CN23XX_SLI_PKT_IOQ_RING_RST, align 4
  store i32 %239, i32* %5, align 4
  %240 = load i8*, i8** %3, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i32, i32* %5, align 4
  %245 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %246 = load i32, i32* %5, align 4
  %247 = call i32 @lio_read_csr64(%struct.octeon_device* %245, i32 %246)
  %248 = call i32 @LIO_CAST64(i32 %247)
  %249 = call i64 (i8*, i8*, ...) @sprintf(i8* %243, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %244, i32 %248)
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %251, %249
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %7, align 4
  %254 = load i32, i32* @LIO_CN23XX_SLI_GBL_CONTROL, align 4
  store i32 %254, i32* %5, align 4
  %255 = load i8*, i8** %3, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i32, i32* %5, align 4
  %260 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %261 = load i32, i32* %5, align 4
  %262 = call i32 @lio_read_csr64(%struct.octeon_device* %260, i32 %261)
  %263 = call i32 @LIO_CAST64(i32 %262)
  %264 = call i64 (i8*, i8*, ...) @sprintf(i8* %258, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %259, i32 %263)
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %266, %264
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %7, align 4
  store i32 168480, i32* %5, align 4
  %269 = load i8*, i8** %3, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = load i32, i32* %5, align 4
  %274 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %275 = load i32, i32* %5, align 4
  %276 = call i32 @lio_read_csr64(%struct.octeon_device* %274, i32 %275)
  %277 = call i32 @LIO_CAST64(i32 %276)
  %278 = call i64 (i8*, i8*, ...) @sprintf(i8* %272, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %273, i32 %277)
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %280, %278
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %7, align 4
  %283 = load i32, i32* %8, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %301

285:                                              ; preds = %2
  %286 = load i32, i32* @LIO_CN23XX_SLI_OUT_BP_EN_W1S, align 4
  store i32 %286, i32* %5, align 4
  %287 = load i8*, i8** %3, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  %291 = load i32, i32* %5, align 4
  %292 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %293 = load i32, i32* %5, align 4
  %294 = call i32 @lio_read_csr64(%struct.octeon_device* %292, i32 %293)
  %295 = call i32 @LIO_CAST64(i32 %294)
  %296 = call i64 (i8*, i8*, ...) @sprintf(i8* %290, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %291, i32 %295)
  %297 = load i32, i32* %7, align 4
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %298, %296
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %7, align 4
  br label %321

301:                                              ; preds = %2
  %302 = load i32, i32* %8, align 4
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %304, label %320

304:                                              ; preds = %301
  %305 = load i32, i32* @LIO_CN23XX_SLI_OUT_BP_EN2_W1S, align 4
  store i32 %305, i32* %5, align 4
  %306 = load i8*, i8** %3, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = load i32, i32* %5, align 4
  %311 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %312 = load i32, i32* %5, align 4
  %313 = call i32 @lio_read_csr64(%struct.octeon_device* %311, i32 %312)
  %314 = call i32 @LIO_CAST64(i32 %313)
  %315 = call i64 (i8*, i8*, ...) @sprintf(i8* %309, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %310, i32 %314)
  %316 = load i32, i32* %7, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %317, %315
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %7, align 4
  br label %320

320:                                              ; preds = %304, %301
  br label %321

321:                                              ; preds = %320, %285
  store i32 0, i32* %6, align 4
  br label %322

322:                                              ; preds = %344, %321
  %323 = load i32, i32* %6, align 4
  %324 = load i32, i32* @LIO_CN23XX_PF_MAX_OUTPUT_QUEUES, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %347

326:                                              ; preds = %322
  %327 = load i32, i32* %6, align 4
  %328 = call i32 @LIO_CN23XX_SLI_OQ_BUFF_INFO_SIZE(i32 %327)
  store i32 %328, i32* %5, align 4
  %329 = load i8*, i8** %3, align 8
  %330 = load i32, i32* %7, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %329, i64 %331
  %333 = load i32, i32* %5, align 4
  %334 = load i32, i32* %6, align 4
  %335 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %336 = load i32, i32* %5, align 4
  %337 = call i32 @lio_read_csr64(%struct.octeon_device* %335, i32 %336)
  %338 = call i32 @LIO_CAST64(i32 %337)
  %339 = call i64 (i8*, i8*, ...) @sprintf(i8* %332, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %333, i32 %334, i32 %338)
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %341, %339
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* %7, align 4
  br label %344

344:                                              ; preds = %326
  %345 = load i32, i32* %6, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %6, align 4
  br label %322

347:                                              ; preds = %322
  store i32 0, i32* %6, align 4
  br label %348

348:                                              ; preds = %370, %347
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* @LIO_CN23XX_PF_MAX_INPUT_QUEUES, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %373

352:                                              ; preds = %348
  %353 = load i32, i32* %6, align 4
  %354 = call i32 @LIO_CN23XX_SLI_IQ_INSTR_COUNT64(i32 %353)
  store i32 %354, i32* %5, align 4
  %355 = load i8*, i8** %3, align 8
  %356 = load i32, i32* %7, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8, i8* %355, i64 %357
  %359 = load i32, i32* %5, align 4
  %360 = load i32, i32* %6, align 4
  %361 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %362 = load i32, i32* %5, align 4
  %363 = call i32 @lio_read_csr64(%struct.octeon_device* %361, i32 %362)
  %364 = call i32 @LIO_CAST64(i32 %363)
  %365 = call i64 (i8*, i8*, ...) @sprintf(i8* %358, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 %359, i32 %360, i32 %364)
  %366 = load i32, i32* %7, align 4
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %367, %365
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %7, align 4
  br label %370

370:                                              ; preds = %352
  %371 = load i32, i32* %6, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %6, align 4
  br label %348

373:                                              ; preds = %348
  store i32 0, i32* %6, align 4
  br label %374

374:                                              ; preds = %396, %373
  %375 = load i32, i32* %6, align 4
  %376 = load i32, i32* @LIO_CN23XX_PF_MAX_OUTPUT_QUEUES, align 4
  %377 = icmp slt i32 %375, %376
  br i1 %377, label %378, label %399

378:                                              ; preds = %374
  %379 = load i32, i32* %6, align 4
  %380 = call i32 @LIO_CN23XX_SLI_OQ_PKTS_CREDIT(i32 %379)
  store i32 %380, i32* %5, align 4
  %381 = load i8*, i8** %3, align 8
  %382 = load i32, i32* %7, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %381, i64 %383
  %385 = load i32, i32* %5, align 4
  %386 = load i32, i32* %6, align 4
  %387 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %388 = load i32, i32* %5, align 4
  %389 = call i32 @lio_read_csr64(%struct.octeon_device* %387, i32 %388)
  %390 = call i32 @LIO_CAST64(i32 %389)
  %391 = call i64 (i8*, i8*, ...) @sprintf(i8* %384, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i32 %385, i32 %386, i32 %390)
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = add nsw i64 %393, %391
  %395 = trunc i64 %394 to i32
  store i32 %395, i32* %7, align 4
  br label %396

396:                                              ; preds = %378
  %397 = load i32, i32* %6, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %6, align 4
  br label %374

399:                                              ; preds = %374
  store i32 0, i32* %6, align 4
  br label %400

400:                                              ; preds = %422, %399
  %401 = load i32, i32* %6, align 4
  %402 = load i32, i32* @LIO_CN23XX_PF_MAX_OUTPUT_QUEUES, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %425

404:                                              ; preds = %400
  %405 = load i32, i32* %6, align 4
  %406 = call i32 @LIO_CN23XX_SLI_OQ_SIZE(i32 %405)
  store i32 %406, i32* %5, align 4
  %407 = load i8*, i8** %3, align 8
  %408 = load i32, i32* %7, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, i8* %407, i64 %409
  %411 = load i32, i32* %5, align 4
  %412 = load i32, i32* %6, align 4
  %413 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %414 = load i32, i32* %5, align 4
  %415 = call i32 @lio_read_csr64(%struct.octeon_device* %413, i32 %414)
  %416 = call i32 @LIO_CAST64(i32 %415)
  %417 = call i64 (i8*, i8*, ...) @sprintf(i8* %410, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i32 %411, i32 %412, i32 %416)
  %418 = load i32, i32* %7, align 4
  %419 = sext i32 %418 to i64
  %420 = add nsw i64 %419, %417
  %421 = trunc i64 %420 to i32
  store i32 %421, i32* %7, align 4
  br label %422

422:                                              ; preds = %404
  %423 = load i32, i32* %6, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %6, align 4
  br label %400

425:                                              ; preds = %400
  store i32 0, i32* %6, align 4
  br label %426

426:                                              ; preds = %448, %425
  %427 = load i32, i32* %6, align 4
  %428 = load i32, i32* @LIO_CN23XX_PF_MAX_OUTPUT_QUEUES, align 4
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %430, label %451

430:                                              ; preds = %426
  %431 = load i32, i32* %6, align 4
  %432 = call i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i32 %431)
  store i32 %432, i32* %5, align 4
  %433 = load i8*, i8** %3, align 8
  %434 = load i32, i32* %7, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, i8* %433, i64 %435
  %437 = load i32, i32* %5, align 4
  %438 = load i32, i32* %6, align 4
  %439 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %440 = load i32, i32* %5, align 4
  %441 = call i32 @lio_read_csr64(%struct.octeon_device* %439, i32 %440)
  %442 = call i32 @LIO_CAST64(i32 %441)
  %443 = call i64 (i8*, i8*, ...) @sprintf(i8* %436, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i32 %437, i32 %438, i32 %442)
  %444 = load i32, i32* %7, align 4
  %445 = sext i32 %444 to i64
  %446 = add nsw i64 %445, %443
  %447 = trunc i64 %446 to i32
  store i32 %447, i32* %7, align 4
  br label %448

448:                                              ; preds = %430
  %449 = load i32, i32* %6, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %6, align 4
  br label %426

451:                                              ; preds = %426
  store i32 0, i32* %6, align 4
  br label %452

452:                                              ; preds = %474, %451
  %453 = load i32, i32* %6, align 4
  %454 = load i32, i32* @LIO_CN23XX_PF_MAX_OUTPUT_QUEUES, align 4
  %455 = icmp slt i32 %453, %454
  br i1 %455, label %456, label %477

456:                                              ; preds = %452
  %457 = load i32, i32* %6, align 4
  %458 = call i32 @LIO_CN23XX_SLI_OQ_BASE_ADDR64(i32 %457)
  store i32 %458, i32* %5, align 4
  %459 = load i8*, i8** %3, align 8
  %460 = load i32, i32* %7, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8, i8* %459, i64 %461
  %463 = load i32, i32* %5, align 4
  %464 = load i32, i32* %6, align 4
  %465 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %466 = load i32, i32* %5, align 4
  %467 = call i32 @lio_read_csr64(%struct.octeon_device* %465, i32 %466)
  %468 = call i32 @LIO_CAST64(i32 %467)
  %469 = call i64 (i8*, i8*, ...) @sprintf(i8* %462, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i32 %463, i32 %464, i32 %468)
  %470 = load i32, i32* %7, align 4
  %471 = sext i32 %470 to i64
  %472 = add nsw i64 %471, %469
  %473 = trunc i64 %472 to i32
  store i32 %473, i32* %7, align 4
  br label %474

474:                                              ; preds = %456
  %475 = load i32, i32* %6, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %6, align 4
  br label %452

477:                                              ; preds = %452
  store i32 0, i32* %6, align 4
  br label %478

478:                                              ; preds = %500, %477
  %479 = load i32, i32* %6, align 4
  %480 = load i32, i32* @LIO_CN23XX_PF_MAX_OUTPUT_QUEUES, align 4
  %481 = icmp slt i32 %479, %480
  br i1 %481, label %482, label %503

482:                                              ; preds = %478
  %483 = load i32, i32* %6, align 4
  %484 = call i32 @LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS(i32 %483)
  store i32 %484, i32* %5, align 4
  %485 = load i8*, i8** %3, align 8
  %486 = load i32, i32* %7, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i8, i8* %485, i64 %487
  %489 = load i32, i32* %5, align 4
  %490 = load i32, i32* %6, align 4
  %491 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %492 = load i32, i32* %5, align 4
  %493 = call i32 @lio_read_csr64(%struct.octeon_device* %491, i32 %492)
  %494 = call i32 @LIO_CAST64(i32 %493)
  %495 = call i64 (i8*, i8*, ...) @sprintf(i8* %488, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32 %489, i32 %490, i32 %494)
  %496 = load i32, i32* %7, align 4
  %497 = sext i32 %496 to i64
  %498 = add nsw i64 %497, %495
  %499 = trunc i64 %498 to i32
  store i32 %499, i32* %7, align 4
  br label %500

500:                                              ; preds = %482
  %501 = load i32, i32* %6, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %6, align 4
  br label %478

503:                                              ; preds = %478
  store i32 0, i32* %6, align 4
  br label %504

504:                                              ; preds = %526, %503
  %505 = load i32, i32* %6, align 4
  %506 = load i32, i32* @LIO_CN23XX_PF_MAX_OUTPUT_QUEUES, align 4
  %507 = icmp slt i32 %505, %506
  br i1 %507, label %508, label %529

508:                                              ; preds = %504
  %509 = load i32, i32* %6, align 4
  %510 = call i32 @LIO_CN23XX_SLI_OQ_PKTS_SENT(i32 %509)
  store i32 %510, i32* %5, align 4
  %511 = load i8*, i8** %3, align 8
  %512 = load i32, i32* %7, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i8, i8* %511, i64 %513
  %515 = load i32, i32* %5, align 4
  %516 = load i32, i32* %6, align 4
  %517 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %518 = load i32, i32* %5, align 4
  %519 = call i32 @lio_read_csr64(%struct.octeon_device* %517, i32 %518)
  %520 = call i32 @LIO_CAST64(i32 %519)
  %521 = call i64 (i8*, i8*, ...) @sprintf(i8* %514, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i32 %515, i32 %516, i32 %520)
  %522 = load i32, i32* %7, align 4
  %523 = sext i32 %522 to i64
  %524 = add nsw i64 %523, %521
  %525 = trunc i64 %524 to i32
  store i32 %525, i32* %7, align 4
  br label %526

526:                                              ; preds = %508
  %527 = load i32, i32* %6, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %6, align 4
  br label %504

529:                                              ; preds = %504
  store i32 0, i32* %6, align 4
  br label %530

530:                                              ; preds = %554, %529
  %531 = load i32, i32* %6, align 4
  %532 = load i32, i32* @LIO_CN23XX_PF_MAX_OUTPUT_QUEUES, align 4
  %533 = icmp slt i32 %531, %532
  br i1 %533, label %534, label %557

534:                                              ; preds = %530
  %535 = load i32, i32* %6, align 4
  %536 = load i32, i32* @LIO_CN23XX_OQ_OFFSET, align 4
  %537 = mul nsw i32 %535, %536
  %538 = add nsw i32 65728, %537
  store i32 %538, i32* %5, align 4
  %539 = load i8*, i8** %3, align 8
  %540 = load i32, i32* %7, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8, i8* %539, i64 %541
  %543 = load i32, i32* %5, align 4
  %544 = load i32, i32* %6, align 4
  %545 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %546 = load i32, i32* %5, align 4
  %547 = call i32 @lio_read_csr64(%struct.octeon_device* %545, i32 %546)
  %548 = call i32 @LIO_CAST64(i32 %547)
  %549 = call i64 (i8*, i8*, ...) @sprintf(i8* %542, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i32 %543, i32 %544, i32 %548)
  %550 = load i32, i32* %7, align 4
  %551 = sext i32 %550 to i64
  %552 = add nsw i64 %551, %549
  %553 = trunc i64 %552 to i32
  store i32 %553, i32* %7, align 4
  br label %554

554:                                              ; preds = %534
  %555 = load i32, i32* %6, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %6, align 4
  br label %530

557:                                              ; preds = %530
  store i32 0, i32* %6, align 4
  br label %558

558:                                              ; preds = %580, %557
  %559 = load i32, i32* %6, align 4
  %560 = load i32, i32* @LIO_CN23XX_PF_MAX_INPUT_QUEUES, align 4
  %561 = icmp slt i32 %559, %560
  br i1 %561, label %562, label %583

562:                                              ; preds = %558
  %563 = load i32, i32* %6, align 4
  %564 = call i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i32 %563)
  store i32 %564, i32* %5, align 4
  %565 = load i8*, i8** %3, align 8
  %566 = load i32, i32* %7, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i8, i8* %565, i64 %567
  %569 = load i32, i32* %5, align 4
  %570 = load i32, i32* %6, align 4
  %571 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %572 = load i32, i32* %5, align 4
  %573 = call i32 @lio_read_csr64(%struct.octeon_device* %571, i32 %572)
  %574 = call i32 @LIO_CAST64(i32 %573)
  %575 = call i64 (i8*, i8*, ...) @sprintf(i8* %568, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0), i32 %569, i32 %570, i32 %574)
  %576 = load i32, i32* %7, align 4
  %577 = sext i32 %576 to i64
  %578 = add nsw i64 %577, %575
  %579 = trunc i64 %578 to i32
  store i32 %579, i32* %7, align 4
  br label %580

580:                                              ; preds = %562
  %581 = load i32, i32* %6, align 4
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %6, align 4
  br label %558

583:                                              ; preds = %558
  store i32 0, i32* %6, align 4
  br label %584

584:                                              ; preds = %606, %583
  %585 = load i32, i32* %6, align 4
  %586 = load i32, i32* @LIO_CN23XX_PF_MAX_INPUT_QUEUES, align 4
  %587 = icmp slt i32 %585, %586
  br i1 %587, label %588, label %609

588:                                              ; preds = %584
  %589 = load i32, i32* %6, align 4
  %590 = call i32 @LIO_CN23XX_SLI_IQ_BASE_ADDR64(i32 %589)
  store i32 %590, i32* %5, align 4
  %591 = load i8*, i8** %3, align 8
  %592 = load i32, i32* %7, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i8, i8* %591, i64 %593
  %595 = load i32, i32* %5, align 4
  %596 = load i32, i32* %6, align 4
  %597 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %598 = load i32, i32* %5, align 4
  %599 = call i32 @lio_read_csr64(%struct.octeon_device* %597, i32 %598)
  %600 = call i32 @LIO_CAST64(i32 %599)
  %601 = call i64 (i8*, i8*, ...) @sprintf(i8* %594, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i32 %595, i32 %596, i32 %600)
  %602 = load i32, i32* %7, align 4
  %603 = sext i32 %602 to i64
  %604 = add nsw i64 %603, %601
  %605 = trunc i64 %604 to i32
  store i32 %605, i32* %7, align 4
  br label %606

606:                                              ; preds = %588
  %607 = load i32, i32* %6, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %6, align 4
  br label %584

609:                                              ; preds = %584
  store i32 0, i32* %6, align 4
  br label %610

610:                                              ; preds = %632, %609
  %611 = load i32, i32* %6, align 4
  %612 = load i32, i32* @LIO_CN23XX_PF_MAX_INPUT_QUEUES, align 4
  %613 = icmp slt i32 %611, %612
  br i1 %613, label %614, label %635

614:                                              ; preds = %610
  %615 = load i32, i32* %6, align 4
  %616 = call i32 @LIO_CN23XX_SLI_IQ_DOORBELL(i32 %615)
  store i32 %616, i32* %5, align 4
  %617 = load i8*, i8** %3, align 8
  %618 = load i32, i32* %7, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i8, i8* %617, i64 %619
  %621 = load i32, i32* %5, align 4
  %622 = load i32, i32* %6, align 4
  %623 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %624 = load i32, i32* %5, align 4
  %625 = call i32 @lio_read_csr64(%struct.octeon_device* %623, i32 %624)
  %626 = call i32 @LIO_CAST64(i32 %625)
  %627 = call i64 (i8*, i8*, ...) @sprintf(i8* %620, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i32 %621, i32 %622, i32 %626)
  %628 = load i32, i32* %7, align 4
  %629 = sext i32 %628 to i64
  %630 = add nsw i64 %629, %627
  %631 = trunc i64 %630 to i32
  store i32 %631, i32* %7, align 4
  br label %632

632:                                              ; preds = %614
  %633 = load i32, i32* %6, align 4
  %634 = add nsw i32 %633, 1
  store i32 %634, i32* %6, align 4
  br label %610

635:                                              ; preds = %610
  store i32 0, i32* %6, align 4
  br label %636

636:                                              ; preds = %658, %635
  %637 = load i32, i32* %6, align 4
  %638 = load i32, i32* @LIO_CN23XX_PF_MAX_INPUT_QUEUES, align 4
  %639 = icmp slt i32 %637, %638
  br i1 %639, label %640, label %661

640:                                              ; preds = %636
  %641 = load i32, i32* %6, align 4
  %642 = call i32 @LIO_CN23XX_SLI_IQ_SIZE(i32 %641)
  store i32 %642, i32* %5, align 4
  %643 = load i8*, i8** %3, align 8
  %644 = load i32, i32* %7, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i8, i8* %643, i64 %645
  %647 = load i32, i32* %5, align 4
  %648 = load i32, i32* %6, align 4
  %649 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %650 = load i32, i32* %5, align 4
  %651 = call i32 @lio_read_csr64(%struct.octeon_device* %649, i32 %650)
  %652 = call i32 @LIO_CAST64(i32 %651)
  %653 = call i64 (i8*, i8*, ...) @sprintf(i8* %646, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %647, i32 %648, i32 %652)
  %654 = load i32, i32* %7, align 4
  %655 = sext i32 %654 to i64
  %656 = add nsw i64 %655, %653
  %657 = trunc i64 %656 to i32
  store i32 %657, i32* %7, align 4
  br label %658

658:                                              ; preds = %640
  %659 = load i32, i32* %6, align 4
  %660 = add nsw i32 %659, 1
  store i32 %660, i32* %6, align 4
  br label %636

661:                                              ; preds = %636
  store i32 0, i32* %6, align 4
  br label %662

662:                                              ; preds = %669, %661
  %663 = load i32, i32* %6, align 4
  %664 = load i32, i32* @LIO_CN23XX_PF_MAX_INPUT_QUEUES, align 4
  %665 = icmp slt i32 %663, %664
  br i1 %665, label %666, label %672

666:                                              ; preds = %662
  %667 = load i32, i32* %6, align 4
  %668 = call i32 @LIO_CN23XX_SLI_IQ_INSTR_COUNT64(i32 %667)
  store i32 %668, i32* %5, align 4
  br label %669

669:                                              ; preds = %666
  %670 = load i32, i32* %6, align 4
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* %6, align 4
  br label %662

672:                                              ; preds = %662
  %673 = load i8*, i8** %3, align 8
  %674 = load i32, i32* %7, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i8, i8* %673, i64 %675
  %677 = load i32, i32* %5, align 4
  %678 = load i32, i32* %6, align 4
  %679 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %680 = load i32, i32* %5, align 4
  %681 = call i32 @lio_read_csr64(%struct.octeon_device* %679, i32 %680)
  %682 = call i32 @LIO_CAST64(i32 %681)
  %683 = call i64 (i8*, i8*, ...) @sprintf(i8* %676, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 %677, i32 %678, i32 %682)
  %684 = load i32, i32* %7, align 4
  %685 = sext i32 %684 to i64
  %686 = add nsw i64 %685, %683
  %687 = trunc i64 %686 to i32
  store i32 %687, i32* %7, align 4
  %688 = load i32, i32* %7, align 4
  ret i32 %688
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @LIO_CN23XX_SLI_PKT_MAC_RINFO64(i32, i32) #1

declare dso_local i32 @LIO_CAST64(i32) #1

declare dso_local i32 @lio_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_MAC_PF_INT_ENB64(i32, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_MAC_PF_INT_SUM64(i32, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_BUFF_INFO_SIZE(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_INSTR_COUNT64(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKTS_CREDIT(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_SIZE(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKT_CONTROL(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_BASE_ADDR64(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKTS_SENT(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_PKT_CONTROL64(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_BASE_ADDR64(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_DOORBELL(i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_IQ_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
