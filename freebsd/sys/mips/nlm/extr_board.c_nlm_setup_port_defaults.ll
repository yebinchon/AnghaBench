; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_board.c_nlm_setup_port_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_board.c_nlm_setup_port_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_port_ivars = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@XLP3XX_STG2_FIFO_SZ = common dso_local global i32 0, align 4
@XLP3XX_EH_FIFO_SZ = common dso_local global i32 0, align 4
@XLP3XX_FROUT_FIFO_SZ = common dso_local global i32 0, align 4
@XLP3XX_MS_FIFO_SZ = common dso_local global i32 0, align 4
@XLP3XX_PKT_FIFO_SZ = common dso_local global i32 0, align 4
@XLP3XX_PKTLEN_FIFO_SZ = common dso_local global i32 0, align 4
@XLP3XX_MAX_STG2_OFFSET = common dso_local global i32 0, align 4
@XLP3XX_MAX_EH_OFFSET = common dso_local global i32 0, align 4
@XLP3XX_MAX_FREE_OUT_OFFSET = common dso_local global i32 0, align 4
@XLP3XX_MAX_MS_OFFSET = common dso_local global i32 0, align 4
@XLP3XX_MAX_PMEM_OFFSET = common dso_local global i32 0, align 4
@XLP3XX_STG1_2_CREDIT = common dso_local global i32 0, align 4
@XLP3XX_STG2_EH_CREDIT = common dso_local global i32 0, align 4
@XLP3XX_STG2_FROUT_CREDIT = common dso_local global i32 0, align 4
@XLP3XX_STG2_MS_CREDIT = common dso_local global i32 0, align 4
@XLP8XX_STG2_FIFO_SZ = common dso_local global i32 0, align 4
@XLP8XX_EH_FIFO_SZ = common dso_local global i32 0, align 4
@XLP8XX_FROUT_FIFO_SZ = common dso_local global i32 0, align 4
@XLP8XX_MS_FIFO_SZ = common dso_local global i32 0, align 4
@XLP8XX_PKT_FIFO_SZ = common dso_local global i32 0, align 4
@XLP8XX_PKTLEN_FIFO_SZ = common dso_local global i32 0, align 4
@XLP8XX_MAX_STG2_OFFSET = common dso_local global i32 0, align 4
@XLP8XX_MAX_EH_OFFSET = common dso_local global i32 0, align 4
@XLP8XX_MAX_FREE_OUT_OFFSET = common dso_local global i32 0, align 4
@XLP8XX_MAX_MS_OFFSET = common dso_local global i32 0, align 4
@XLP8XX_MAX_PMEM_OFFSET = common dso_local global i32 0, align 4
@XLP8XX_STG1_2_CREDIT = common dso_local global i32 0, align 4
@XLP8XX_STG2_EH_CREDIT = common dso_local global i32 0, align 4
@XLP8XX_STG2_FROUT_CREDIT = common dso_local global i32 0, align 4
@XLP8XX_STG2_MS_CREDIT = common dso_local global i32 0, align 4
@SGMII_CAL_SLOTS = common dso_local global i8* null, align 8
@IL8_CAL_SLOTS = common dso_local global i8* null, align 8
@XAUI_CAL_SLOTS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlp_port_ivars*)* @nlm_setup_port_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_setup_port_defaults(%struct.xlp_port_ivars* %0) #0 {
  %2 = alloca %struct.xlp_port_ivars*, align 8
  store %struct.xlp_port_ivars* %0, %struct.xlp_port_ivars** %2, align 8
  %3 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %4 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %3, i32 0, i32 34
  store i64 0, i64* %4, align 8
  %5 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %6 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %8 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %7, i32 0, i32 1
  store i32 2048, i32* %8, align 4
  %9 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %10 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %9, i32 0, i32 33
  store i64 0, i64* %10, align 8
  %11 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %12 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %11, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %14 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %13, i32 0, i32 32
  store i64 0, i64* %14, align 8
  %15 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %16 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %15, i32 0, i32 31
  store i64 0, i64* %16, align 8
  %17 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %18 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %17, i32 0, i32 30
  store i64 0, i64* %18, align 8
  %19 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %20 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %19, i32 0, i32 29
  store i64 0, i64* %20, align 8
  %21 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %22 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %21, i32 0, i32 28
  store i64 0, i64* %22, align 8
  %23 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %24 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %23, i32 0, i32 27
  store i64 0, i64* %24, align 8
  %25 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %26 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %25, i32 0, i32 3
  store i32 1, i32* %26, align 4
  %27 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %28 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %27, i32 0, i32 4
  store i32 1, i32* %28, align 8
  %29 = call i64 (...) @nlm_is_xlp3xx()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %1
  %32 = load i32, i32* @XLP3XX_STG2_FIFO_SZ, align 4
  %33 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %34 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %33, i32 0, i32 26
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @XLP3XX_EH_FIFO_SZ, align 4
  %36 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %37 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %36, i32 0, i32 25
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @XLP3XX_FROUT_FIFO_SZ, align 4
  %39 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %40 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %39, i32 0, i32 24
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @XLP3XX_MS_FIFO_SZ, align 4
  %42 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %43 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %42, i32 0, i32 23
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @XLP3XX_PKT_FIFO_SZ, align 4
  %45 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %46 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %45, i32 0, i32 22
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @XLP3XX_PKTLEN_FIFO_SZ, align 4
  %48 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %49 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %48, i32 0, i32 21
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @XLP3XX_MAX_STG2_OFFSET, align 4
  %51 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %52 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %51, i32 0, i32 20
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @XLP3XX_MAX_EH_OFFSET, align 4
  %54 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %55 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %54, i32 0, i32 19
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @XLP3XX_MAX_FREE_OUT_OFFSET, align 4
  %57 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %58 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %57, i32 0, i32 18
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @XLP3XX_MAX_MS_OFFSET, align 4
  %60 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %61 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %60, i32 0, i32 17
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @XLP3XX_MAX_PMEM_OFFSET, align 4
  %63 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %64 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %63, i32 0, i32 16
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @XLP3XX_STG1_2_CREDIT, align 4
  %66 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %67 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %66, i32 0, i32 15
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @XLP3XX_STG2_EH_CREDIT, align 4
  %69 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %70 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %69, i32 0, i32 14
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @XLP3XX_STG2_FROUT_CREDIT, align 4
  %72 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %73 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %72, i32 0, i32 13
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @XLP3XX_STG2_MS_CREDIT, align 4
  %75 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %76 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 8
  br label %123

77:                                               ; preds = %1
  %78 = load i32, i32* @XLP8XX_STG2_FIFO_SZ, align 4
  %79 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %80 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %79, i32 0, i32 26
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @XLP8XX_EH_FIFO_SZ, align 4
  %82 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %83 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %82, i32 0, i32 25
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @XLP8XX_FROUT_FIFO_SZ, align 4
  %85 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %86 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %85, i32 0, i32 24
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @XLP8XX_MS_FIFO_SZ, align 4
  %88 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %89 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %88, i32 0, i32 23
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @XLP8XX_PKT_FIFO_SZ, align 4
  %91 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %92 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %91, i32 0, i32 22
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @XLP8XX_PKTLEN_FIFO_SZ, align 4
  %94 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %95 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %94, i32 0, i32 21
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @XLP8XX_MAX_STG2_OFFSET, align 4
  %97 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %98 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %97, i32 0, i32 20
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @XLP8XX_MAX_EH_OFFSET, align 4
  %100 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %101 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %100, i32 0, i32 19
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @XLP8XX_MAX_FREE_OUT_OFFSET, align 4
  %103 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %104 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %103, i32 0, i32 18
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @XLP8XX_MAX_MS_OFFSET, align 4
  %106 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %107 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %106, i32 0, i32 17
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @XLP8XX_MAX_PMEM_OFFSET, align 4
  %109 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %110 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %109, i32 0, i32 16
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @XLP8XX_STG1_2_CREDIT, align 4
  %112 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %113 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %112, i32 0, i32 15
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @XLP8XX_STG2_EH_CREDIT, align 4
  %115 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %116 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %115, i32 0, i32 14
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @XLP8XX_STG2_FROUT_CREDIT, align 4
  %118 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %119 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %118, i32 0, i32 13
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @XLP8XX_STG2_MS_CREDIT, align 4
  %121 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %122 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %121, i32 0, i32 12
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %77, %31
  %124 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %125 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %165 [
    i32 129, label %127
    i32 130, label %149
    i32 128, label %164
  ]

127:                                              ; preds = %123
  %128 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %129 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %128, i32 0, i32 6
  store i32 52, i32* %129, align 8
  %130 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %131 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %130, i32 0, i32 7
  store i32 13, i32* %131, align 4
  %132 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %133 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %132, i32 0, i32 8
  store i32 128, i32* %133, align 8
  %134 = load i8*, i8** @SGMII_CAL_SLOTS, align 8
  %135 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %136 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %135, i32 0, i32 11
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @SGMII_CAL_SLOTS, align 8
  %138 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %139 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %138, i32 0, i32 10
  store i8* %137, i8** %139, align 8
  %140 = call i64 (...) @nlm_is_xlp3xx()
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %127
  %143 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %144 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %143, i32 0, i32 9
  store i32 30, i32* %144, align 4
  br label %148

145:                                              ; preds = %127
  %146 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %147 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %146, i32 0, i32 9
  store i32 62, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %142
  br label %189

149:                                              ; preds = %123
  %150 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %151 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %150, i32 0, i32 6
  store i32 150, i32* %151, align 8
  %152 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %153 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %152, i32 0, i32 8
  store i32 944, i32* %153, align 8
  %154 = load i8*, i8** @IL8_CAL_SLOTS, align 8
  %155 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %156 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %155, i32 0, i32 11
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** @IL8_CAL_SLOTS, align 8
  %158 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %159 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %158, i32 0, i32 10
  store i8* %157, i8** %159, align 8
  %160 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %161 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %160, i32 0, i32 9
  store i32 225, i32* %161, align 4
  %162 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %163 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %162, i32 0, i32 7
  store i32 55, i32* %163, align 4
  br label %189

164:                                              ; preds = %123
  br label %165

165:                                              ; preds = %123, %164
  %166 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %167 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %166, i32 0, i32 6
  store i32 150, i32* %167, align 8
  %168 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %169 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %168, i32 0, i32 8
  store i32 944, i32* %169, align 8
  %170 = load i8*, i8** @XAUI_CAL_SLOTS, align 8
  %171 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %172 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %171, i32 0, i32 11
  store i8* %170, i8** %172, align 8
  %173 = load i8*, i8** @XAUI_CAL_SLOTS, align 8
  %174 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %175 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %174, i32 0, i32 10
  store i8* %173, i8** %175, align 8
  %176 = call i64 (...) @nlm_is_xlp3xx()
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %165
  %179 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %180 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %179, i32 0, i32 9
  store i32 120, i32* %180, align 4
  %181 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %182 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %181, i32 0, i32 7
  store i32 52, i32* %182, align 4
  br label %188

183:                                              ; preds = %165
  %184 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %185 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %184, i32 0, i32 9
  store i32 225, i32* %185, align 4
  %186 = load %struct.xlp_port_ivars*, %struct.xlp_port_ivars** %2, align 8
  %187 = getelementptr inbounds %struct.xlp_port_ivars, %struct.xlp_port_ivars* %186, i32 0, i32 7
  store i32 55, i32* %187, align 4
  br label %188

188:                                              ; preds = %183, %178
  br label %189

189:                                              ; preds = %188, %149, %148
  ret void
}

declare dso_local i64 @nlm_is_xlp3xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
