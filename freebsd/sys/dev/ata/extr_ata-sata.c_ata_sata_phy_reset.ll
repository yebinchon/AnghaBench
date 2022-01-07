; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-sata.c_ata_sata_phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-sata.c_ata_sata_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATA_SCONTROL = common dso_local global i32 0, align 4
@ATA_SC_DET_MASK = common dso_local global i32 0, align 4
@ATA_SC_DET_IDLE = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_PARTIAL = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_SLUMBER = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"hard reset ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"p%d: hard reset ...\0A\00", align 1
@ATA_SC_SPD_SPEED_GEN1 = common dso_local global i32 0, align 4
@ATA_SC_SPD_SPEED_GEN2 = common dso_local global i32 0, align 4
@ATA_SC_SPD_SPEED_GEN3 = common dso_local global i32 0, align 4
@ATA_SC_DET_RESET = common dso_local global i32 0, align 4
@ATA_SERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"hard reset failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"p%d: hard reset failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sata_phy_reset(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.ata_channel* @device_get_softc(i32 %14)
  store %struct.ata_channel* %15, %struct.ata_channel** %8, align 8
  %16 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %17 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 0, %21 ], [ %23, %22 ]
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  %37 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ATA_SCONTROL, align 4
  %40 = call i64 @ata_sata_scr_read(%struct.ata_channel* %37, i32 %38, i32 %39, i32* %12)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %217

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @ATA_SC_DET_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @ATA_SC_DET_IDLE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ATA_SCONTROL, align 4
  %53 = load i32, i32* @ATA_SC_DET_IDLE, align 4
  %54 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %55 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %63

59:                                               ; preds = %49
  %60 = load i32, i32* @ATA_SC_IPM_DIS_PARTIAL, align 4
  %61 = load i32, i32* @ATA_SC_IPM_DIS_SLUMBER, align 4
  %62 = or i32 %60, %61
  br label %63

63:                                               ; preds = %59, %58
  %64 = phi i32 [ 0, %58 ], [ %62, %59 ]
  %65 = or i32 %53, %64
  %66 = call i64 @ata_sata_scr_write(%struct.ata_channel* %50, i32 %51, i32 %52, i32 %65)
  %67 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @ata_sata_connect(%struct.ata_channel* %67, i32 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %217

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i64, i64* @bootverbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %85

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32, i8*, ...) @device_printf(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %78
  br label %86

86:                                               ; preds = %85, %72
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @ATA_SC_SPD_SPEED_GEN1, align 4
  store i32 %90, i32* %13, align 4
  br label %104

91:                                               ; preds = %86
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @ATA_SC_SPD_SPEED_GEN2, align 4
  store i32 %95, i32* %13, align 4
  br label %103

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @ATA_SC_SPD_SPEED_GEN3, align 4
  store i32 %100, i32* %13, align 4
  br label %102

101:                                              ; preds = %96
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %101, %99
  br label %103

103:                                              ; preds = %102, %94
  br label %104

104:                                              ; preds = %103, %89
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %194, %104
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 10
  br i1 %107, label %108, label %197

108:                                              ; preds = %105
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %142, %108
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 10
  br i1 %111, label %112, label %145

112:                                              ; preds = %109
  %113 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @ATA_SCONTROL, align 4
  %116 = load i32, i32* @ATA_SC_DET_RESET, align 4
  %117 = load i32, i32* %13, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @ATA_SC_IPM_DIS_PARTIAL, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @ATA_SC_IPM_DIS_SLUMBER, align 4
  %122 = or i32 %120, %121
  %123 = call i64 @ata_sata_scr_write(%struct.ata_channel* %113, i32 %114, i32 %115, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %112
  br label %198

126:                                              ; preds = %112
  %127 = call i32 @ata_udelay(i32 100)
  %128 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @ATA_SCONTROL, align 4
  %131 = call i64 @ata_sata_scr_read(%struct.ata_channel* %128, i32 %129, i32 %130, i32* %12)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %198

134:                                              ; preds = %126
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @ATA_SC_DET_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @ATA_SC_DET_RESET, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %145

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %109

145:                                              ; preds = %140, %109
  %146 = call i32 @ata_udelay(i32 5000)
  store i32 0, i32* %9, align 4
  br label %147

147:                                              ; preds = %190, %145
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %148, 10
  br i1 %149, label %150, label %193

150:                                              ; preds = %147
  %151 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @ATA_SCONTROL, align 4
  %154 = load i32, i32* @ATA_SC_DET_IDLE, align 4
  %155 = load i32, i32* %13, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %158 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %150
  br label %166

162:                                              ; preds = %150
  %163 = load i32, i32* @ATA_SC_IPM_DIS_PARTIAL, align 4
  %164 = load i32, i32* @ATA_SC_IPM_DIS_SLUMBER, align 4
  %165 = or i32 %163, %164
  br label %166

166:                                              ; preds = %162, %161
  %167 = phi i32 [ 0, %161 ], [ %165, %162 ]
  %168 = or i32 %156, %167
  %169 = call i64 @ata_sata_scr_write(%struct.ata_channel* %151, i32 %152, i32 %153, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %198

172:                                              ; preds = %166
  %173 = call i32 @ata_udelay(i32 100)
  %174 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @ATA_SCONTROL, align 4
  %177 = call i64 @ata_sata_scr_read(%struct.ata_channel* %174, i32 %175, i32 %176, i32* %12)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %198

180:                                              ; preds = %172
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @ATA_SC_DET_MASK, align 4
  %183 = and i32 %181, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @ata_sata_connect(%struct.ata_channel* %186, i32 %187, i32 0)
  store i32 %188, i32* %4, align 4
  br label %217

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  br label %147

193:                                              ; preds = %147
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  br label %105

197:                                              ; preds = %105
  br label %198

198:                                              ; preds = %197, %179, %171, %133, %125
  %199 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @ATA_SERROR, align 4
  %202 = call i64 @ata_sata_scr_write(%struct.ata_channel* %199, i32 %200, i32 %201, i32 -1)
  %203 = load i64, i64* @bootverbose, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %198
  %206 = load i32, i32* %6, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i32, i32* %5, align 4
  %210 = call i32 (i32, i8*, ...) @device_printf(i32 %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %215

211:                                              ; preds = %205
  %212 = load i32, i32* %5, align 4
  %213 = load i32, i32* %6, align 4
  %214 = call i32 (i32, i8*, ...) @device_printf(i32 %212, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %211, %208
  br label %216

216:                                              ; preds = %215, %198
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %216, %185, %63, %42
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i64 @ata_sata_scr_read(%struct.ata_channel*, i32, i32, i32*) #1

declare dso_local i64 @ata_sata_scr_write(%struct.ata_channel*, i32, i32, i32) #1

declare dso_local i32 @ata_sata_connect(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ata_udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
