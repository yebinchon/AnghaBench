; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211_key*, %struct.TYPE_2__*, i32 }
%struct.ieee80211_key = type { i64, i32, i32, i32, i64, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211req = type { i32, i32 }
%struct.ieee80211req_key = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.ieee80211_node = type { i32, %struct.ieee80211_key, i32 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@IEEE80211_KEYIX_NONE = common dso_local global i64 0, align 8
@IEEE80211_KEY_XMIT = common dso_local global i32 0, align 4
@IEEE80211_KEY_RECV = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_WEP_NKID = common dso_local global i64 0, align 8
@IEEE80211_KEYBUF_SIZE = common dso_local global i32 0, align 4
@IEEE80211_TID_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IEEE80211_KEY_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_setkey(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211req_key, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.ieee80211_key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %12 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 40
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %214

19:                                               ; preds = %2
  %20 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @copyin(i32 %22, %struct.ieee80211req_key* %6, i32 40)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %214

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ugt i64 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @E2BIG, align 4
  store i32 %34, i32* %3, align 4
  br label %214

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @IEEE80211_KEYIX_NONE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IEEE80211_KEY_XMIT, align 4
  %45 = load i32, i32* @IEEE80211_KEY_RECV, align 4
  %46 = or i32 %44, %45
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %3, align 4
  br label %214

50:                                               ; preds = %41
  %51 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IEEE80211_M_STA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.ieee80211_node* @ieee80211_ref_node(i32 %59)
  store %struct.ieee80211_node* %60, %struct.ieee80211_node** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @IEEE80211_ADDR_EQ(i32 %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %56
  %69 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %70 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %69)
  %71 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %71, i32* %3, align 4
  br label %214

72:                                               ; preds = %56
  br label %87

73:                                               ; preds = %50
  %74 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %75 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.ieee80211_node* @ieee80211_find_vap_node(i32* %77, %struct.ieee80211vap* %78, i32 %80)
  store %struct.ieee80211_node* %81, %struct.ieee80211_node** %7, align 8
  %82 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %83 = icmp eq %struct.ieee80211_node* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* @ENOENT, align 4
  store i32 %85, i32* %3, align 4
  br label %214

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %72
  %88 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %89 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %88, i32 0, i32 1
  store %struct.ieee80211_key* %89, %struct.ieee80211_key** %8, align 8
  br label %112

90:                                               ; preds = %35
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @IEEE80211_WEP_NKID, align 8
  %93 = icmp uge i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %3, align 4
  br label %214

96:                                               ; preds = %90
  %97 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %98 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %97, i32 0, i32 1
  %99 = load %struct.ieee80211_key*, %struct.ieee80211_key** %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %99, i64 %100
  store %struct.ieee80211_key* %101, %struct.ieee80211_key** %8, align 8
  %102 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @IEEE80211_KEYIX_NONE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %110 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %107, %96
  store %struct.ieee80211_node* null, %struct.ieee80211_node** %7, align 8
  br label %112

112:                                              ; preds = %111, %87
  store i32 0, i32* %10, align 4
  %113 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %114 = call i32 @ieee80211_key_update_begin(%struct.ieee80211vap* %113)
  %115 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %116 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %121 = call i64 @ieee80211_crypto_newkey(%struct.ieee80211vap* %115, i32 %117, i32 %119, %struct.ieee80211_key* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %202

123:                                              ; preds = %112
  %124 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %127 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %129 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @IEEE80211_KEYBUF_SIZE, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = load i32, i32* @IEEE80211_KEYBUF_SIZE, align 4
  %135 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %136 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %133, %123
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %151, %137
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @IEEE80211_TID_SIZE, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %146 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  br label %151

151:                                              ; preds = %142
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %138

154:                                              ; preds = %138
  %155 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %156 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %158 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @memset(i32 %159, i32 0, i32 4)
  %161 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %162 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @memcpy(i32 %163, i32 %165, i32 %167)
  %169 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %170 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %173 = icmp ne %struct.ieee80211_node* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %154
  %175 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %176 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  br label %181

178:                                              ; preds = %154
  %179 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  br label %181

181:                                              ; preds = %178, %174
  %182 = phi i32 [ %177, %174 ], [ %180, %178 ]
  %183 = call i32 @IEEE80211_ADDR_COPY(i32 %171, i32 %182)
  %184 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %185 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %186 = call i32 @ieee80211_crypto_setkey(%struct.ieee80211vap* %184, %struct.ieee80211_key* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %181
  %189 = load i32, i32* @EIO, align 4
  store i32 %189, i32* %10, align 4
  br label %201

190:                                              ; preds = %181
  %191 = getelementptr inbounds %struct.ieee80211req_key, %struct.ieee80211req_key* %6, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @IEEE80211_KEY_DEFAULT, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %198 = load i64, i64* %9, align 8
  %199 = call i32 @ieee80211_crypto_set_deftxkey(%struct.ieee80211vap* %197, i64 %198)
  br label %200

200:                                              ; preds = %196, %190
  br label %201

201:                                              ; preds = %200, %188
  br label %204

202:                                              ; preds = %112
  %203 = load i32, i32* @ENXIO, align 4
  store i32 %203, i32* %10, align 4
  br label %204

204:                                              ; preds = %202, %201
  %205 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %206 = call i32 @ieee80211_key_update_end(%struct.ieee80211vap* %205)
  %207 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %208 = icmp ne %struct.ieee80211_node* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %211 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %210)
  br label %212

212:                                              ; preds = %209, %204
  %213 = load i32, i32* %10, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %212, %94, %84, %68, %48, %33, %26, %17
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @copyin(i32, %struct.ieee80211req_key*, i32) #1

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32) #1

declare dso_local i32 @IEEE80211_ADDR_EQ(i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local %struct.ieee80211_node* @ieee80211_find_vap_node(i32*, %struct.ieee80211vap*, i32) #1

declare dso_local i32 @ieee80211_key_update_begin(%struct.ieee80211vap*) #1

declare dso_local i64 @ieee80211_crypto_newkey(%struct.ieee80211vap*, i32, i32, %struct.ieee80211_key*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @ieee80211_crypto_setkey(%struct.ieee80211vap*, %struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_crypto_set_deftxkey(%struct.ieee80211vap*, i64) #1

declare dso_local i32 @ieee80211_key_update_end(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
