; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_syba.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_pucdata.c_puc_config_syba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puc_softc = type { %struct.puc_cfg* }
%struct.puc_cfg = type { i32 }
%struct.puc_bar = type { i32 }

@puc_config_syba.base = internal global [3 x i32] [i32 593, i32 1008, i32 0], align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.puc_softc*, i32, i32, i64*)* @puc_config_syba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puc_config_syba(%struct.puc_softc* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.puc_cfg*, align 8
  %11 = alloca %struct.puc_bar*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.puc_softc* %0, %struct.puc_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %16 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %17 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %16, i32 0, i32 0
  %18 = load %struct.puc_cfg*, %struct.puc_cfg** %17, align 8
  store %struct.puc_cfg* %18, %struct.puc_cfg** %10, align 8
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %201 [
    i32 128, label %20
    i32 129, label %188
  ]

20:                                               ; preds = %4
  %21 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %22 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %23 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.puc_bar* @puc_get_bar(%struct.puc_softc* %21, i32 %24)
  store %struct.puc_bar* %25, %struct.puc_bar** %11, align 8
  %26 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %27 = icmp eq %struct.puc_bar* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %5, align 4
  br label %204

30:                                               ; preds = %20
  %31 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %32 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bus_write_1(i32 %33, i32 592, i32 137)
  %35 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %36 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bus_write_1(i32 %37, i32 1008, i32 135)
  %39 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %40 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bus_write_1(i32 %41, i32 1008, i32 135)
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %70, %30
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* @puc_config_syba.base, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %179

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* @puc_config_syba.base, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %55 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @bus_write_1(i32 %56, i32 %57, i32 9)
  %59 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %60 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @bus_read_1(i32 %61, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = and i32 %65, 15
  %67 = icmp ne i32 %66, 12
  br i1 %67, label %68, label %70

68:                                               ; preds = %49
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %5, align 4
  br label %204

70:                                               ; preds = %49
  %71 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %72 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @bus_write_1(i32 %73, i32 %74, i32 22)
  %76 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %77 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @bus_read_1(i32 %78, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %83 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @bus_write_1(i32 %84, i32 %85, i32 22)
  %87 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %88 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %15, align 4
  %93 = or i32 %92, 4
  %94 = call i32 @bus_write_1(i32 %89, i32 %91, i32 %93)
  %95 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %96 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @bus_write_1(i32 %97, i32 %98, i32 22)
  %100 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %101 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %15, align 4
  %106 = and i32 %105, -5
  %107 = call i32 @bus_write_1(i32 %102, i32 %104, i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* @puc_config_syba.base, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 768
  store i32 %112, i32* %14, align 4
  %113 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %114 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @bus_write_1(i32 %115, i32 %116, i32 35)
  %118 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %119 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 120
  %125 = ashr i32 %124, 2
  %126 = call i32 @bus_write_1(i32 %120, i32 %122, i32 %125)
  %127 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %128 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @bus_write_1(i32 %129, i32 %130, i32 36)
  %132 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %133 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 248
  %139 = ashr i32 %138, 2
  %140 = call i32 @bus_write_1(i32 %134, i32 %136, i32 %139)
  %141 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %142 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @bus_write_1(i32 %143, i32 %144, i32 37)
  %146 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %147 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, 232
  %153 = ashr i32 %152, 2
  %154 = call i32 @bus_write_1(i32 %148, i32 %150, i32 %153)
  %155 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %156 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @bus_write_1(i32 %157, i32 %158, i32 23)
  %160 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %161 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  %165 = call i32 @bus_write_1(i32 %162, i32 %164, i32 3)
  %166 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %167 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @bus_write_1(i32 %168, i32 %169, i32 40)
  %171 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %172 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  %176 = call i32 @bus_write_1(i32 %173, i32 %175, i32 67)
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %13, align 4
  br label %43

179:                                              ; preds = %43
  %180 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %181 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @bus_write_1(i32 %182, i32 592, i32 170)
  %184 = load %struct.puc_bar*, %struct.puc_bar** %11, align 8
  %185 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @bus_write_1(i32 %186, i32 1008, i32 170)
  store i32 0, i32* %5, align 4
  br label %204

188:                                              ; preds = %4
  %189 = load i32, i32* %8, align 4
  switch i32 %189, label %200 [
    i32 0, label %190
    i32 1, label %192
    i32 2, label %194
    i32 3, label %196
    i32 4, label %198
  ]

190:                                              ; preds = %188
  %191 = load i64*, i64** %9, align 8
  store i64 760, i64* %191, align 8
  store i32 0, i32* %5, align 4
  br label %204

192:                                              ; preds = %188
  %193 = load i64*, i64** %9, align 8
  store i64 744, i64* %193, align 8
  store i32 0, i32* %5, align 4
  br label %204

194:                                              ; preds = %188
  %195 = load i64*, i64** %9, align 8
  store i64 1016, i64* %195, align 8
  store i32 0, i32* %5, align 4
  br label %204

196:                                              ; preds = %188
  %197 = load i64*, i64** %9, align 8
  store i64 1000, i64* %197, align 8
  store i32 0, i32* %5, align 4
  br label %204

198:                                              ; preds = %188
  %199 = load i64*, i64** %9, align 8
  store i64 632, i64* %199, align 8
  store i32 0, i32* %5, align 4
  br label %204

200:                                              ; preds = %188
  br label %202

201:                                              ; preds = %4
  br label %202

202:                                              ; preds = %201, %200
  %203 = load i32, i32* @ENXIO, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %202, %198, %196, %194, %192, %190, %179, %68, %28
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local %struct.puc_bar* @puc_get_bar(%struct.puc_softc*, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
