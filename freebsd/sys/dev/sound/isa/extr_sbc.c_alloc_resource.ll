; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbc_softc = type { i32*, i32*, i32*, i64*, i32**, i32, i64*, i32**, i64*, i32** }

@IO_MAX = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@io_range = common dso_local global i32* null, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@DRQ_MAX = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@IRQ_MAX = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbc_softc*)* @alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_resource(%struct.sbc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.sbc_softc* %0, %struct.sbc_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %69, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IO_MAX, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %72

9:                                                ; preds = %5
  %10 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %10, i32 0, i32 9
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  %26 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %27 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SYS_RES_IOPORT, align 4
  %30 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32*, i32** @io_range, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RF_ACTIVE, align 4
  %42 = call i32* @bus_alloc_resource_anywhere(i32 %28, i32 %29, i32* %35, i32 %40, i32 %41)
  %43 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %43, i32 0, i32 9
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* %42, i32** %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %18
  %52 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %53 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %52, i32 0, i32 9
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %201

61:                                               ; preds = %51, %18
  %62 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %63 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %62, i32 0, i32 8
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %9
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %5

72:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %133, %72
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @DRQ_MAX, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %136

77:                                               ; preds = %73
  %78 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %79 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %78, i32 0, i32 7
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %132

86:                                               ; preds = %77
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %89 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %95 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SYS_RES_DRQ, align 4
  %98 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %99 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* @RF_ACTIVE, align 4
  %105 = call i8* @bus_alloc_resource_any(i32 %96, i32 %97, i32* %103, i32 %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %108 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %107, i32 0, i32 7
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  store i32* %106, i32** %112, align 8
  %113 = load i32, i32* %4, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %86
  %116 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %117 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %116, i32 0, i32 7
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  store i32 1, i32* %2, align 4
  br label %201

125:                                              ; preds = %115, %86
  %126 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %127 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %126, i32 0, i32 6
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %125, %77
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %73

136:                                              ; preds = %73
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %197, %136
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @IRQ_MAX, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %200

141:                                              ; preds = %137
  %142 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %143 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %142, i32 0, i32 4
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %196

150:                                              ; preds = %141
  %151 = load i32, i32* %4, align 4
  %152 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %153 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %151, i32* %157, align 4
  %158 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %159 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SYS_RES_IRQ, align 4
  %162 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %163 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* @RF_ACTIVE, align 4
  %169 = call i8* @bus_alloc_resource_any(i32 %160, i32 %161, i32* %167, i32 %168)
  %170 = bitcast i8* %169 to i32*
  %171 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %172 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %171, i32 0, i32 4
  %173 = load i32**, i32*** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  store i32* %170, i32** %176, align 8
  %177 = load i32, i32* %4, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %150
  %180 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %181 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %180, i32 0, i32 4
  %182 = load i32**, i32*** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32*, i32** %182, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  store i32 1, i32* %2, align 4
  br label %201

189:                                              ; preds = %179, %150
  %190 = load %struct.sbc_softc*, %struct.sbc_softc** %3, align 8
  %191 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %190, i32 0, i32 3
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64 0, i64* %195, align 8
  br label %196

196:                                              ; preds = %189, %141
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %137

200:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %200, %188, %124, %60
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
