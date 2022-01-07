; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setroam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setroam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211_roamparam*, %struct.ieee80211com* }
%struct.ieee80211_roamparam = type { i64, i64 }
%struct.ieee80211com = type { i32, %struct.ieee80211_htrateset, %struct.ieee80211_rateset* }
%struct.ieee80211_htrateset = type { i32 }
%struct.ieee80211_rateset = type { i32 }
%struct.ieee80211req = type { i32, i32 }
%struct.ieee80211_roamparams_req = type { %struct.ieee80211_roamparam* }

@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@IEEE80211_M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_MODE_MAX = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@IEEE80211_ROAMING_DEVICE = common dso_local global i64 0, align 8
@ERESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_setroam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_setroam(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211_roamparams_req*, align 8
  %8 = alloca %struct.ieee80211_roamparam*, align 8
  %9 = alloca %struct.ieee80211_roamparam*, align 8
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
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 2
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %18, align 8
  store %struct.ieee80211com* %19, %struct.ieee80211com** %6, align 8
  %20 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %189

27:                                               ; preds = %2
  %28 = load i32, i32* @M_TEMP, align 4
  %29 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %30 = load i32, i32* @IEEE80211_M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.ieee80211_roamparams_req* @IEEE80211_MALLOC(i32 8, i32 %28, i32 %31)
  store %struct.ieee80211_roamparams_req* %32, %struct.ieee80211_roamparams_req** %7, align 8
  %33 = load %struct.ieee80211_roamparams_req*, %struct.ieee80211_roamparams_req** %7, align 8
  %34 = icmp eq %struct.ieee80211_roamparams_req* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %3, align 4
  br label %189

37:                                               ; preds = %27
  %38 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211_roamparams_req*, %struct.ieee80211_roamparams_req** %7, align 8
  %42 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @copyin(i32 %40, %struct.ieee80211_roamparams_req* %41, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %184

49:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  %50 = load i32, i32* @IEEE80211_MODE_MAX, align 4
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* @IEEE80211_MODE_11A, align 4
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %136, %49
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %139

56:                                               ; preds = %52
  %57 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i64 @isclr(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %136

64:                                               ; preds = %56
  %65 = load %struct.ieee80211_roamparams_req*, %struct.ieee80211_roamparams_req** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_roamparams_req, %struct.ieee80211_roamparams_req* %65, i32 0, i32 0
  %67 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %67, i64 %69
  store %struct.ieee80211_roamparam* %70, %struct.ieee80211_roamparam** %8, align 8
  %71 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %71, i32 0, i32 1
  %73 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %73, i64 %75
  store %struct.ieee80211_roamparam* %76, %struct.ieee80211_roamparam** %9, align 8
  %77 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %77, i32 0, i32 2
  %79 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %79, i64 %81
  store %struct.ieee80211_rateset* %82, %struct.ieee80211_rateset** %11, align 8
  %83 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %83, i32 0, i32 1
  store %struct.ieee80211_htrateset* %84, %struct.ieee80211_htrateset** %10, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %64
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %91 = icmp eq i32 %89, %90
  br label %92

92:                                               ; preds = %88, %64
  %93 = phi i1 [ true, %64 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %15, align 4
  %95 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %8, align 8
  %96 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %9, align 8
  %99 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %92
  %103 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %11, align 8
  %104 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %8, align 8
  %105 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @checkrate(%struct.ieee80211_rateset* %103, i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %10, align 8
  %114 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %8, align 8
  %115 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @checkmcs(%struct.ieee80211_htrateset* %113, i64 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %112, %109
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %13, align 4
  br label %184

121:                                              ; preds = %112, %102
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %121, %92
  %125 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %8, align 8
  %126 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %9, align 8
  %129 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %132, %124
  br label %136

136:                                              ; preds = %135, %63
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  br label %52

139:                                              ; preds = %52
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %183

142:                                              ; preds = %139
  %143 = load i32, i32* @IEEE80211_MODE_11A, align 4
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %171, %142
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %174

148:                                              ; preds = %144
  %149 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %150 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = call i64 @isset(i32 %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %148
  %156 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %157 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %156, i32 0, i32 1
  %158 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %158, i64 %160
  %162 = load %struct.ieee80211_roamparams_req*, %struct.ieee80211_roamparams_req** %7, align 8
  %163 = getelementptr inbounds %struct.ieee80211_roamparams_req, %struct.ieee80211_roamparams_req* %162, i32 0, i32 0
  %164 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %164, i64 %166
  %168 = bitcast %struct.ieee80211_roamparam* %161 to i8*
  %169 = bitcast %struct.ieee80211_roamparam* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 16, i1 false)
  br label %170

170:                                              ; preds = %155, %148
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %144

174:                                              ; preds = %144
  %175 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %176 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @IEEE80211_ROAMING_DEVICE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* @ERESTART, align 4
  store i32 %181, i32* %13, align 4
  br label %182

182:                                              ; preds = %180, %174
  br label %183

183:                                              ; preds = %182, %139
  br label %184

184:                                              ; preds = %183, %119, %48
  %185 = load %struct.ieee80211_roamparams_req*, %struct.ieee80211_roamparams_req** %7, align 8
  %186 = load i32, i32* @M_TEMP, align 4
  %187 = call i32 @IEEE80211_FREE(%struct.ieee80211_roamparams_req* %185, i32 %186)
  %188 = load i32, i32* %13, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %184, %35, %25
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.ieee80211_roamparams_req* @IEEE80211_MALLOC(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, %struct.ieee80211_roamparams_req*, i32) #1

declare dso_local i64 @isclr(i32, i32) #1

declare dso_local i32 @checkrate(%struct.ieee80211_rateset*, i64) #1

declare dso_local i32 @checkmcs(%struct.ieee80211_htrateset*, i64) #1

declare dso_local i64 @isset(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IEEE80211_FREE(%struct.ieee80211_roamparams_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
