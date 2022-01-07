; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setwmeparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setwmeparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32, %struct.ieee80211_wme_state }
%struct.ieee80211_wme_state = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.wmeParams* }
%struct.wmeParams = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.wmeParams* }
%struct.TYPE_6__ = type { %struct.wmeParams* }
%struct.TYPE_5__ = type { %struct.wmeParams* }
%struct.ieee80211req = type { i32, i32, i32 }

@IEEE80211_C_WME = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_WMEPARAM_BSS = common dso_local global i32 0, align 4
@IEEE80211_WMEPARAM_VAL = common dso_local global i32 0, align 4
@WME_F_AGGRMODE = common dso_local global i32 0, align 4
@WME_NUM_AC = common dso_local global i32 0, align 4
@WME_AC_BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_setwmeparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_setwmeparam(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211_wme_state*, align 8
  %8 = alloca %struct.wmeParams*, align 8
  %9 = alloca %struct.wmeParams*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 0
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %14, align 8
  store %struct.ieee80211com* %15, %struct.ieee80211com** %6, align 8
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 1
  store %struct.ieee80211_wme_state* %17, %struct.ieee80211_wme_state** %7, align 8
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE80211_C_WME, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %25, i32* %3, align 4
  br label %184

26:                                               ; preds = %2
  %27 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IEEE80211_WMEPARAM_BSS, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_WMEPARAM_VAL, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WME_F_AGGRMODE, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @WME_NUM_AC, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %26
  %46 = load i32, i32* @WME_AC_BE, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %26
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.wmeParams*, %struct.wmeParams** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %54, i64 %56
  store %struct.wmeParams* %57, %struct.wmeParams** %9, align 8
  %58 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.wmeParams*, %struct.wmeParams** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %61, i64 %63
  store %struct.wmeParams* %64, %struct.wmeParams** %8, align 8
  br label %80

65:                                               ; preds = %47
  %66 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.wmeParams*, %struct.wmeParams** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %69, i64 %71
  store %struct.wmeParams* %72, %struct.wmeParams** %9, align 8
  %73 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.wmeParams*, %struct.wmeParams** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %76, i64 %78
  store %struct.wmeParams* %79, %struct.wmeParams** %8, align 8
  br label %80

80:                                               ; preds = %65, %50
  %81 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %181 [
    i32 129, label %84
    i32 130, label %102
    i32 131, label %120
    i32 128, label %138
    i32 132, label %156
    i32 133, label %171
  ]

84:                                               ; preds = %80
  %85 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %89 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92, %84
  %96 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %97 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %100 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %92
  br label %181

102:                                              ; preds = %80
  %103 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %107 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110, %102
  %114 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %115 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %118 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %113, %110
  br label %181

120:                                              ; preds = %80
  %121 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %122 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %125 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128, %120
  %132 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %133 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %136 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %131, %128
  br label %181

138:                                              ; preds = %80
  %139 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %140 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %143 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %146, %138
  %150 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %151 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %154 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %149, %146
  br label %181

156:                                              ; preds = %80
  %157 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %158 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %161 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %156
  %165 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %166 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %169 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %164, %156
  br label %181

171:                                              ; preds = %80
  %172 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %173 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %178 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %180 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %179, i32 0, i32 0
  store i32 %176, i32* %180, align 4
  br label %181

181:                                              ; preds = %80, %171, %170, %155, %137, %119, %101
  %182 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %183 = call i32 @ieee80211_wme_updateparams(%struct.ieee80211vap* %182)
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %181, %24
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @ieee80211_wme_updateparams(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
