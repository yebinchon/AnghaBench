; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_tx_hw_flushed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_tx_hw_flushed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.pbf_pN_cmd_regs = type { i32, i32, i32, i32 }
%struct.pbf_pN_buf_regs = type { i32, i32, i32, i32 }

@PBF_REG_TQ_OCCUPANCY_Q0 = common dso_local global i32 0, align 4
@PBF_REG_P0_TQ_OCCUPANCY = common dso_local global i32 0, align 4
@PBF_REG_TQ_LINES_FREED_CNT_Q0 = common dso_local global i32 0, align 4
@PBF_REG_P0_TQ_LINES_FREED_CNT = common dso_local global i32 0, align 4
@PBF_REG_TQ_OCCUPANCY_Q1 = common dso_local global i32 0, align 4
@PBF_REG_P1_TQ_OCCUPANCY = common dso_local global i32 0, align 4
@PBF_REG_TQ_LINES_FREED_CNT_Q1 = common dso_local global i32 0, align 4
@PBF_REG_P1_TQ_LINES_FREED_CNT = common dso_local global i32 0, align 4
@PBF_REG_TQ_OCCUPANCY_LB_Q = common dso_local global i32 0, align 4
@PBF_REG_P4_TQ_OCCUPANCY = common dso_local global i32 0, align 4
@PBF_REG_TQ_LINES_FREED_CNT_LB_Q = common dso_local global i32 0, align 4
@PBF_REG_P4_TQ_LINES_FREED_CNT = common dso_local global i32 0, align 4
@PBF_REG_INIT_CRD_Q0 = common dso_local global i32 0, align 4
@PBF_REG_P0_INIT_CRD = common dso_local global i32 0, align 4
@PBF_REG_CREDIT_Q0 = common dso_local global i32 0, align 4
@PBF_REG_P0_CREDIT = common dso_local global i32 0, align 4
@PBF_REG_INTERNAL_CRD_FREED_CNT_Q0 = common dso_local global i32 0, align 4
@PBF_REG_P0_INTERNAL_CRD_FREED_CNT = common dso_local global i32 0, align 4
@PBF_REG_INIT_CRD_Q1 = common dso_local global i32 0, align 4
@PBF_REG_P1_INIT_CRD = common dso_local global i32 0, align 4
@PBF_REG_CREDIT_Q1 = common dso_local global i32 0, align 4
@PBF_REG_P1_CREDIT = common dso_local global i32 0, align 4
@PBF_REG_INTERNAL_CRD_FREED_CNT_Q1 = common dso_local global i32 0, align 4
@PBF_REG_P1_INTERNAL_CRD_FREED_CNT = common dso_local global i32 0, align 4
@PBF_REG_INIT_CRD_LB_Q = common dso_local global i32 0, align 4
@PBF_REG_P4_INIT_CRD = common dso_local global i32 0, align 4
@PBF_REG_CREDIT_LB_Q = common dso_local global i32 0, align 4
@PBF_REG_P4_CREDIT = common dso_local global i32 0, align 4
@PBF_REG_INTERNAL_CRD_FREED_CNT_LB_Q = common dso_local global i32 0, align 4
@PBF_REG_P4_INTERNAL_CRD_FREED_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @bxe_tx_hw_flushed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_tx_hw_flushed(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x %struct.pbf_pN_cmd_regs], align 16
  %6 = alloca [3 x %struct.pbf_pN_buf_regs], align 16
  %7 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [3 x %struct.pbf_pN_cmd_regs], [3 x %struct.pbf_pN_cmd_regs]* %5, i64 0, i64 0
  %9 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %8, i32 0, i32 0
  store i32 0, i32* %9, align 16
  %10 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %8, i32 0, i32 1
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %12 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @PBF_REG_TQ_OCCUPANCY_Q0, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PBF_REG_P0_TQ_OCCUPANCY, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %10, align 4
  %20 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %8, i32 0, i32 2
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %22 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @PBF_REG_TQ_LINES_FREED_CNT_Q0, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @PBF_REG_P0_TQ_LINES_FREED_CNT, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %20, align 8
  %30 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %8, i32 0, i32 3
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %8, i64 1
  %32 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %31, i32 0, i32 0
  store i32 1, i32* %32, align 16
  %33 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %31, i32 0, i32 1
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %35 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @PBF_REG_TQ_OCCUPANCY_Q1, align 4
  br label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @PBF_REG_P1_TQ_OCCUPANCY, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %33, align 4
  %43 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %31, i32 0, i32 2
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %45 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @PBF_REG_TQ_LINES_FREED_CNT_Q1, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @PBF_REG_P1_TQ_LINES_FREED_CNT, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %43, align 8
  %53 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %31, i32 0, i32 3
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %31, i64 1
  %55 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %54, i32 0, i32 0
  store i32 4, i32* %55, align 16
  %56 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %54, i32 0, i32 1
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %58 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @PBF_REG_TQ_OCCUPANCY_LB_Q, align 4
  br label %64

62:                                               ; preds = %51
  %63 = load i32, i32* @PBF_REG_P4_TQ_OCCUPANCY, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %56, align 4
  %66 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %54, i32 0, i32 2
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %68 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @PBF_REG_TQ_LINES_FREED_CNT_LB_Q, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @PBF_REG_P4_TQ_LINES_FREED_CNT, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %66, align 8
  %76 = getelementptr inbounds %struct.pbf_pN_cmd_regs, %struct.pbf_pN_cmd_regs* %54, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds [3 x %struct.pbf_pN_buf_regs], [3 x %struct.pbf_pN_buf_regs]* %6, i64 0, i64 0
  %78 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %77, i32 0, i32 0
  store i32 0, i32* %78, align 16
  %79 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %77, i32 0, i32 1
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %81 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @PBF_REG_INIT_CRD_Q0, align 4
  br label %87

85:                                               ; preds = %74
  %86 = load i32, i32* @PBF_REG_P0_INIT_CRD, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %79, align 4
  %89 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %77, i32 0, i32 2
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %91 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @PBF_REG_CREDIT_Q0, align 4
  br label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @PBF_REG_P0_CREDIT, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %89, align 8
  %99 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %77, i32 0, i32 3
  %100 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %101 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @PBF_REG_INTERNAL_CRD_FREED_CNT_Q0, align 4
  br label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @PBF_REG_P0_INTERNAL_CRD_FREED_CNT, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  store i32 %108, i32* %99, align 4
  %109 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %77, i64 1
  %110 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %109, i32 0, i32 0
  store i32 1, i32* %110, align 16
  %111 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %109, i32 0, i32 1
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %113 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* @PBF_REG_INIT_CRD_Q1, align 4
  br label %119

117:                                              ; preds = %107
  %118 = load i32, i32* @PBF_REG_P1_INIT_CRD, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  store i32 %120, i32* %111, align 4
  %121 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %109, i32 0, i32 2
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %123 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @PBF_REG_CREDIT_Q1, align 4
  br label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @PBF_REG_P1_CREDIT, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %121, align 8
  %131 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %109, i32 0, i32 3
  %132 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %133 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* @PBF_REG_INTERNAL_CRD_FREED_CNT_Q1, align 4
  br label %139

137:                                              ; preds = %129
  %138 = load i32, i32* @PBF_REG_P1_INTERNAL_CRD_FREED_CNT, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  store i32 %140, i32* %131, align 4
  %141 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %109, i64 1
  %142 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %141, i32 0, i32 0
  store i32 4, i32* %142, align 16
  %143 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %141, i32 0, i32 1
  %144 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %145 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i32, i32* @PBF_REG_INIT_CRD_LB_Q, align 4
  br label %151

149:                                              ; preds = %139
  %150 = load i32, i32* @PBF_REG_P4_INIT_CRD, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  store i32 %152, i32* %143, align 4
  %153 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %141, i32 0, i32 2
  %154 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %155 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* @PBF_REG_CREDIT_LB_Q, align 4
  br label %161

159:                                              ; preds = %151
  %160 = load i32, i32* @PBF_REG_P4_CREDIT, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  store i32 %162, i32* %153, align 8
  %163 = getelementptr inbounds %struct.pbf_pN_buf_regs, %struct.pbf_pN_buf_regs* %141, i32 0, i32 3
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %165 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* @PBF_REG_INTERNAL_CRD_FREED_CNT_LB_Q, align 4
  br label %171

169:                                              ; preds = %161
  %170 = load i32, i32* @PBF_REG_P4_INTERNAL_CRD_FREED_CNT, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  store i32 %172, i32* %163, align 4
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %185, %171
  %174 = load i32, i32* %7, align 4
  %175 = getelementptr inbounds [3 x %struct.pbf_pN_cmd_regs], [3 x %struct.pbf_pN_cmd_regs]* %5, i64 0, i64 0
  %176 = call i32 @ARRAY_SIZE(%struct.pbf_pN_cmd_regs* %175)
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %173
  %179 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x %struct.pbf_pN_cmd_regs], [3 x %struct.pbf_pN_cmd_regs]* %5, i64 0, i64 %181
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @bxe_pbf_pN_cmd_flushed(%struct.bxe_softc* %179, %struct.pbf_pN_cmd_regs* %182, i32 %183)
  br label %185

185:                                              ; preds = %178
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %173

188:                                              ; preds = %173
  store i32 0, i32* %7, align 4
  br label %189

189:                                              ; preds = %203, %188
  %190 = load i32, i32* %7, align 4
  %191 = getelementptr inbounds [3 x %struct.pbf_pN_buf_regs], [3 x %struct.pbf_pN_buf_regs]* %6, i64 0, i64 0
  %192 = bitcast %struct.pbf_pN_buf_regs* %191 to %struct.pbf_pN_cmd_regs*
  %193 = call i32 @ARRAY_SIZE(%struct.pbf_pN_cmd_regs* %192)
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %189
  %196 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [3 x %struct.pbf_pN_buf_regs], [3 x %struct.pbf_pN_buf_regs]* %6, i64 0, i64 %198
  %200 = bitcast %struct.pbf_pN_buf_regs* %199 to %struct.pbf_pN_cmd_regs*
  %201 = load i32, i32* %4, align 4
  %202 = call i32 @bxe_pbf_pN_buf_flushed(%struct.bxe_softc* %196, %struct.pbf_pN_cmd_regs* %200, i32 %201)
  br label %203

203:                                              ; preds = %195
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %189

206:                                              ; preds = %189
  ret void
}

declare dso_local i32 @CHIP_IS_E3B0(%struct.bxe_softc*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.pbf_pN_cmd_regs*) #1

declare dso_local i32 @bxe_pbf_pN_cmd_flushed(%struct.bxe_softc*, %struct.pbf_pN_cmd_regs*, i32) #1

declare dso_local i32 @bxe_pbf_pN_buf_flushed(%struct.bxe_softc*, %struct.pbf_pN_cmd_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
