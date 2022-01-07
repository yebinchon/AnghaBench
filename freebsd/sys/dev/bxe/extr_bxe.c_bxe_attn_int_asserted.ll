; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_asserted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_asserted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MISC_REG_AEU_MASK_ATTN_FUNC_1 = common dso_local global i32 0, align 4
@MISC_REG_AEU_MASK_ATTN_FUNC_0 = common dso_local global i32 0, align 4
@NIG_REG_MASK_INTERRUPT_PORT1 = common dso_local global i32 0, align 4
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"IGU ERROR attn=0x%08x\0A\00", align 1
@HW_LOCK_RESOURCE_PORT0_ATT_MASK = common dso_local global i64 0, align 8
@DBG_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"aeu_mask 0x%08x newly asserted 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"new mask 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"attn_state 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"new state 0x%08x\0A\00", align 1
@ATTN_HARD_WIRED_MASK = common dso_local global i32 0, align 4
@ATTN_NIG_FOR_FUNC = common dso_local global i32 0, align 4
@ATTN_SW_TIMER_4_FUNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"ATTN_SW_TIMER_4_FUNC!\0A\00", align 1
@GPIO_2_FUNC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"GPIO_2_FUNC!\0A\00", align 1
@GPIO_3_FUNC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"GPIO_3_FUNC!\0A\00", align 1
@GPIO_4_FUNC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"GPIO_4_FUNC!\0A\00", align 1
@ATTN_GENERAL_ATTN_1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_1!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_1 = common dso_local global i32 0, align 4
@ATTN_GENERAL_ATTN_2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_2!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_2 = common dso_local global i32 0, align 4
@ATTN_GENERAL_ATTN_3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_3!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_3 = common dso_local global i32 0, align 4
@ATTN_GENERAL_ATTN_4 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_4!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_4 = common dso_local global i32 0, align 4
@ATTN_GENERAL_ATTN_5 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_5!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_5 = common dso_local global i32 0, align 4
@ATTN_GENERAL_ATTN_6 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"ATTN_GENERAL_ATTN_6!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_6 = common dso_local global i32 0, align 4
@INT_BLOCK_HC = common dso_local global i64 0, align 8
@HC_REG_COMMAND_REG = common dso_local global i32 0, align 4
@COMMAND_REG_ATTN_BITS_SET = common dso_local global i32 0, align 4
@BAR_IGU_INTMEM = common dso_local global i32 0, align 4
@IGU_CMD_ATTN_BIT_SET_UPPER = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [40 x i8] c"about to mask 0x%08x at %s addr 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"HC\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"IGU\00", align 1
@IGU_REG_ATTENTION_ACK_BITS = common dso_local global i32 0, align 4
@MAX_IGU_ATTN_ACK_TO = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [34 x i8] c"Failed to verify IGU ack on time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @bxe_attn_int_asserted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_attn_int_asserted(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = call i32 @SC_PORT(%struct.bxe_softc* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_1, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_0, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT1, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %29
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %43 = load i64, i64* @HW_LOCK_RESOURCE_PORT0_ATT_MASK, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 @bxe_acquire_hw_lock(%struct.bxe_softc* %42, i64 %46)
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @REG_RD(%struct.bxe_softc* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %52 = load i32, i32* @DBG_INTR, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %51, i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 1023
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %62 = load i32, i32* @DBG_INTR, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %61, i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @REG_WR(%struct.bxe_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %70 = load i64, i64* @HW_LOCK_RESOURCE_PORT0_ATT_MASK, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @bxe_release_hw_lock(%struct.bxe_softc* %69, i64 %73)
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %76 = load i32, i32* @DBG_INTR, align 4
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %78 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %75, i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %83 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %87 = load i32, i32* @DBG_INTR, align 4
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %89 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %86, i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @ATTN_HARD_WIRED_MASK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %230

96:                                               ; preds = %41
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @ATTN_NIG_FOR_FUNC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %103 = call i32 @bxe_acquire_phy_lock(%struct.bxe_softc* %102)
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @REG_RD(%struct.bxe_softc* %104, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @REG_WR(%struct.bxe_softc* %110, i32 %111, i32 0)
  %113 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %114 = call i32 @bxe_link_attn(%struct.bxe_softc* %113)
  br label %115

115:                                              ; preds = %109, %101
  br label %116

116:                                              ; preds = %115, %96
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @ATTN_SW_TIMER_4_FUNC, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %123 = load i32, i32* @DBG_INTR, align 4
  %124 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %122, i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %121, %116
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @GPIO_2_FUNC, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %132 = load i32, i32* @DBG_INTR, align 4
  %133 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %131, i32 %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %125
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @GPIO_3_FUNC, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %141 = load i32, i32* @DBG_INTR, align 4
  %142 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %140, i32 %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %143

143:                                              ; preds = %139, %134
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @GPIO_4_FUNC, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %150 = load i32, i32* @DBG_INTR, align 4
  %151 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %149, i32 %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %152

152:                                              ; preds = %148, %143
  %153 = load i32, i32* %5, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %192

155:                                              ; preds = %152
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @ATTN_GENERAL_ATTN_1, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %162 = load i32, i32* @DBG_INTR, align 4
  %163 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %161, i32 %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %165 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_1, align 4
  %166 = call i32 @REG_WR(%struct.bxe_softc* %164, i32 %165, i32 0)
  br label %167

167:                                              ; preds = %160, %155
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @ATTN_GENERAL_ATTN_2, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %167
  %173 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %174 = load i32, i32* @DBG_INTR, align 4
  %175 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %173, i32 %174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %176 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %177 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_2, align 4
  %178 = call i32 @REG_WR(%struct.bxe_softc* %176, i32 %177, i32 0)
  br label %179

179:                                              ; preds = %172, %167
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @ATTN_GENERAL_ATTN_3, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %186 = load i32, i32* @DBG_INTR, align 4
  %187 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %185, i32 %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %188 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %189 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_3, align 4
  %190 = call i32 @REG_WR(%struct.bxe_softc* %188, i32 %189, i32 0)
  br label %191

191:                                              ; preds = %184, %179
  br label %229

192:                                              ; preds = %152
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* @ATTN_GENERAL_ATTN_4, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %199 = load i32, i32* @DBG_INTR, align 4
  %200 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %198, i32 %199, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %201 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %202 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_4, align 4
  %203 = call i32 @REG_WR(%struct.bxe_softc* %201, i32 %202, i32 0)
  br label %204

204:                                              ; preds = %197, %192
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @ATTN_GENERAL_ATTN_5, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  %210 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %211 = load i32, i32* @DBG_INTR, align 4
  %212 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %210, i32 %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %213 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %214 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_5, align 4
  %215 = call i32 @REG_WR(%struct.bxe_softc* %213, i32 %214, i32 0)
  br label %216

216:                                              ; preds = %209, %204
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* @ATTN_GENERAL_ATTN_6, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %223 = load i32, i32* @DBG_INTR, align 4
  %224 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %222, i32 %223, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %225 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %226 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_6, align 4
  %227 = call i32 @REG_WR(%struct.bxe_softc* %225, i32 %226, i32 0)
  br label %228

228:                                              ; preds = %221, %216
  br label %229

229:                                              ; preds = %228, %191
  br label %230

230:                                              ; preds = %229, %41
  %231 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %232 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @INT_BLOCK_HC, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load i32, i32* @HC_REG_COMMAND_REG, align 4
  %239 = load i32, i32* %5, align 4
  %240 = mul nsw i32 %239, 32
  %241 = add nsw i32 %238, %240
  %242 = load i32, i32* @COMMAND_REG_ATTN_BITS_SET, align 4
  %243 = add nsw i32 %241, %242
  store i32 %243, i32* %10, align 4
  br label %249

244:                                              ; preds = %230
  %245 = load i32, i32* @BAR_IGU_INTMEM, align 4
  %246 = load i32, i32* @IGU_CMD_ATTN_BIT_SET_UPPER, align 4
  %247 = mul nsw i32 %246, 8
  %248 = add nsw i32 %245, %247
  store i32 %248, i32* %10, align 4
  br label %249

249:                                              ; preds = %244, %237
  %250 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %251 = load i32, i32* @DBG_INTR, align 4
  %252 = load i32, i32* %4, align 4
  %253 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %254 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @INT_BLOCK_HC, align 8
  %258 = icmp eq i64 %256, %257
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %261 = load i32, i32* %10, align 4
  %262 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %250, i32 %251, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i32 %252, i8* %260, i32 %261)
  %263 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* %4, align 4
  %266 = call i32 @REG_WR(%struct.bxe_softc* %263, i32 %264, i32 %265)
  %267 = load i32, i32* %4, align 4
  %268 = load i32, i32* @ATTN_NIG_FOR_FUNC, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %310

271:                                              ; preds = %249
  %272 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %273 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @INT_BLOCK_HC, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %303

278:                                              ; preds = %271
  store i32 0, i32* %12, align 4
  br label %279

279:                                              ; preds = %293, %278
  %280 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %281 = load i32, i32* @IGU_REG_ATTENTION_ACK_BITS, align 4
  %282 = call i32 @REG_RD(%struct.bxe_softc* %280, i32 %281)
  store i32 %282, i32* %11, align 4
  br label %283

283:                                              ; preds = %279
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* @ATTN_NIG_FOR_FUNC, align 4
  %286 = and i32 %284, %285
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %12, align 4
  %291 = load i32, i32* @MAX_IGU_ATTN_ACK_TO, align 4
  %292 = icmp slt i32 %290, %291
  br label %293

293:                                              ; preds = %288, %283
  %294 = phi i1 [ false, %283 ], [ %292, %288 ]
  br i1 %294, label %279, label %295

295:                                              ; preds = %293
  %296 = load i32, i32* %11, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %295
  %299 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %300 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %299, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  br label %301

301:                                              ; preds = %298, %295
  %302 = call i32 (...) @mb()
  br label %303

303:                                              ; preds = %301, %271
  %304 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* %9, align 4
  %307 = call i32 @REG_WR(%struct.bxe_softc* %304, i32 %305, i32 %306)
  %308 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %309 = call i32 @bxe_release_phy_lock(%struct.bxe_softc* %308)
  br label %310

310:                                              ; preds = %303, %249
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i32 @bxe_acquire_hw_lock(%struct.bxe_softc*, i64) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @bxe_release_hw_lock(%struct.bxe_softc*, i64) #1

declare dso_local i32 @bxe_acquire_phy_lock(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_link_attn(%struct.bxe_softc*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @bxe_release_phy_lock(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
