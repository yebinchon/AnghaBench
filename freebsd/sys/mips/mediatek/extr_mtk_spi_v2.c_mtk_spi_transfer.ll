; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v2.c_mtk_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v2.c_mtk_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.mtk_spi_softc = type { i32 }

@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MTK_SPI_WRITE = common dso_local global i32 0, align 4
@MTK_SPI_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @mtk_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca %struct.mtk_spi_softc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.mtk_spi_softc* @device_get_softc(i32 %17)
  store %struct.mtk_spi_softc* %18, %struct.mtk_spi_softc** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @spibus_get_cs(i32 %19, i32* %12)
  %21 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %12, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %4, align 4
  br label %210

29:                                               ; preds = %3
  %30 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %31 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %65 [
    i32 132, label %37
    i32 137, label %42
    i32 136, label %42
    i32 128, label %42
    i32 129, label %42
    i32 131, label %47
    i32 133, label %52
    i32 135, label %52
    i32 130, label %57
    i32 134, label %60
  ]

37:                                               ; preds = %29
  %38 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %39 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %41 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %40, i32 0, i32 1
  store i32 3, i32* %41, align 4
  br label %65

42:                                               ; preds = %29, %29, %29, %29
  %43 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %44 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %46 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %65

47:                                               ; preds = %29
  %48 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %49 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %51 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %65

52:                                               ; preds = %29, %29
  %53 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %54 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %56 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  br label %65

57:                                               ; preds = %29
  %58 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %59 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %65

60:                                               ; preds = %29
  %61 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %62 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %61, i32 0, i32 3
  store i32 0, i32* %62, align 4
  %63 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %64 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %29, %60, %57, %52, %47, %42, %37
  %66 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %67 = call i32 @mtk_spi_chip_activate(%struct.mtk_spi_softc* %66)
  %68 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %69 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %72 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %132

76:                                               ; preds = %65
  %77 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %78 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %9, align 8
  %81 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %82 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i32*
  store i32* %84, i32** %11, align 8
  %85 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %86 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %89 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %128, %76
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %131

96:                                               ; preds = %92
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %99 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %96
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  %108 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %109 = load i32, i32* @MTK_SPI_WRITE, align 4
  %110 = call i32 @mtk_spi_txrx(%struct.mtk_spi_softc* %108, i32* %10, i32 %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %207

114:                                              ; preds = %102
  br label %128

115:                                              ; preds = %96
  %116 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %117 = load i32, i32* @MTK_SPI_READ, align 4
  %118 = call i32 @mtk_spi_txrx(%struct.mtk_spi_softc* %116, i32* %10, i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %207

122:                                              ; preds = %115
  %123 = load i32, i32* %10, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %114
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %92

131:                                              ; preds = %92
  br label %132

132:                                              ; preds = %131, %65
  %133 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %134 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %137 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %206

141:                                              ; preds = %132
  %142 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %143 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 1, i32 0
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %141
  %151 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %152 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  br label %158

154:                                              ; preds = %141
  %155 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %156 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  br label %158

158:                                              ; preds = %154, %150
  %159 = phi i64 [ %153, %150 ], [ %157, %154 ]
  %160 = inttoptr i64 %159 to i32*
  store i32* %160, i32** %9, align 8
  %161 = load i32, i32* %16, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %165 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  br label %171

167:                                              ; preds = %158
  %168 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %169 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  br label %171

171:                                              ; preds = %167, %163
  %172 = phi i32 [ %166, %163 ], [ %170, %167 ]
  store i32 %172, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %173

173:                                              ; preds = %202, %171
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %205

177:                                              ; preds = %173
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %10, align 4
  %183 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %177
  %187 = load i32, i32* @MTK_SPI_WRITE, align 4
  br label %190

188:                                              ; preds = %177
  %189 = load i32, i32* @MTK_SPI_READ, align 4
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i32 [ %187, %186 ], [ %189, %188 ]
  %192 = call i32 @mtk_spi_txrx(%struct.mtk_spi_softc* %183, i32* %10, i32 %191)
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %207

196:                                              ; preds = %190
  %197 = load i32, i32* %10, align 4
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %197, i32* %201, align 4
  br label %202

202:                                              ; preds = %196
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %13, align 4
  br label %173

205:                                              ; preds = %173
  br label %206

206:                                              ; preds = %205, %132
  br label %207

207:                                              ; preds = %206, %195, %121, %113
  %208 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %8, align 8
  %209 = call i32 @mtk_spi_chip_deactivate(%struct.mtk_spi_softc* %208)
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %207, %27
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local %struct.mtk_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @spibus_get_cs(i32, i32*) #1

declare dso_local i32 @mtk_spi_chip_activate(%struct.mtk_spi_softc*) #1

declare dso_local i32 @mtk_spi_txrx(%struct.mtk_spi_softc*, i32*, i32) #1

declare dso_local i32 @mtk_spi_chip_deactivate(%struct.mtk_spi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
