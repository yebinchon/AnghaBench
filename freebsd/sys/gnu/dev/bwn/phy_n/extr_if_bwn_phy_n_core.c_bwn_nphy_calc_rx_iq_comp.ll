; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_calc_rx_iq_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_calc_rx_iq_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bwn_nphy_iq_est = type { i32, i32, i32, i32, i32, i32 }
%struct.bwn_phy_n_iq_comp = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32)* @bwn_nphy_calc_rx_iq_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_calc_rx_iq_comp(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bwn_nphy_iq_est, align 4
  %17 = alloca %struct.bwn_phy_n_iq_comp, align 4
  %18 = alloca %struct.bwn_phy_n_iq_comp, align 4
  %19 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = bitcast %struct.bwn_phy_n_iq_comp* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 16, i1 false)
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %224

24:                                               ; preds = %2
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %26 = call i32 @bwn_nphy_rx_iq_coeffs(%struct.bwn_mac* %25, i32 0, %struct.bwn_phy_n_iq_comp* %17)
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %28 = call i32 @bwn_nphy_rx_iq_coeffs(%struct.bwn_mac* %27, i32 1, %struct.bwn_phy_n_iq_comp* %18)
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %30 = call i32 @bwn_nphy_rx_iq_est(%struct.bwn_mac* %29, %struct.bwn_nphy_iq_est* %16, i32 16384, i32 32, i32 0)
  %31 = bitcast %struct.bwn_phy_n_iq_comp* %18 to i8*
  %32 = bitcast %struct.bwn_phy_n_iq_comp* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 16, i1 false)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %212, %24
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %215

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.bwn_nphy_iq_est, %struct.bwn_nphy_iq_est* %16, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  %46 = getelementptr inbounds %struct.bwn_nphy_iq_est, %struct.bwn_nphy_iq_est* %16, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = getelementptr inbounds %struct.bwn_nphy_iq_est, %struct.bwn_nphy_iq_est* %16, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  br label %66

50:                                               ; preds = %39, %36
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.bwn_nphy_iq_est, %struct.bwn_nphy_iq_est* %16, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %6, align 4
  %60 = getelementptr inbounds %struct.bwn_nphy_iq_est, %struct.bwn_nphy_iq_est* %16, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = getelementptr inbounds %struct.bwn_nphy_iq_est, %struct.bwn_nphy_iq_est* %16, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  br label %65

64:                                               ; preds = %53, %50
  br label %212

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %43
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %67, %68
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %19, align 4
  br label %215

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @abs(i32 %73) #4
  %75 = call i32 @fls(i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @fls(i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 20
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %72
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 30, %84
  %86 = shl i32 %83, %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 1, %88
  %90 = ashr i32 %87, %89
  %91 = add nsw i32 %86, %90
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %11, align 4
  %95 = ashr i32 %93, %94
  store i32 %95, i32* %13, align 4
  br label %111

96:                                               ; preds = %72
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 30, %98
  %100 = shl i32 %97, %99
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 -1, %102
  %104 = shl i32 %101, %103
  %105 = add nsw i32 %100, %104
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 0, %108
  %110 = shl i32 %107, %109
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %96, %82
  %112 = load i32, i32* %13, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 1, i32* %19, align 4
  br label %215

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = sdiv i32 %117, %116
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %119, 11
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %10, align 4
  %126 = sub nsw i32 31, %125
  %127 = shl i32 %124, %126
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %12, align 4
  %130 = ashr i32 %128, %129
  store i32 %130, i32* %13, align 4
  br label %140

131:                                              ; preds = %115
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 31, %133
  %135 = shl i32 %132, %134
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %12, align 4
  %138 = sub nsw i32 0, %137
  %139 = shl i32 %136, %138
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %131, %123
  %141 = load i32, i32* %13, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 1, i32* %19, align 4
  br label %215

144:                                              ; preds = %140
  %145 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %13, align 4
  %148 = sdiv i32 %146, %147
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sub nsw i32 %148, %151
  %153 = call i32 @bwn_sqrt(%struct.bwn_mac* %145, i32 %152)
  %154 = sub nsw i32 %153, 1024
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %182

157:                                              ; preds = %144
  %158 = load i32, i32* %4, align 4
  %159 = and i32 %158, 1
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %182

161:                                              ; preds = %157
  %162 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %163 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp sge i32 %165, 3
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load i32, i32* %14, align 4
  %169 = and i32 %168, 1023
  %170 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %18, i32 0, i32 0
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* %15, align 4
  %172 = and i32 %171, 1023
  %173 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %18, i32 0, i32 1
  store i32 %172, i32* %173, align 4
  br label %181

174:                                              ; preds = %161
  %175 = load i32, i32* %15, align 4
  %176 = and i32 %175, 1023
  %177 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %18, i32 0, i32 0
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* %14, align 4
  %179 = and i32 %178, 1023
  %180 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %18, i32 0, i32 1
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %174, %167
  br label %211

182:                                              ; preds = %157, %144
  %183 = load i32, i32* %5, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %210

185:                                              ; preds = %182
  %186 = load i32, i32* %4, align 4
  %187 = and i32 %186, 2
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %210

189:                                              ; preds = %185
  %190 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %191 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp sge i32 %193, 3
  br i1 %194, label %195, label %202

195:                                              ; preds = %189
  %196 = load i32, i32* %14, align 4
  %197 = and i32 %196, 1023
  %198 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %18, i32 0, i32 2
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* %15, align 4
  %200 = and i32 %199, 1023
  %201 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %18, i32 0, i32 3
  store i32 %200, i32* %201, align 4
  br label %209

202:                                              ; preds = %189
  %203 = load i32, i32* %15, align 4
  %204 = and i32 %203, 1023
  %205 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %18, i32 0, i32 2
  store i32 %204, i32* %205, align 4
  %206 = load i32, i32* %14, align 4
  %207 = and i32 %206, 1023
  %208 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %18, i32 0, i32 3
  store i32 %207, i32* %208, align 4
  br label %209

209:                                              ; preds = %202, %195
  br label %210

210:                                              ; preds = %209, %185, %182
  br label %211

211:                                              ; preds = %210, %181
  br label %212

212:                                              ; preds = %211, %64
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %5, align 4
  br label %33

215:                                              ; preds = %143, %114, %71, %33
  %216 = load i32, i32* %19, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = bitcast %struct.bwn_phy_n_iq_comp* %18 to i8*
  %220 = bitcast %struct.bwn_phy_n_iq_comp* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %219, i8* align 4 %220, i64 16, i1 false)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %223 = call i32 @bwn_nphy_rx_iq_coeffs(%struct.bwn_mac* %222, i32 1, %struct.bwn_phy_n_iq_comp* %18)
  br label %224

224:                                              ; preds = %221, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bwn_nphy_rx_iq_coeffs(%struct.bwn_mac*, i32, %struct.bwn_phy_n_iq_comp*) #2

declare dso_local i32 @bwn_nphy_rx_iq_est(%struct.bwn_mac*, %struct.bwn_nphy_iq_est*, i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fls(i32) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @bwn_sqrt(%struct.bwn_mac*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
