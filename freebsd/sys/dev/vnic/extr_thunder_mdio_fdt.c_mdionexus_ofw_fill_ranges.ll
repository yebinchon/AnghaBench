; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio_fdt.c_mdionexus_ofw_fill_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio_fdt.c_mdionexus_ofw_fill_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplebus_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@M_THUNDER_MDIO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.simplebus_softc*)* @mdionexus_ofw_fill_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdionexus_ofw_fill_ranges(i32 %0, %struct.simplebus_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.simplebus_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.simplebus_softc* %1, %struct.simplebus_softc** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @OF_parent(i32 %13)
  %15 = call i32 @OF_searchencprop(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %211

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @OF_getproplen(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %211

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 4
  %29 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %30 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %35 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %28, %38
  %40 = trunc i64 %39 to i32
  %41 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %42 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %44 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %211

48:                                               ; preds = %25
  %49 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %50 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 12
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @M_THUNDER_MDIO, align 4
  %56 = load i32, i32* @M_WAITOK, align 4
  %57 = call i8* @malloc(i32 %54, i32 %55, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_2__*
  %59 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %60 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %59, i32 0, i32 3
  store %struct.TYPE_2__* %58, %struct.TYPE_2__** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @M_THUNDER_MDIO, align 4
  %63 = load i32, i32* @M_WAITOK, align 4
  %64 = call i8* @malloc(i32 %61, i32 %62, i32 %63)
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %7, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @OF_getencprop(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %67, i32 %68)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %201, %48
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %73 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %204

76:                                               ; preds = %70
  %77 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %78 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %115, %76
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %87 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %84
  %91 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %92 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 32
  store i32 %99, i32* %97, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %107 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %106, i32 0, i32 3
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %105
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %90
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %84

118:                                              ; preds = %84
  %119 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %120 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %119, i32 0, i32 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %155, %118
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %158

130:                                              ; preds = %126
  %131 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %132 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %131, i32 0, i32 3
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 32
  store i32 %139, i32* %137, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %147 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %146, i32 0, i32 3
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %145
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %130
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %126

158:                                              ; preds = %126
  %159 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %160 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %159, i32 0, i32 3
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  store i32 0, i32* %165, align 4
  store i32 0, i32* %12, align 4
  br label %166

166:                                              ; preds = %197, %158
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %169 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %200

172:                                              ; preds = %166
  %173 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %174 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %173, i32 0, i32 3
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 32
  store i32 %181, i32* %179, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %189 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %188, i32 0, i32 3
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %187
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %172
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %166

200:                                              ; preds = %166
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %70

204:                                              ; preds = %70
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* @M_THUNDER_MDIO, align 4
  %207 = call i32 @free(i32* %205, i32 %206)
  %208 = load %struct.simplebus_softc*, %struct.simplebus_softc** %5, align 8
  %209 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %204, %47, %24, %18
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @OF_searchencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
