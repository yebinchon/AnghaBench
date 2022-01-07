; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_settxparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_settxparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_txparam*, %struct.ieee80211com* }
%struct.ieee80211_txparam = type { i64, i64, i64, i64 }
%struct.ieee80211com = type { i32, %struct.ieee80211_htrateset, %struct.ieee80211_rateset* }
%struct.ieee80211_htrateset = type { i32 }
%struct.ieee80211_rateset = type { i32 }
%struct.ieee80211req = type { i32, i32 }
%struct.ieee80211_txparams_req = type { %struct.ieee80211_txparam* }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@ENETRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_settxparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_settxparams(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211_txparams_req, align 8
  %8 = alloca %struct.ieee80211_txparam*, align 8
  %9 = alloca %struct.ieee80211_txparam*, align 8
  %10 = alloca %struct.ieee80211_htrateset*, align 8
  %11 = alloca %struct.ieee80211_rateset*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 1
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %18, align 8
  store %struct.ieee80211com* %19, %struct.ieee80211com** %6, align 8
  %20 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %230

27:                                               ; preds = %2
  %28 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @copyin(i32 %30, %struct.ieee80211_txparams_req* %7, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %3, align 4
  br label %230

39:                                               ; preds = %27
  %40 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 32
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %46 = load i32, i32* @IEEE80211_MODE_11A, align 4
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %190, %39
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %193

51:                                               ; preds = %47
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i64 @isclr(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %190

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.ieee80211_txparams_req, %struct.ieee80211_txparams_req* %7, i32 0, i32 0
  %61 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %61, i64 %63
  store %struct.ieee80211_txparam* %64, %struct.ieee80211_txparam** %8, align 8
  %65 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %66 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %65, i32 0, i32 0
  %67 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %67, i64 %69
  store %struct.ieee80211_txparam* %70, %struct.ieee80211_txparam** %9, align 8
  %71 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %71, i32 0, i32 2
  %73 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %73, i64 %75
  store %struct.ieee80211_rateset* %76, %struct.ieee80211_rateset** %11, align 8
  %77 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %77, i32 0, i32 1
  store %struct.ieee80211_htrateset* %78, %struct.ieee80211_htrateset** %10, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %59
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %85 = icmp eq i32 %83, %84
  br label %86

86:                                               ; preds = %82, %59
  %87 = phi i1 [ true, %59 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %15, align 4
  %89 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %8, align 8
  %90 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %9, align 8
  %93 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %86
  %97 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %11, align 8
  %98 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %8, align 8
  %99 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @checkrate(%struct.ieee80211_rateset* %97, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %10, align 8
  %108 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %8, align 8
  %109 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @checkmcs(%struct.ieee80211_htrateset* %107, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %106, %103
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %3, align 4
  br label %230

115:                                              ; preds = %106, %96
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %115, %86
  %119 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %8, align 8
  %120 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %9, align 8
  %123 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %118
  %127 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %11, align 8
  %128 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %8, align 8
  %129 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @checkrate(%struct.ieee80211_rateset* %127, i64 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %10, align 8
  %138 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %8, align 8
  %139 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @checkmcs(%struct.ieee80211_htrateset* %137, i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %136, %133
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %3, align 4
  br label %230

145:                                              ; preds = %136, %126
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %145, %118
  %149 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %8, align 8
  %150 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %9, align 8
  %153 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %148
  %157 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %11, align 8
  %158 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %8, align 8
  %159 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @checkrate(%struct.ieee80211_rateset* %157, i64 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %10, align 8
  %168 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %8, align 8
  %169 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @checkmcs(%struct.ieee80211_htrateset* %167, i64 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %166, %163
  %174 = load i32, i32* @EINVAL, align 4
  store i32 %174, i32* %3, align 4
  br label %230

175:                                              ; preds = %166, %156
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %178

178:                                              ; preds = %175, %148
  %179 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %8, align 8
  %180 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %9, align 8
  %183 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %181, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %189

189:                                              ; preds = %186, %178
  br label %190

190:                                              ; preds = %189, %58
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %13, align 4
  br label %47

193:                                              ; preds = %47
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %229

196:                                              ; preds = %193
  %197 = load i32, i32* @IEEE80211_MODE_11A, align 4
  store i32 %197, i32* %13, align 4
  br label %198

198:                                              ; preds = %224, %196
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %16, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %227

202:                                              ; preds = %198
  %203 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %204 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %13, align 4
  %207 = call i64 @isset(i32 %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %223

209:                                              ; preds = %202
  %210 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %211 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %210, i32 0, i32 0
  %212 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %212, i64 %214
  %216 = getelementptr inbounds %struct.ieee80211_txparams_req, %struct.ieee80211_txparams_req* %7, i32 0, i32 0
  %217 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %216, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %217, i64 %219
  %221 = bitcast %struct.ieee80211_txparam* %215 to i8*
  %222 = bitcast %struct.ieee80211_txparam* %220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %221, i8* align 8 %222, i64 32, i1 false)
  br label %223

223:                                              ; preds = %209, %202
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  br label %198

227:                                              ; preds = %198
  %228 = load i32, i32* @ENETRESET, align 4
  store i32 %228, i32* %3, align 4
  br label %230

229:                                              ; preds = %193
  store i32 0, i32* %3, align 4
  br label %230

230:                                              ; preds = %229, %227, %173, %143, %113, %37, %25
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @copyin(i32, %struct.ieee80211_txparams_req*, i32) #1

declare dso_local i64 @isclr(i32, i32) #1

declare dso_local i32 @checkrate(%struct.ieee80211_rateset*, i64) #1

declare dso_local i32 @checkmcs(%struct.ieee80211_htrateset*, i64) #1

declare dso_local i64 @isset(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
