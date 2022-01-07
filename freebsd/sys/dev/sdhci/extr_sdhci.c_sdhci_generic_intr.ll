; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_generic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_generic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SDHCI_INT_STATUS = common dso_local global i32 0, align 4
@sdhci_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Interrupt %#x\0A\00", align 1
@SDHCI_INT_TUNEERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Tuning error indicated\0A\00", align 1
@SDHCI_RETUNE_REQ_RESET = common dso_local global i32 0, align 4
@MMC_ERR_BADCRC = common dso_local global i32 0, align 4
@SDHCI_INT_RETUNE = common dso_local global i32 0, align 4
@SDHCI_RETUNE_REQ_NEEDED = common dso_local global i32 0, align 4
@SDHCI_INT_CARD_INSERT = common dso_local global i32 0, align 4
@SDHCI_INT_CARD_REMOVE = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_INT_CMD_MASK = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_MASK = common dso_local global i32 0, align 4
@SDHCI_INT_CMD_ERROR_MASK = common dso_local global i32 0, align 4
@SDHCI_INT_ACMD12ERR = common dso_local global i32 0, align 4
@SDHCI_ACMD12_ERR = common dso_local global i32 0, align 4
@SDHCI_INT_BUS_POWER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Card is consuming too much power!\0A\00", align 1
@SDHCI_INT_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Unexpected interrupt 0x%08x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_generic_intr(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  %6 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %7 = call i32 @SDHCI_LOCK(%struct.sdhci_slot* %6)
  %8 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %9 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %10 = call i32 @RD4(%struct.sdhci_slot* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %1
  %17 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %18 = call i32 @SDHCI_UNLOCK(%struct.sdhci_slot* %17)
  br label %232

19:                                               ; preds = %13
  %20 = load i32, i32* @sdhci_debug, align 4
  %21 = icmp sgt i32 %20, 2
  %22 = zext i1 %21 to i32
  %23 = call i64 @__predict_false(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SDHCI_INT_TUNEERR, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @__predict_false(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %37 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %38 = load i32, i32* @SDHCI_INT_TUNEERR, align 4
  %39 = call i32 @WR4(%struct.sdhci_slot* %36, i32 %37, i32 %38)
  %40 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %41 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @SDHCI_RETUNE_REQ_RESET, align 4
  %43 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %44 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %48 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %35
  %52 = load i32, i32* @MMC_ERR_BADCRC, align 4
  %53 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %54 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %58 = call i32 @sdhci_finish_command(%struct.sdhci_slot* %57)
  br label %59

59:                                               ; preds = %51, %35
  br label %60

60:                                               ; preds = %59, %29
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @SDHCI_INT_RETUNE, align 4
  %63 = and i32 %61, %62
  %64 = call i64 @__predict_false(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* @SDHCI_RETUNE_REQ_NEEDED, align 4
  %68 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %69 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %60
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @SDHCI_INT_CARD_INSERT, align 4
  %75 = load i32, i32* @SDHCI_INT_CARD_REMOVE, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %128

79:                                               ; preds = %72
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @SDHCI_INT_CARD_INSERT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* @SDHCI_INT_CARD_INSERT, align 4
  %86 = load i32, i32* @SDHCI_INT_CARD_REMOVE, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %90 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %79
  %96 = load i32, i32* @SDHCI_INT_CARD_REMOVE, align 4
  br label %99

97:                                               ; preds = %79
  %98 = load i32, i32* @SDHCI_INT_CARD_INSERT, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %102 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %106 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %107 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %108 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @WR4(%struct.sdhci_slot* %105, i32 %106, i32 %109)
  %111 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %112 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %113 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %114 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @WR4(%struct.sdhci_slot* %111, i32 %112, i32 %115)
  %117 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %118 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @SDHCI_INT_CARD_INSERT, align 4
  %121 = load i32, i32* @SDHCI_INT_CARD_REMOVE, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %119, %122
  %124 = call i32 @WR4(%struct.sdhci_slot* %117, i32 %118, i32 %123)
  %125 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @sdhci_handle_card_present_locked(%struct.sdhci_slot* %125, i32 %126)
  br label %128

128:                                              ; preds = %99, %72
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @SDHCI_INT_CMD_MASK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %135 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @SDHCI_INT_CMD_MASK, align 4
  %138 = and i32 %136, %137
  %139 = call i32 @WR4(%struct.sdhci_slot* %134, i32 %135, i32 %138)
  %140 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @SDHCI_INT_CMD_MASK, align 4
  %143 = and i32 %141, %142
  %144 = call i32 @sdhci_cmd_irq(%struct.sdhci_slot* %140, i32 %143)
  br label %145

145:                                              ; preds = %133, %128
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* @SDHCI_INT_DATA_MASK, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %145
  %151 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %152 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @SDHCI_INT_DATA_MASK, align 4
  %155 = and i32 %153, %154
  %156 = call i32 @WR4(%struct.sdhci_slot* %151, i32 %152, i32 %155)
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @SDHCI_INT_CMD_ERROR_MASK, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %150
  %162 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* @SDHCI_INT_DATA_MASK, align 4
  %165 = and i32 %163, %164
  %166 = call i32 @sdhci_data_irq(%struct.sdhci_slot* %162, i32 %165)
  br label %167

167:                                              ; preds = %161, %150
  br label %168

168:                                              ; preds = %167, %145
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* @SDHCI_INT_ACMD12ERR, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %168
  %174 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %175 = load i32, i32* @SDHCI_ACMD12_ERR, align 4
  %176 = call i32 @RD2(%struct.sdhci_slot* %174, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %178 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %179 = load i32, i32* @SDHCI_INT_ACMD12ERR, align 4
  %180 = call i32 @WR4(%struct.sdhci_slot* %177, i32 %178, i32 %179)
  %181 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @sdhci_acmd_irq(%struct.sdhci_slot* %181, i32 %182)
  br label %184

184:                                              ; preds = %173, %168
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* @SDHCI_INT_BUS_POWER, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %191 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %192 = load i32, i32* @SDHCI_INT_BUS_POWER, align 4
  %193 = call i32 @WR4(%struct.sdhci_slot* %190, i32 %191, i32 %192)
  %194 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %195 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %194, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %196

196:                                              ; preds = %189, %184
  %197 = load i32, i32* @SDHCI_INT_ERROR, align 4
  %198 = load i32, i32* @SDHCI_INT_TUNEERR, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @SDHCI_INT_RETUNE, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @SDHCI_INT_CARD_INSERT, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @SDHCI_INT_CARD_REMOVE, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @SDHCI_INT_CMD_MASK, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @SDHCI_INT_DATA_MASK, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @SDHCI_INT_ACMD12ERR, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @SDHCI_INT_BUS_POWER, align 4
  %213 = or i32 %211, %212
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %3, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %3, align 4
  %217 = load i32, i32* %3, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %196
  %220 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %221 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %222 = load i32, i32* %3, align 4
  %223 = call i32 @WR4(%struct.sdhci_slot* %220, i32 %221, i32 %222)
  %224 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %225 = load i32, i32* %3, align 4
  %226 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %224, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %225)
  %227 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %228 = call i32 @sdhci_dumpregs(%struct.sdhci_slot* %227)
  br label %229

229:                                              ; preds = %219, %196
  %230 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %231 = call i32 @SDHCI_UNLOCK(%struct.sdhci_slot* %230)
  br label %232

232:                                              ; preds = %229, %16
  ret void
}

declare dso_local i32 @SDHCI_LOCK(%struct.sdhci_slot*) #1

declare dso_local i32 @RD4(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @SDHCI_UNLOCK(%struct.sdhci_slot*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*, ...) #1

declare dso_local i32 @WR4(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @sdhci_finish_command(%struct.sdhci_slot*) #1

declare dso_local i32 @sdhci_handle_card_present_locked(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @sdhci_cmd_irq(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @sdhci_data_irq(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @RD2(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @sdhci_acmd_irq(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
