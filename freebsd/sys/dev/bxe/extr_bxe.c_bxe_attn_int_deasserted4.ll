; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_deasserted4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_deasserted4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@AEU_INPUTS_ATTN_BITS_PGLUE_HW_INTERRUPT = common dso_local global i32 0, align 4
@PGLUE_B_REG_PGLUE_B_INT_STS_CLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PGLUE hw attention 0x%08x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@PGLUE_B_PGLUE_B_INT_STS_REG_ADDRESS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_ADDRESS_ERROR\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_INCORRECT_RCV_BEHAVIOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_INCORRECT_RCV_BEHAVIOR\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_VF_LENGTH_VIOLATION_ATTN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_VF_LENGTH_VIOLATION_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_VF_GRC_SPACE_VIOLATION_ATTN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_VF_GRC_SPACE_VIOLATION_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_VF_MSIX_BAR_VIOLATION_ATTN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_VF_MSIX_BAR_VIOLATION_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_ERROR_ATTN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_ERROR_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_IN_TWO_RCBS_ATTN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_IN_TWO_RCBS_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_CSSNOOP_FIFO_OVERFLOW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_CSSNOOP_FIFO_OVERFLOW\0A\00", align 1
@AEU_INPUTS_ATTN_BITS_ATC_HW_INTERRUPT = common dso_local global i32 0, align 4
@ATC_REG_ATC_INT_STS_CLR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"ATC hw attention 0x%08x\0A\00", align 1
@ATC_ATC_INT_STS_REG_ADDRESS_ERROR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"ATC_ATC_INT_STS_REG_ADDRESS_ERROR\0A\00", align 1
@ATC_ATC_INT_STS_REG_ATC_TCPL_TO_NOT_PEND = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"ATC_ATC_INT_STS_REG_ATC_TCPL_TO_NOT_PEND\0A\00", align 1
@ATC_ATC_INT_STS_REG_ATC_GPA_MULTIPLE_HITS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"ATC_ATC_INT_STS_REG_ATC_GPA_MULTIPLE_HITS\0A\00", align 1
@ATC_ATC_INT_STS_REG_ATC_RCPL_TO_EMPTY_CNT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"ATC_ATC_INT_STS_REG_ATC_RCPL_TO_EMPTY_CNT\0A\00", align 1
@ATC_ATC_INT_STS_REG_ATC_TCPL_ERROR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"ATC_ATC_INT_STS_REG_ATC_TCPL_ERROR\0A\00", align 1
@ATC_ATC_INT_STS_REG_ATC_IREQ_LESS_THAN_STU = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [44 x i8] c"ATC_ATC_INT_STS_REG_ATC_IREQ_LESS_THAN_STU\0A\00", align 1
@AEU_INPUTS_ATTN_BITS_PGLUE_PARITY_ERROR = common dso_local global i32 0, align 4
@AEU_INPUTS_ATTN_BITS_ATC_PARITY_ERROR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [36 x i8] c"FATAL parity attention set4 0x%08x\0A\00", align 1
@BXE_ERR_MISC = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @bxe_attn_int_deasserted4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_attn_int_deasserted4(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AEU_INPUTS_ATTN_BITS_PGLUE_HW_INTERRUPT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %92

12:                                               ; preds = %2
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = load i32, i32* @PGLUE_B_REG_PGLUE_B_INT_STS_CLR, align 4
  %15 = call i32 @REG_RD(%struct.bxe_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_ADDRESS_ERROR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %12
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_INCORRECT_RCV_BEHAVIOR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %34 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %42 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_VF_LENGTH_VIOLATION_ATTN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %50 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %49, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_VF_GRC_SPACE_VIOLATION_ATTN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %58 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %57, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_VF_MSIX_BAR_VIOLATION_ATTN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %66 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %65, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_ERROR_ATTN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %74 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_IN_TWO_RCBS_ATTN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %82 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_CSSNOOP_FIFO_OVERFLOW, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %90 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %89, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %83
  br label %92

92:                                               ; preds = %91, %2
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @AEU_INPUTS_ATTN_BITS_ATC_HW_INTERRUPT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %153

97:                                               ; preds = %92
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %99 = load i32, i32* @ATC_REG_ATC_INT_STS_CLR, align 4
  %100 = call i32 @REG_RD(%struct.bxe_softc* %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %102)
  %104 = load i64, i64* @TRUE, align 8
  store i64 %104, i64* %6, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @ATC_ATC_INT_STS_REG_ADDRESS_ERROR, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %111 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %97
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @ATC_ATC_INT_STS_REG_ATC_TCPL_TO_NOT_PEND, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %119 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @ATC_ATC_INT_STS_REG_ATC_GPA_MULTIPLE_HITS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %127 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %126, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @ATC_ATC_INT_STS_REG_ATC_RCPL_TO_EMPTY_CNT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %135 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %134, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @ATC_ATC_INT_STS_REG_ATC_TCPL_ERROR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %143 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %142, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @ATC_ATC_INT_STS_REG_ATC_IREQ_LESS_THAN_STU, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %151 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %150, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %144
  br label %153

153:                                              ; preds = %152, %92
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @AEU_INPUTS_ATTN_BITS_PGLUE_PARITY_ERROR, align 4
  %156 = load i32, i32* @AEU_INPUTS_ATTN_BITS_ATC_PARITY_ERROR, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @AEU_INPUTS_ATTN_BITS_PGLUE_PARITY_ERROR, align 4
  %164 = load i32, i32* @AEU_INPUTS_ATTN_BITS_ATC_PARITY_ERROR, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 %166)
  %168 = load i64, i64* @TRUE, align 8
  store i64 %168, i64* %6, align 8
  br label %169

169:                                              ; preds = %160, %153
  %170 = load i64, i64* %6, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %174 = load i32, i32* @BXE_ERR_MISC, align 4
  %175 = call i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc* %173, i32 %174)
  %176 = load i32, i32* @taskqueue_thread, align 4
  %177 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %178 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %177, i32 0, i32 0
  %179 = load i32, i32* @hz, align 4
  %180 = sdiv i32 %179, 10
  %181 = call i32 @taskqueue_enqueue_timeout(i32 %176, i32* %178, i32 %180)
  br label %182

182:                                              ; preds = %172, %169
  ret void
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc*, i32) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
