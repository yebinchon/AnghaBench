; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_load_cpu_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_load_cpu_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32 }
%struct.cpu_reg = type { i64, i64, i64, i64 }
%struct.fw_info = type { i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64 }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*, %struct.cpu_reg*, %struct.fw_info*)* @bce_load_cpu_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_load_cpu_fw(%struct.bce_softc* %0, %struct.cpu_reg* %1, %struct.fw_info* %2) #0 {
  %4 = alloca %struct.bce_softc*, align 8
  %5 = alloca %struct.cpu_reg*, align 8
  %6 = alloca %struct.fw_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %4, align 8
  store %struct.cpu_reg* %1, %struct.cpu_reg** %5, align 8
  store %struct.fw_info* %2, %struct.fw_info** %6, align 8
  %13 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %14 = call i32 @DBENTER(i32 %13)
  %15 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %16 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %17 = call i32 @bce_halt_cpu(%struct.bce_softc* %15, %struct.cpu_reg* %16)
  %18 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %19 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %22 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %21, i32 0, i32 15
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %25 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = add nsw i64 %20, %27
  store i64 %28, i64* %7, align 8
  %29 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %30 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %29, i32 0, i32 14
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %37 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 4
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %34
  %42 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %45 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %44, i32 0, i32 14
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @REG_WR_IND(%struct.bce_softc* %42, i64 %43, i32 %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, 4
  store i64 %56, i64* %7, align 8
  br label %34

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %60 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %63 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %62, i32 0, i32 13
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %66 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = add nsw i64 %61, %68
  store i64 %69, i64* %7, align 8
  %70 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %71 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %70, i32 0, i32 12
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %99

74:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %93, %74
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %78 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 4
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %86 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %85, i32 0, i32 12
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @REG_WR_IND(%struct.bce_softc* %83, i64 %84, i32 %91)
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  %96 = load i64, i64* %7, align 8
  %97 = add nsw i64 %96, 4
  store i64 %97, i64* %7, align 8
  br label %75

98:                                               ; preds = %75
  br label %99

99:                                               ; preds = %98, %58
  %100 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %101 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %104 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %103, i32 0, i32 11
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %107 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = add nsw i64 %102, %109
  store i64 %110, i64* %7, align 8
  %111 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %112 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %111, i32 0, i32 10
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %140

115:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %134, %115
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %119 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %120, 4
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %116
  %124 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %127 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %126, i32 0, i32 10
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @REG_WR_IND(%struct.bce_softc* %124, i64 %125, i32 %132)
  br label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  %137 = load i64, i64* %7, align 8
  %138 = add nsw i64 %137, 4
  store i64 %138, i64* %7, align 8
  br label %116

139:                                              ; preds = %116
  br label %140

140:                                              ; preds = %139, %99
  %141 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %142 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %145 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %144, i32 0, i32 9
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %148 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %146, %149
  %151 = add nsw i64 %143, %150
  store i64 %151, i64* %7, align 8
  %152 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %153 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %152, i32 0, i32 8
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %181

156:                                              ; preds = %140
  store i32 0, i32* %11, align 4
  br label %157

157:                                              ; preds = %175, %156
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %160 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %161, 4
  %163 = icmp slt i32 %158, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %157
  %165 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %166 = load i64, i64* %7, align 8
  %167 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %168 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %167, i32 0, i32 8
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @REG_WR_IND(%struct.bce_softc* %165, i64 %166, i32 %173)
  br label %175

175:                                              ; preds = %164
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  %178 = load i64, i64* %7, align 8
  %179 = add nsw i64 %178, 4
  store i64 %179, i64* %7, align 8
  br label %157

180:                                              ; preds = %157
  br label %181

181:                                              ; preds = %180, %140
  %182 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %183 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %186 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %185, i32 0, i32 7
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %189 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %187, %190
  %192 = add nsw i64 %184, %191
  store i64 %192, i64* %7, align 8
  %193 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %194 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %193, i32 0, i32 6
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %222

197:                                              ; preds = %181
  store i32 0, i32* %12, align 4
  br label %198

198:                                              ; preds = %216, %197
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %201 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = sdiv i32 %202, 4
  %204 = icmp slt i32 %199, %203
  br i1 %204, label %205, label %221

205:                                              ; preds = %198
  %206 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %207 = load i64, i64* %7, align 8
  %208 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %209 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %208, i32 0, i32 6
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @REG_WR_IND(%struct.bce_softc* %206, i64 %207, i32 %214)
  br label %216

216:                                              ; preds = %205
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  %219 = load i64, i64* %7, align 8
  %220 = add nsw i64 %219, 4
  store i64 %220, i64* %7, align 8
  br label %198

221:                                              ; preds = %198
  br label %222

222:                                              ; preds = %221, %181
  %223 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %224 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %225 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @REG_WR_IND(%struct.bce_softc* %223, i64 %226, i32 0)
  %228 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %229 = load %struct.cpu_reg*, %struct.cpu_reg** %5, align 8
  %230 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.fw_info*, %struct.fw_info** %6, align 8
  %233 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @REG_WR_IND(%struct.bce_softc* %228, i64 %231, i32 %234)
  %236 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %237 = call i32 @DBEXIT(i32 %236)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @bce_halt_cpu(%struct.bce_softc*, %struct.cpu_reg*) #1

declare dso_local i32 @REG_WR_IND(%struct.bce_softc*, i64, i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
