; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_query_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_query_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdfx_pio_data = type { i64, i32, i32, i32 }
%struct.tdfx_softc = type { i32, i32, i32, i32, i32 }

@tdfx_count = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tdfx_devclass = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tdfx_pio_data*)* @tdfx_query_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfx_query_fetch(i32 %0, %struct.tdfx_pio_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tdfx_pio_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tdfx_softc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.tdfx_pio_data* %1, %struct.tdfx_pio_data** %5, align 8
  store %struct.tdfx_softc* null, %struct.tdfx_softc** %9, align 8
  %10 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %11 = icmp eq %struct.tdfx_pio_data* %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @tdfx_count, align 8
  %14 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %15 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %20 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %12, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %227

26:                                               ; preds = %18
  %27 = load i32, i32* @tdfx_devclass, align 4
  %28 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %29 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @devclass_get_softc(i32 %27, i64 %30)
  %32 = inttoptr i64 %31 to %struct.tdfx_softc*
  store %struct.tdfx_softc* %32, %struct.tdfx_softc** %9, align 8
  %33 = load %struct.tdfx_softc*, %struct.tdfx_softc** %9, align 8
  %34 = icmp eq %struct.tdfx_softc* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %227

38:                                               ; preds = %26
  %39 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %40 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %168 [
    i32 130, label %42
    i32 135, label %60
    i32 137, label %78
    i32 136, label %96
    i32 132, label %114
    i32 134, label %123
    i32 133, label %132
    i32 129, label %141
    i32 131, label %150
    i32 128, label %159
  ]

42:                                               ; preds = %38
  %43 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %44 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %227

50:                                               ; preds = %42
  %51 = load %struct.tdfx_softc*, %struct.tdfx_softc** %9, align 8
  %52 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %51, i32 0, i32 4
  %53 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %54 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %57 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @copyout(i32* %52, i32 %55, i32 %58)
  store i32 0, i32* %3, align 4
  br label %227

60:                                               ; preds = %38
  %61 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %62 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %227

68:                                               ; preds = %60
  %69 = load %struct.tdfx_softc*, %struct.tdfx_softc** %9, align 8
  %70 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %69, i32 0, i32 3
  %71 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %72 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %75 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @copyout(i32* %70, i32 %73, i32 %76)
  store i32 0, i32* %3, align 4
  br label %227

78:                                               ; preds = %38
  %79 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %80 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 4
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %227

86:                                               ; preds = %78
  %87 = load %struct.tdfx_softc*, %struct.tdfx_softc** %9, align 8
  %88 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %87, i32 0, i32 2
  %89 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %90 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %93 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @copyout(i32* %88, i32 %91, i32 %94)
  store i32 0, i32* %3, align 4
  br label %227

96:                                               ; preds = %38
  %97 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %98 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 4
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %227

104:                                              ; preds = %96
  %105 = load %struct.tdfx_softc*, %struct.tdfx_softc** %9, align 8
  %106 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %105, i32 0, i32 1
  %107 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %108 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %111 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @copyout(i32* %106, i32 %109, i32 %112)
  store i32 0, i32* %3, align 4
  br label %227

114:                                              ; preds = %38
  %115 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %116 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %227

122:                                              ; preds = %114
  br label %171

123:                                              ; preds = %38
  %124 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %125 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 2
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %227

131:                                              ; preds = %123
  br label %171

132:                                              ; preds = %38
  %133 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %134 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 2
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %227

140:                                              ; preds = %132
  br label %171

141:                                              ; preds = %38
  %142 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %143 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 4
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %227

149:                                              ; preds = %141
  br label %171

150:                                              ; preds = %38
  %151 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %152 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 1
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %227

158:                                              ; preds = %150
  br label %171

159:                                              ; preds = %38
  %160 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %161 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 4
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %227

167:                                              ; preds = %159
  br label %171

168:                                              ; preds = %38
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %227

171:                                              ; preds = %167, %158, %149, %140, %131, %122
  %172 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %173 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  switch i32 %174, label %223 [
    i32 1, label %175
    i32 2, label %191
    i32 4, label %207
  ]

175:                                              ; preds = %171
  %176 = load %struct.tdfx_softc*, %struct.tdfx_softc** %9, align 8
  %177 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %178 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %176, i64 %179
  %181 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %184 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @pci_read_config(i32 %182, i32 %185, i32 1)
  store i32 %186, i32* %6, align 4
  %187 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %188 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @copyout(i32* %6, i32 %189, i32 1)
  br label %226

191:                                              ; preds = %171
  %192 = load %struct.tdfx_softc*, %struct.tdfx_softc** %9, align 8
  %193 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %194 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %192, i64 %195
  %197 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %200 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @pci_read_config(i32 %198, i32 %201, i32 2)
  store i32 %202, i32* %7, align 4
  %203 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %204 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @copyout(i32* %7, i32 %205, i32 2)
  br label %226

207:                                              ; preds = %171
  %208 = load %struct.tdfx_softc*, %struct.tdfx_softc** %9, align 8
  %209 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %210 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %208, i64 %211
  %213 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %216 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @pci_read_config(i32 %214, i32 %217, i32 4)
  store i32 %218, i32* %8, align 4
  %219 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %220 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @copyout(i32* %8, i32 %221, i32 4)
  br label %226

223:                                              ; preds = %171
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %3, align 4
  br label %227

226:                                              ; preds = %207, %191, %175
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %226, %223, %168, %164, %155, %146, %137, %128, %119, %104, %101, %86, %83, %68, %65, %50, %47, %35, %23
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i64 @devclass_get_softc(i32, i64) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
