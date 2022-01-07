; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_ioctl_set80211.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_ioctl_set80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i32, %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { i32, i8, i32, i32 }
%struct.ieee80211req = type { i32, i32, i32, i32 }

@IEEE80211_NWID_LEN = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_MESH_PROTO_DSZ = common dso_local global i32 0, align 4
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@IEEE80211_MESHID_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENETRESET = common dso_local global i32 0, align 4
@IEEE80211_MESHFLAGS_AP = common dso_local global i32 0, align 4
@IEEE80211_MESHFLAGS_FWD = common dso_local global i32 0, align 4
@IEEE80211_MESHFLAGS_GATE = common dso_local global i32 0, align 4
@broadcastaddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @mesh_ioctl_set80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_ioctl_set80211(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211_mesh_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 2
  %15 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %14, align 8
  store %struct.ieee80211_mesh_state* %15, %struct.ieee80211_mesh_state** %6, align 8
  %16 = load i32, i32* @IEEE80211_NWID_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %23 = load i32, i32* @IEEE80211_MESH_PROTO_DSZ, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOSYS, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %231

33:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %34 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %227 [
    i32 136, label %37
    i32 139, label %80
    i32 138, label %100
    i32 137, label %121
    i32 132, label %140
    i32 133, label %147
    i32 135, label %195
    i32 134, label %211
  ]

37:                                               ; preds = %33
  %38 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_MESHID_LEN, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42, %37
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %231

50:                                               ; preds = %42
  %51 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, ...) @copyin(i32 %53, i8* %19, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %229

61:                                               ; preds = %50
  %62 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IEEE80211_NWID_LEN, align 4
  %66 = call i32 @memset(i32 %64, i32 0, i32 %65)
  %67 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %73 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i32 %74, i8* %19, i32 %77)
  %79 = load i32, i32* @ENETRESET, align 4
  store i32 %79, i32* %11, align 4
  br label %229

80:                                               ; preds = %33
  %81 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* @IEEE80211_MESHFLAGS_AP, align 4
  %87 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %98

91:                                               ; preds = %80
  %92 = load i32, i32* @IEEE80211_MESHFLAGS_AP, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %95 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %85
  %99 = load i32, i32* @ENETRESET, align 4
  store i32 %99, i32* %11, align 4
  br label %229

100:                                              ; preds = %33
  %101 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %102 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* @IEEE80211_MESHFLAGS_FWD, align 4
  %107 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %108 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %118

111:                                              ; preds = %100
  %112 = load i32, i32* @IEEE80211_MESHFLAGS_FWD, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %115 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %111, %105
  %119 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %120 = call i32 @mesh_gatemode_setup(%struct.ieee80211vap* %119)
  br label %229

121:                                              ; preds = %33
  %122 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %123 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* @IEEE80211_MESHFLAGS_GATE, align 4
  %128 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %129 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %139

132:                                              ; preds = %121
  %133 = load i32, i32* @IEEE80211_MESHFLAGS_GATE, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %136 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %132, %126
  br label %229

140:                                              ; preds = %33
  %141 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %142 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = trunc i32 %143 to i8
  %145 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %146 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %145, i32 0, i32 1
  store i8 %144, i8* %146, align 4
  br label %229

147:                                              ; preds = %33
  %148 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %149 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %192 [
    i32 128, label %151
    i32 129, label %153
    i32 131, label %156
    i32 130, label %186
  ]

151:                                              ; preds = %147
  %152 = load i32, i32* @EINVAL, align 4
  store i32 %152, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %231

153:                                              ; preds = %147
  %154 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %155 = call i32 @ieee80211_mesh_rt_flush(%struct.ieee80211vap* %154)
  br label %194

156:                                              ; preds = %147
  %157 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %158 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %161 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @IEEE80211_ADDR_EQ(i32 %159, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %156
  %166 = load i32, i32* @broadcastaddr, align 4
  %167 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %168 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @IEEE80211_ADDR_EQ(i32 %166, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165, %156
  %173 = load i32, i32* @EINVAL, align 4
  store i32 %173, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %231

174:                                              ; preds = %165
  %175 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %176 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %179 = call i32 (i32, ...) @copyin(i32 %177, i8* %22, i32 %178)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %184 = call i32 @ieee80211_mesh_discover(%struct.ieee80211vap* %183, i8* %22, i32* null)
  br label %185

185:                                              ; preds = %182, %174
  br label %194

186:                                              ; preds = %147
  %187 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %188 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %189 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @ieee80211_mesh_rt_del(%struct.ieee80211vap* %187, i32 %190)
  br label %194

192:                                              ; preds = %147
  %193 = load i32, i32* @ENOSYS, align 4
  store i32 %193, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %231

194:                                              ; preds = %186, %185, %153
  br label %229

195:                                              ; preds = %33
  %196 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %197 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32, ...) @copyin(i32 %198, i8* %25, i64 %24)
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %195
  %203 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %204 = call i32 @mesh_select_proto_metric(%struct.ieee80211vap* %203, i8* %25)
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = load i32, i32* @ENETRESET, align 4
  store i32 %208, i32* %11, align 4
  br label %209

209:                                              ; preds = %207, %202
  br label %210

210:                                              ; preds = %209, %195
  br label %229

211:                                              ; preds = %33
  %212 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %213 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i32, ...) @copyin(i32 %214, i8* %25, i64 %24)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %211
  %219 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %220 = call i32 @mesh_select_proto_path(%struct.ieee80211vap* %219, i8* %25)
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %11, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load i32, i32* @ENETRESET, align 4
  store i32 %224, i32* %11, align 4
  br label %225

225:                                              ; preds = %223, %218
  br label %226

226:                                              ; preds = %225, %211
  br label %229

227:                                              ; preds = %33
  %228 = load i32, i32* @ENOSYS, align 4
  store i32 %228, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %231

229:                                              ; preds = %226, %210, %194, %140, %139, %118, %98, %61, %60
  %230 = load i32, i32* %11, align 4
  store i32 %230, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %231

231:                                              ; preds = %229, %227, %192, %172, %151, %48, %31
  %232 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %232)
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @copyin(i32, ...) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @mesh_gatemode_setup(%struct.ieee80211vap*) #2

declare dso_local i32 @ieee80211_mesh_rt_flush(%struct.ieee80211vap*) #2

declare dso_local i32 @IEEE80211_ADDR_EQ(i32, i32) #2

declare dso_local i32 @ieee80211_mesh_discover(%struct.ieee80211vap*, i8*, i32*) #2

declare dso_local i32 @ieee80211_mesh_rt_del(%struct.ieee80211vap*, i32) #2

declare dso_local i32 @mesh_select_proto_metric(%struct.ieee80211vap*, i8*) #2

declare dso_local i32 @mesh_select_proto_path(%struct.ieee80211vap*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
