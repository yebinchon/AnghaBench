; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_mw_get_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_mw_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i32, i32, i64, i32, i64, %struct.ntb_plx_mw_info* }
%struct.ntb_plx_mw_info = type { i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"user shouldn't get non-shared b2b mw\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*, i64*, i64*, i64*, i64*, i32*)* @ntb_plx_mw_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_plx_mw_get_range(i32 %0, i32 %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ntb_plx_softc*, align 8
  %19 = alloca %struct.ntb_plx_mw_info*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.ntb_plx_softc* @device_get_softc(i32 %24)
  store %struct.ntb_plx_softc* %25, %struct.ntb_plx_softc** %18, align 8
  %26 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @ntb_plx_user_mw_to_idx(%struct.ntb_plx_softc* %26, i32 %27, i32* %22)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %31 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp uge i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %9, align 4
  br label %209

36:                                               ; preds = %8
  store i64 0, i64* %20, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %39 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %44 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @KASSERT(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %50 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %20, align 8
  br label %52

52:                                               ; preds = %42, %36
  %53 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %54 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %53, i32 0, i32 5
  %55 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %55, i64 %57
  store %struct.ntb_plx_mw_info* %58, %struct.ntb_plx_mw_info** %19, align 8
  %59 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %60 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %65 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  br label %68

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i32 [ %66, %63 ], [ 0, %67 ]
  store i32 %69, i32* %23, align 4
  %70 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %71 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %20, align 8
  %74 = sub i64 %72, %73
  %75 = load i32, i32* %23, align 4
  %76 = zext i32 %75 to i64
  %77 = lshr i64 %74, %76
  store i64 %77, i64* %21, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %68
  %81 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %82 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %20, align 8
  %85 = add i64 %83, %84
  %86 = load i64, i64* %21, align 8
  %87 = load i32, i32* %22, align 4
  %88 = zext i32 %87 to i64
  %89 = mul i64 %86, %88
  %90 = add i64 %85, %89
  %91 = load i64*, i64** %12, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %80, %68
  %93 = load i64*, i64** %13, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %97 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %20, align 8
  %100 = add i64 %98, %99
  %101 = load i64, i64* %21, align 8
  %102 = load i32, i32* %22, align 4
  %103 = zext i32 %102 to i64
  %104 = mul i64 %101, %103
  %105 = add i64 %100, %104
  %106 = load i64*, i64** %13, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %95, %92
  %108 = load i64*, i64** %14, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i64, i64* %21, align 8
  %112 = load i64*, i64** %14, align 8
  store i64 %111, i64* %112, align 8
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i64*, i64** %15, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %116, label %146

116:                                              ; preds = %113
  %117 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %118 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %116
  %122 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %123 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %128 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %20, align 8
  %131 = sub i64 %129, %130
  %132 = udiv i64 %131, 128
  %133 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %134 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = udiv i64 %132, %135
  %137 = load i64*, i64** %15, align 8
  store i64 %136, i64* %137, align 8
  br label %145

138:                                              ; preds = %121, %116
  %139 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %140 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %20, align 8
  %143 = sub i64 %141, %142
  %144 = load i64*, i64** %15, align 8
  store i64 %143, i64* %144, align 8
  br label %145

145:                                              ; preds = %138, %126
  br label %146

146:                                              ; preds = %145, %113
  %147 = load i64*, i64** %16, align 8
  %148 = icmp ne i64* %147, null
  br i1 %148, label %149, label %193

149:                                              ; preds = %146
  %150 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %151 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %149
  %155 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %156 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %159, label %171

159:                                              ; preds = %154
  %160 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %161 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %20, align 8
  %164 = sub i64 %162, %163
  %165 = udiv i64 %164, 128
  %166 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %167 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = udiv i64 %165, %168
  %170 = load i64*, i64** %16, align 8
  store i64 %169, i64* %170, align 8
  br label %192

171:                                              ; preds = %154, %149
  %172 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %18, align 8
  %173 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp uge i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %178 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %20, align 8
  %181 = sub i64 %179, %180
  %182 = udiv i64 %181, 2
  %183 = load i64*, i64** %16, align 8
  store i64 %182, i64* %183, align 8
  br label %191

184:                                              ; preds = %171
  %185 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %186 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %20, align 8
  %189 = sub i64 %187, %188
  %190 = load i64*, i64** %16, align 8
  store i64 %189, i64* %190, align 8
  br label %191

191:                                              ; preds = %184, %176
  br label %192

192:                                              ; preds = %191, %159
  br label %193

193:                                              ; preds = %192, %146
  %194 = load i32*, i32** %17, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %208

196:                                              ; preds = %193
  %197 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %19, align 8
  %198 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  br label %205

203:                                              ; preds = %196
  %204 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i32 [ %202, %201 ], [ %204, %203 ]
  %207 = load i32*, i32** %17, align 8
  store i32 %206, i32* %207, align 4
  br label %208

208:                                              ; preds = %205, %193
  store i32 0, i32* %9, align 4
  br label %209

209:                                              ; preds = %208, %34
  %210 = load i32, i32* %9, align 4
  ret i32 %210
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i32) #1

declare dso_local i32 @ntb_plx_user_mw_to_idx(%struct.ntb_plx_softc*, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
