; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_info = type { i32*, i32*, i32*, i64* }

@AU_REG_IRQGLOB = common dso_local global i32 0, align 4
@AU_REG_CODECCHN = common dso_local global i32 0, align 4
@AU_REG_CODECST = common dso_local global i32 0, align 4
@AU_REG_CODECEN = common dso_local global i32 0, align 4
@AU_CDC_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"codec not ready, status 0x%x\0A\00", align 1
@AU_REG_ADB = common dso_local global i32 0, align 4
@AU_REG_RTBASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"dma check failed: 0x%x\0A\00", align 1
@AU_IRQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.au_info*)* @au_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au_init(i32 %0, %struct.au_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.au_info* %1, %struct.au_info** %4, align 8
  %7 = load %struct.au_info*, %struct.au_info** %4, align 8
  %8 = load i32, i32* @AU_REG_IRQGLOB, align 4
  %9 = call i32 @au_wr(%struct.au_info* %7, i32 0, i32 %8, i32 -1, i32 4)
  %10 = call i32 @DELAY(i32 100000)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %22, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.au_info*, %struct.au_info** %4, align 8
  %16 = load i32, i32* @AU_REG_CODECCHN, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 2
  %19 = add nsw i32 %16, %18
  %20 = call i32 @au_wr(%struct.au_info* %15, i32 0, i32 %19, i32 0, i32 4)
  %21 = call i32 @DELAY(i32 10000)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load %struct.au_info*, %struct.au_info** %4, align 8
  %27 = load i32, i32* @AU_REG_CODECST, align 4
  %28 = call i32 @au_wr(%struct.au_info* %26, i32 0, i32 %27, i32 32872, i32 4)
  %29 = call i32 @DELAY(i32 10000)
  %30 = load %struct.au_info*, %struct.au_info** %4, align 8
  %31 = load i32, i32* @AU_REG_CODECST, align 4
  %32 = call i32 @au_wr(%struct.au_info* %30, i32 0, i32 %31, i32 232, i32 4)
  %33 = call i32 @DELAY(i32 10000)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %45, %25
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 32
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.au_info*, %struct.au_info** %4, align 8
  %39 = load i32, i32* @AU_REG_CODECCHN, align 4
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 %40, 2
  %42 = add nsw i32 %39, %41
  %43 = call i32 @au_wr(%struct.au_info* %38, i32 0, i32 %42, i32 0, i32 4)
  %44 = call i32 @DELAY(i32 10000)
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %34

48:                                               ; preds = %34
  %49 = load %struct.au_info*, %struct.au_info** %4, align 8
  %50 = load i32, i32* @AU_REG_CODECST, align 4
  %51 = call i32 @au_wr(%struct.au_info* %49, i32 0, i32 %50, i32 232, i32 4)
  %52 = call i32 @DELAY(i32 10000)
  %53 = load %struct.au_info*, %struct.au_info** %4, align 8
  %54 = load i32, i32* @AU_REG_CODECEN, align 4
  %55 = call i32 @au_wr(%struct.au_info* %53, i32 0, i32 %54, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %66, %48
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 100
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @AU_CDC_READY, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br label %64

64:                                               ; preds = %59, %56
  %65 = phi i1 [ false, %56 ], [ %63, %59 ]
  br i1 %65, label %66, label %73

66:                                               ; preds = %64
  %67 = load %struct.au_info*, %struct.au_info** %4, align 8
  %68 = load i32, i32* @AU_REG_CODECST, align 4
  %69 = call i32 @au_rd(%struct.au_info* %67, i32 0, i32 %68, i32 4)
  store i32 %69, i32* %5, align 4
  %70 = call i32 @DELAY(i32 1000)
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %56

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 100
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %93, %80
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 32
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 103
  %87 = load %struct.au_info*, %struct.au_info** %4, align 8
  %88 = getelementptr inbounds %struct.au_info, %struct.au_info* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %81

96:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %107, %96
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 128
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load %struct.au_info*, %struct.au_info** %4, align 8
  %102 = getelementptr inbounds %struct.au_info, %struct.au_info* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 127, i32* %106, align 4
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %97

110:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %121, %110
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 128
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load %struct.au_info*, %struct.au_info** %4, align 8
  %116 = getelementptr inbounds %struct.au_info, %struct.au_info* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 31, i32* %120, align 4
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %111

124:                                              ; preds = %111
  %125 = load %struct.au_info*, %struct.au_info** %4, align 8
  %126 = load i32, i32* @AU_REG_ADB, align 4
  %127 = call i32 @au_wr(%struct.au_info* %125, i32 0, i32 %126, i32 0, i32 4)
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %138, %124
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %129, 124
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load %struct.au_info*, %struct.au_info** %4, align 8
  %133 = load i32, i32* @AU_REG_RTBASE, align 4
  %134 = load i32, i32* %5, align 4
  %135 = shl i32 %134, 2
  %136 = add nsw i32 %133, %135
  %137 = call i32 @au_wr(%struct.au_info* %132, i32 0, i32 %136, i32 -1, i32 4)
  br label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %128

141:                                              ; preds = %128
  %142 = load %struct.au_info*, %struct.au_info** %4, align 8
  %143 = call i32 @au_rd(%struct.au_info* %142, i32 0, i32 67520, i32 4)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, -559038737
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @device_printf(i32 %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %146, %141
  %151 = load %struct.au_info*, %struct.au_info** %4, align 8
  %152 = load i32, i32* @AU_REG_IRQGLOB, align 4
  %153 = load %struct.au_info*, %struct.au_info** %4, align 8
  %154 = load i32, i32* @AU_REG_IRQGLOB, align 4
  %155 = call i32 @au_rd(%struct.au_info* %153, i32 0, i32 %154, i32 4)
  %156 = load i32, i32* @AU_IRQ_ENABLE, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @au_wr(%struct.au_info* %151, i32 0, i32 %152, i32 %157, i32 4)
  %159 = load %struct.au_info*, %struct.au_info** %4, align 8
  %160 = getelementptr inbounds %struct.au_info, %struct.au_info* %159, i32 0, i32 3
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 3
  store i64 0, i64* %162, align 8
  %163 = load %struct.au_info*, %struct.au_info** %4, align 8
  %164 = getelementptr inbounds %struct.au_info, %struct.au_info* %163, i32 0, i32 3
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 2
  store i64 0, i64* %166, align 8
  %167 = load %struct.au_info*, %struct.au_info** %4, align 8
  %168 = getelementptr inbounds %struct.au_info, %struct.au_info* %167, i32 0, i32 3
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 1
  store i64 0, i64* %170, align 8
  %171 = load %struct.au_info*, %struct.au_info** %4, align 8
  %172 = getelementptr inbounds %struct.au_info, %struct.au_info* %171, i32 0, i32 3
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 0
  store i64 0, i64* %174, align 8
  %175 = load %struct.au_info*, %struct.au_info** %4, align 8
  %176 = call i32 @au_addroute(%struct.au_info* %175, i32 17, i32 72, i32 2)
  %177 = load %struct.au_info*, %struct.au_info** %4, align 8
  %178 = call i32 @au_addroute(%struct.au_info* %177, i32 17, i32 73, i32 3)
  %179 = load %struct.au_info*, %struct.au_info** %4, align 8
  %180 = call i32 @au_encodec(%struct.au_info* %179, i32 0)
  %181 = load %struct.au_info*, %struct.au_info** %4, align 8
  %182 = call i32 @au_encodec(%struct.au_info* %181, i32 1)
  store i32 0, i32* %5, align 4
  br label %183

183:                                              ; preds = %192, %150
  %184 = load i32, i32* %5, align 4
  %185 = icmp slt i32 %184, 48
  br i1 %185, label %186, label %195

186:                                              ; preds = %183
  %187 = load %struct.au_info*, %struct.au_info** %4, align 8
  %188 = load i32, i32* %5, align 4
  %189 = shl i32 %188, 2
  %190 = add nsw i32 63488, %189
  %191 = call i32 @au_wr(%struct.au_info* %187, i32 0, i32 %190, i32 32, i32 4)
  br label %192

192:                                              ; preds = %186
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %5, align 4
  br label %183

195:                                              ; preds = %183
  store i32 2, i32* %5, align 4
  br label %196

196:                                              ; preds = %205, %195
  %197 = load i32, i32* %5, align 4
  %198 = icmp slt i32 %197, 6
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load %struct.au_info*, %struct.au_info** %4, align 8
  %201 = load i32, i32* %5, align 4
  %202 = shl i32 %201, 2
  %203 = add nsw i32 63488, %202
  %204 = call i32 @au_wr(%struct.au_info* %200, i32 0, i32 %203, i32 0, i32 4)
  br label %205

205:                                              ; preds = %199
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %196

208:                                              ; preds = %196
  %209 = load %struct.au_info*, %struct.au_info** %4, align 8
  %210 = call i32 @au_wr(%struct.au_info* %209, i32 0, i32 63680, i32 2115, i32 4)
  store i32 0, i32* %5, align 4
  br label %211

211:                                              ; preds = %218, %208
  %212 = load i32, i32* %5, align 4
  %213 = icmp slt i32 %212, 4
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = load %struct.au_info*, %struct.au_info** %4, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @au_clrfifo(%struct.au_info* %215, i32 %216)
  br label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %5, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %5, align 4
  br label %211

221:                                              ; preds = %211
  ret i32 0
}

declare dso_local i32 @au_wr(%struct.au_info*, i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @au_rd(%struct.au_info*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @au_addroute(%struct.au_info*, i32, i32, i32) #1

declare dso_local i32 @au_encodec(%struct.au_info*, i32) #1

declare dso_local i32 @au_clrfifo(%struct.au_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
