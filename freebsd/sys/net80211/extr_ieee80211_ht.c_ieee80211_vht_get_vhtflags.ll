; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_vht_get_vhtflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_vht_get_vhtflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i64, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32, i32 }

@IEEE80211_NODE_VHT = common dso_local global i32 0, align 4
@IEEE80211_FVHT_VHT = common dso_local global i32 0, align 4
@IEEE80211_VHT_CHANWIDTH_160MHZ = common dso_local global i64 0, align 8
@IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK = common dso_local global i32 0, align 4
@IEEE80211_FVHT_USEVHT160 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT160 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4
@IEEE80211_VHT_CHANWIDTH_80P80MHZ = common dso_local global i64 0, align 8
@IEEE80211_FVHT_USEVHT80P80 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT80_80 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CHANWIDTH_80MHZ = common dso_local global i64 0, align 8
@IEEE80211_FVHT_USEVHT80 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT80 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CHANWIDTH_USE_HT = common dso_local global i64 0, align 8
@IEEE80211_FVHT_USEVHT40 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT40U = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT40D = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT20 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, i32)* @ieee80211_vht_get_vhtflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_vht_get_vhtflags(%struct.ieee80211_node* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 2
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IEEE80211_NODE_VHT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %186

16:                                               ; preds = %2
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_FVHT_VHT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %186

23:                                               ; preds = %16
  %24 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IEEE80211_VHT_CHANWIDTH_160MHZ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %23
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK, align 4
  %34 = call i32 @MS(i32 %32, i32 %33)
  %35 = icmp sge i32 %34, 1
  br i1 %35, label %36, label %62

36:                                               ; preds = %29
  %37 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IEEE80211_FVHT_USEVHT160, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load i32, i32* @IEEE80211_CHAN_VHT160, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %61

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %48
  br label %185

62:                                               ; preds = %36, %29, %23
  %63 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %64 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IEEE80211_VHT_CHANWIDTH_80P80MHZ, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %62
  %69 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK, align 4
  %73 = call i32 @MS(i32 %71, i32 %72)
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %101

75:                                               ; preds = %68
  %76 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IEEE80211_FVHT_USEVHT80P80, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %75
  %83 = load i32, i32* @IEEE80211_CHAN_VHT80_80, align 4
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %100

91:                                               ; preds = %82
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %99, %87
  br label %184

101:                                              ; preds = %75, %68, %62
  %102 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %103 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @IEEE80211_VHT_CHANWIDTH_80MHZ, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %101
  %108 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %109 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IEEE80211_FVHT_USEVHT80, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %107
  %115 = load i32, i32* @IEEE80211_CHAN_VHT80, align 4
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %132

123:                                              ; preds = %114
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %127, %123
  br label %132

132:                                              ; preds = %131, %119
  br label %183

133:                                              ; preds = %107, %101
  %134 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %135 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @IEEE80211_VHT_CHANWIDTH_USE_HT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %180

139:                                              ; preds = %133
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %145 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @IEEE80211_FVHT_USEVHT40, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load i32, i32* @IEEE80211_CHAN_VHT40U, align 4
  %152 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %153 = or i32 %151, %152
  store i32 %153, i32* %6, align 4
  br label %179

154:                                              ; preds = %143, %139
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %160 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @IEEE80211_FVHT_USEVHT40, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i32, i32* @IEEE80211_CHAN_VHT40D, align 4
  %167 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %168 = or i32 %166, %167
  store i32 %168, i32* %6, align 4
  br label %178

169:                                              ; preds = %158, %154
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i32, i32* @IEEE80211_CHAN_VHT20, align 4
  %175 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %176 = or i32 %174, %175
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %173, %169
  br label %178

178:                                              ; preds = %177, %165
  br label %179

179:                                              ; preds = %178, %150
  br label %182

180:                                              ; preds = %133
  %181 = load i32, i32* @IEEE80211_CHAN_VHT20, align 4
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %180, %179
  br label %183

183:                                              ; preds = %182, %132
  br label %184

184:                                              ; preds = %183, %100
  br label %185

185:                                              ; preds = %184, %61
  br label %186

186:                                              ; preds = %185, %16, %2
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
