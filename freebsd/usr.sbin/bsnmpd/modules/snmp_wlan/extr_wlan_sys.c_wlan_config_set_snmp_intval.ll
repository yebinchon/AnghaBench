; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_set_snmp_intval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_set_snmp_intval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@TruthValue_false = common dso_local global i8* null, align 8
@TruthValue_true = common dso_local global i8* null, align 8
@wlanIfaceRoamingMode_device = common dso_local global i32 0, align 4
@wlanIfaceRoamingMode_manual = common dso_local global i32 0, align 4
@wlanIfaceRoamingMode_auto = common dso_local global i32 0, align 4
@wlanIfaceDot11gProtMode_cts = common dso_local global i32 0, align 4
@wlanIfaceDot11gProtMode_rtscts = common dso_local global i32 0, align 4
@wlanIfaceDot11gProtMode_off = common dso_local global i32 0, align 4
@WlanIfaceDot11nPduType_disabled = common dso_local global i8* null, align 8
@WlanIfaceDot11nPduType_txOnly = common dso_local global i8* null, align 8
@WlanIfaceDot11nPduType_rxOnly = common dso_local global i8* null, align 8
@WlanIfaceDot11nPduType_txAndRx = common dso_local global i8* null, align 8
@wlanIfaceDot11nHTProtMode_rts = common dso_local global i32 0, align 4
@wlanIfaceDot11nHTProtMode_off = common dso_local global i32 0, align 4
@wlanIfaceDot11nSMPSMode_dynamic = common dso_local global i32 0, align 4
@wlanIfaceDot11nSMPSMode_static = common dso_local global i32 0, align 4
@wlanIfaceDot11nSMPSMode_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlan_iface*, i32, i32)* @wlan_config_set_snmp_intval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_config_set_snmp_intval(%struct.wlan_iface* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %433 [
    i32 162, label %8
    i32 161, label %20
    i32 156, label %32
    i32 136, label %44
    i32 135, label %56
    i32 155, label %61
    i32 143, label %65
    i32 134, label %69
    i32 166, label %81
    i32 165, label %93
    i32 164, label %97
    i32 163, label %101
    i32 144, label %105
    i32 160, label %121
    i32 159, label %133
    i32 157, label %145
    i32 149, label %157
    i32 168, label %169
    i32 167, label %181
    i32 158, label %185
    i32 154, label %189
    i32 150, label %201
    i32 148, label %213
    i32 147, label %229
    i32 146, label %241
    i32 173, label %253
    i32 172, label %273
    i32 171, label %301
    i32 170, label %317
    i32 169, label %337
    i32 152, label %341
    i32 153, label %353
    i32 151, label %365
    i32 145, label %377
    i32 142, label %389
    i32 141, label %401
    i32 139, label %417
    i32 138, label %421
    i32 137, label %425
    i32 140, label %429
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i8*, i8** @TruthValue_false, align 8
  %13 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %14 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %13, i32 0, i32 39
  store i8* %12, i8** %14, align 8
  br label %19

15:                                               ; preds = %8
  %16 = load i8*, i8** @TruthValue_true, align 8
  %17 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %18 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %17, i32 0, i32 39
  store i8* %16, i8** %18, align 8
  br label %19

19:                                               ; preds = %15, %11
  br label %434

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8*, i8** @TruthValue_false, align 8
  %25 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %26 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %25, i32 0, i32 38
  store i8* %24, i8** %26, align 8
  br label %31

27:                                               ; preds = %20
  %28 = load i8*, i8** @TruthValue_true, align 8
  %29 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %30 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %29, i32 0, i32 38
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %27, %23
  br label %434

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i8*, i8** @TruthValue_false, align 8
  %37 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %38 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %37, i32 0, i32 37
  store i8* %36, i8** %38, align 8
  br label %43

39:                                               ; preds = %32
  %40 = load i8*, i8** @TruthValue_true, align 8
  %41 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %42 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %41, i32 0, i32 37
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %434

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** @TruthValue_false, align 8
  %49 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %50 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %49, i32 0, i32 36
  store i8* %48, i8** %50, align 8
  br label %55

51:                                               ; preds = %44
  %52 = load i8*, i8** @TruthValue_true, align 8
  %53 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %54 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %53, i32 0, i32 36
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  br label %434

56:                                               ; preds = %3
  %57 = load i32, i32* %6, align 4
  %58 = sdiv i32 %57, 2
  %59 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %60 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %434

61:                                               ; preds = %3
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %64 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %434

65:                                               ; preds = %3
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %68 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %434

69:                                               ; preds = %3
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i8*, i8** @TruthValue_false, align 8
  %74 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %75 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %74, i32 0, i32 35
  store i8* %73, i8** %75, align 8
  br label %80

76:                                               ; preds = %69
  %77 = load i8*, i8** @TruthValue_true, align 8
  %78 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %79 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %78, i32 0, i32 35
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %76, %72
  br label %434

81:                                               ; preds = %3
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i8*, i8** @TruthValue_false, align 8
  %86 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %87 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %86, i32 0, i32 34
  store i8* %85, i8** %87, align 8
  br label %92

88:                                               ; preds = %81
  %89 = load i8*, i8** @TruthValue_true, align 8
  %90 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %91 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %90, i32 0, i32 34
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %88, %84
  br label %434

93:                                               ; preds = %3
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %96 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %434

97:                                               ; preds = %3
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %100 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  br label %434

101:                                              ; preds = %3
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %104 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  br label %434

105:                                              ; preds = %3
  %106 = load i32, i32* %6, align 4
  switch i32 %106, label %116 [
    i32 129, label %107
    i32 128, label %111
    i32 130, label %115
  ]

107:                                              ; preds = %105
  %108 = load i32, i32* @wlanIfaceRoamingMode_device, align 4
  %109 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %110 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %109, i32 0, i32 33
  store i32 %108, i32* %110, align 8
  br label %120

111:                                              ; preds = %105
  %112 = load i32, i32* @wlanIfaceRoamingMode_manual, align 4
  %113 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %114 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %113, i32 0, i32 33
  store i32 %112, i32* %114, align 8
  br label %120

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %105, %115
  %117 = load i32, i32* @wlanIfaceRoamingMode_auto, align 4
  %118 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %119 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %118, i32 0, i32 33
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %111, %107
  br label %434

121:                                              ; preds = %3
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i8*, i8** @TruthValue_false, align 8
  %126 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %127 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %126, i32 0, i32 32
  store i8* %125, i8** %127, align 8
  br label %132

128:                                              ; preds = %121
  %129 = load i8*, i8** @TruthValue_true, align 8
  %130 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %131 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %130, i32 0, i32 32
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %124
  br label %434

133:                                              ; preds = %3
  %134 = load i32, i32* %6, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i8*, i8** @TruthValue_false, align 8
  %138 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %139 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %138, i32 0, i32 31
  store i8* %137, i8** %139, align 8
  br label %144

140:                                              ; preds = %133
  %141 = load i8*, i8** @TruthValue_true, align 8
  %142 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %143 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %142, i32 0, i32 31
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %140, %136
  br label %434

145:                                              ; preds = %3
  %146 = load i32, i32* %6, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i8*, i8** @TruthValue_false, align 8
  %150 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %151 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %150, i32 0, i32 30
  store i8* %149, i8** %151, align 8
  br label %156

152:                                              ; preds = %145
  %153 = load i8*, i8** @TruthValue_true, align 8
  %154 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %155 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %154, i32 0, i32 30
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %152, %148
  br label %434

157:                                              ; preds = %3
  %158 = load i32, i32* %6, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i8*, i8** @TruthValue_false, align 8
  %162 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %163 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %162, i32 0, i32 29
  store i8* %161, i8** %163, align 8
  br label %168

164:                                              ; preds = %157
  %165 = load i8*, i8** @TruthValue_true, align 8
  %166 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %167 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %166, i32 0, i32 29
  store i8* %165, i8** %167, align 8
  br label %168

168:                                              ; preds = %164, %160
  br label %434

169:                                              ; preds = %3
  %170 = load i32, i32* %6, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i8*, i8** @TruthValue_false, align 8
  %174 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %175 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %174, i32 0, i32 28
  store i8* %173, i8** %175, align 8
  br label %180

176:                                              ; preds = %169
  %177 = load i8*, i8** @TruthValue_true, align 8
  %178 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %179 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %178, i32 0, i32 28
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %176, %172
  br label %434

181:                                              ; preds = %3
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %184 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 8
  br label %434

185:                                              ; preds = %3
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %188 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %187, i32 0, i32 7
  store i32 %186, i32* %188, align 4
  br label %434

189:                                              ; preds = %3
  %190 = load i32, i32* %6, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i8*, i8** @TruthValue_false, align 8
  %194 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %195 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %194, i32 0, i32 27
  store i8* %193, i8** %195, align 8
  br label %200

196:                                              ; preds = %189
  %197 = load i8*, i8** @TruthValue_true, align 8
  %198 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %199 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %198, i32 0, i32 27
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %196, %192
  br label %434

201:                                              ; preds = %3
  %202 = load i32, i32* %6, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load i8*, i8** @TruthValue_false, align 8
  %206 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %207 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %206, i32 0, i32 26
  store i8* %205, i8** %207, align 8
  br label %212

208:                                              ; preds = %201
  %209 = load i8*, i8** @TruthValue_true, align 8
  %210 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %211 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %210, i32 0, i32 26
  store i8* %209, i8** %211, align 8
  br label %212

212:                                              ; preds = %208, %204
  br label %434

213:                                              ; preds = %3
  %214 = load i32, i32* %6, align 4
  switch i32 %214, label %224 [
    i32 133, label %215
    i32 131, label %219
    i32 132, label %223
  ]

215:                                              ; preds = %213
  %216 = load i32, i32* @wlanIfaceDot11gProtMode_cts, align 4
  %217 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %218 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %217, i32 0, i32 25
  store i32 %216, i32* %218, align 8
  br label %228

219:                                              ; preds = %213
  %220 = load i32, i32* @wlanIfaceDot11gProtMode_rtscts, align 4
  %221 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %222 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %221, i32 0, i32 25
  store i32 %220, i32* %222, align 8
  br label %228

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %213, %223
  %225 = load i32, i32* @wlanIfaceDot11gProtMode_off, align 4
  %226 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %227 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %226, i32 0, i32 25
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %224, %219, %215
  br label %434

229:                                              ; preds = %3
  %230 = load i32, i32* %6, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load i8*, i8** @TruthValue_false, align 8
  %234 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %235 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %234, i32 0, i32 24
  store i8* %233, i8** %235, align 8
  br label %240

236:                                              ; preds = %229
  %237 = load i8*, i8** @TruthValue_true, align 8
  %238 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %239 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %238, i32 0, i32 24
  store i8* %237, i8** %239, align 8
  br label %240

240:                                              ; preds = %236, %232
  br label %434

241:                                              ; preds = %3
  %242 = load i32, i32* %6, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = load i8*, i8** @TruthValue_false, align 8
  %246 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %247 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %246, i32 0, i32 23
  store i8* %245, i8** %247, align 8
  br label %252

248:                                              ; preds = %241
  %249 = load i8*, i8** @TruthValue_true, align 8
  %250 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %251 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %250, i32 0, i32 23
  store i8* %249, i8** %251, align 8
  br label %252

252:                                              ; preds = %248, %244
  br label %434

253:                                              ; preds = %3
  %254 = load i32, i32* %6, align 4
  switch i32 %254, label %268 [
    i32 0, label %255
    i32 1, label %259
    i32 2, label %263
    i32 3, label %267
  ]

255:                                              ; preds = %253
  %256 = load i8*, i8** @WlanIfaceDot11nPduType_disabled, align 8
  %257 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %258 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %257, i32 0, i32 22
  store i8* %256, i8** %258, align 8
  br label %272

259:                                              ; preds = %253
  %260 = load i8*, i8** @WlanIfaceDot11nPduType_txOnly, align 8
  %261 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %262 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %261, i32 0, i32 22
  store i8* %260, i8** %262, align 8
  br label %272

263:                                              ; preds = %253
  %264 = load i8*, i8** @WlanIfaceDot11nPduType_rxOnly, align 8
  %265 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %266 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %265, i32 0, i32 22
  store i8* %264, i8** %266, align 8
  br label %272

267:                                              ; preds = %253
  br label %268

268:                                              ; preds = %253, %267
  %269 = load i8*, i8** @WlanIfaceDot11nPduType_txAndRx, align 8
  %270 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %271 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %270, i32 0, i32 22
  store i8* %269, i8** %271, align 8
  br label %272

272:                                              ; preds = %268, %263, %259, %255
  br label %434

273:                                              ; preds = %3
  %274 = load i32, i32* %6, align 4
  switch i32 %274, label %297 [
    i32 184, label %275
    i32 183, label %278
    i32 182, label %281
    i32 180, label %284
    i32 179, label %287
    i32 178, label %290
    i32 181, label %293
    i32 177, label %296
  ]

275:                                              ; preds = %273
  %276 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %277 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %276, i32 0, i32 8
  store i32 25, i32* %277, align 8
  br label %300

278:                                              ; preds = %273
  %279 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %280 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %279, i32 0, i32 8
  store i32 50, i32* %280, align 8
  br label %300

281:                                              ; preds = %273
  %282 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %283 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %282, i32 0, i32 8
  store i32 100, i32* %283, align 8
  br label %300

284:                                              ; preds = %273
  %285 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %286 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %285, i32 0, i32 8
  store i32 200, i32* %286, align 8
  br label %300

287:                                              ; preds = %273
  %288 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %289 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %288, i32 0, i32 8
  store i32 400, i32* %289, align 8
  br label %300

290:                                              ; preds = %273
  %291 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %292 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %291, i32 0, i32 8
  store i32 800, i32* %292, align 8
  br label %300

293:                                              ; preds = %273
  %294 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %295 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %294, i32 0, i32 8
  store i32 1600, i32* %295, align 8
  br label %300

296:                                              ; preds = %273
  br label %297

297:                                              ; preds = %273, %296
  %298 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %299 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %298, i32 0, i32 8
  store i32 0, i32* %299, align 8
  br label %300

300:                                              ; preds = %297, %293, %290, %287, %284, %281, %278, %275
  br label %434

301:                                              ; preds = %3
  %302 = load i32, i32* %6, align 4
  switch i32 %302, label %313 [
    i32 185, label %303
    i32 188, label %306
    i32 187, label %309
    i32 186, label %312
  ]

303:                                              ; preds = %301
  %304 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %305 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %304, i32 0, i32 9
  store i32 8192, i32* %305, align 4
  br label %316

306:                                              ; preds = %301
  %307 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %308 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %307, i32 0, i32 9
  store i32 16384, i32* %308, align 4
  br label %316

309:                                              ; preds = %301
  %310 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %311 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %310, i32 0, i32 9
  store i32 32768, i32* %311, align 4
  br label %316

312:                                              ; preds = %301
  br label %313

313:                                              ; preds = %301, %312
  %314 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %315 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %314, i32 0, i32 9
  store i32 65536, i32* %315, align 4
  br label %316

316:                                              ; preds = %313, %309, %306, %303
  br label %434

317:                                              ; preds = %3
  %318 = load i32, i32* %6, align 4
  switch i32 %318, label %332 [
    i32 0, label %319
    i32 1, label %323
    i32 3, label %327
    i32 2, label %331
  ]

319:                                              ; preds = %317
  %320 = load i8*, i8** @WlanIfaceDot11nPduType_disabled, align 8
  %321 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %322 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %321, i32 0, i32 21
  store i8* %320, i8** %322, align 8
  br label %336

323:                                              ; preds = %317
  %324 = load i8*, i8** @WlanIfaceDot11nPduType_txOnly, align 8
  %325 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %326 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %325, i32 0, i32 21
  store i8* %324, i8** %326, align 8
  br label %336

327:                                              ; preds = %317
  %328 = load i8*, i8** @WlanIfaceDot11nPduType_txAndRx, align 8
  %329 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %330 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %329, i32 0, i32 21
  store i8* %328, i8** %330, align 8
  br label %336

331:                                              ; preds = %317
  br label %332

332:                                              ; preds = %317, %331
  %333 = load i8*, i8** @WlanIfaceDot11nPduType_rxOnly, align 8
  %334 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %335 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %334, i32 0, i32 21
  store i8* %333, i8** %335, align 8
  br label %336

336:                                              ; preds = %332, %327, %323, %319
  br label %434

337:                                              ; preds = %3
  %338 = load i32, i32* %6, align 4
  %339 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %340 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %339, i32 0, i32 10
  store i32 %338, i32* %340, align 8
  br label %434

341:                                              ; preds = %3
  %342 = load i32, i32* %6, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %341
  %345 = load i8*, i8** @TruthValue_false, align 8
  %346 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %347 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %346, i32 0, i32 20
  store i8* %345, i8** %347, align 8
  br label %352

348:                                              ; preds = %341
  %349 = load i8*, i8** @TruthValue_true, align 8
  %350 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %351 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %350, i32 0, i32 20
  store i8* %349, i8** %351, align 8
  br label %352

352:                                              ; preds = %348, %344
  br label %434

353:                                              ; preds = %3
  %354 = load i32, i32* %6, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = load i8*, i8** @TruthValue_false, align 8
  %358 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %359 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %358, i32 0, i32 19
  store i8* %357, i8** %359, align 8
  br label %364

360:                                              ; preds = %353
  %361 = load i8*, i8** @TruthValue_true, align 8
  %362 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %363 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %362, i32 0, i32 19
  store i8* %361, i8** %363, align 8
  br label %364

364:                                              ; preds = %360, %356
  br label %434

365:                                              ; preds = %3
  %366 = load i32, i32* %6, align 4
  %367 = icmp eq i32 %366, 131
  br i1 %367, label %368, label %372

368:                                              ; preds = %365
  %369 = load i32, i32* @wlanIfaceDot11nHTProtMode_rts, align 4
  %370 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %371 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %370, i32 0, i32 18
  store i32 %369, i32* %371, align 8
  br label %376

372:                                              ; preds = %365
  %373 = load i32, i32* @wlanIfaceDot11nHTProtMode_off, align 4
  %374 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %375 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %374, i32 0, i32 18
  store i32 %373, i32* %375, align 8
  br label %376

376:                                              ; preds = %372, %368
  br label %434

377:                                              ; preds = %3
  %378 = load i32, i32* %6, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %377
  %381 = load i8*, i8** @TruthValue_false, align 8
  %382 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %383 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %382, i32 0, i32 17
  store i8* %381, i8** %383, align 8
  br label %388

384:                                              ; preds = %377
  %385 = load i8*, i8** @TruthValue_true, align 8
  %386 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %387 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %386, i32 0, i32 17
  store i8* %385, i8** %387, align 8
  br label %388

388:                                              ; preds = %384, %380
  br label %434

389:                                              ; preds = %3
  %390 = load i32, i32* %6, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %389
  %393 = load i8*, i8** @TruthValue_false, align 8
  %394 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %395 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %394, i32 0, i32 16
  store i8* %393, i8** %395, align 8
  br label %400

396:                                              ; preds = %389
  %397 = load i8*, i8** @TruthValue_true, align 8
  %398 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %399 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %398, i32 0, i32 16
  store i8* %397, i8** %399, align 8
  br label %400

400:                                              ; preds = %396, %392
  br label %434

401:                                              ; preds = %3
  %402 = load i32, i32* %6, align 4
  switch i32 %402, label %412 [
    i32 176, label %403
    i32 175, label %407
    i32 174, label %411
  ]

403:                                              ; preds = %401
  %404 = load i32, i32* @wlanIfaceDot11nSMPSMode_dynamic, align 4
  %405 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %406 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %405, i32 0, i32 15
  store i32 %404, i32* %406, align 4
  br label %416

407:                                              ; preds = %401
  %408 = load i32, i32* @wlanIfaceDot11nSMPSMode_static, align 4
  %409 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %410 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %409, i32 0, i32 15
  store i32 %408, i32* %410, align 4
  br label %416

411:                                              ; preds = %401
  br label %412

412:                                              ; preds = %401, %411
  %413 = load i32, i32* @wlanIfaceDot11nSMPSMode_disabled, align 4
  %414 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %415 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %414, i32 0, i32 15
  store i32 %413, i32* %415, align 4
  br label %416

416:                                              ; preds = %412, %407, %403
  br label %434

417:                                              ; preds = %3
  %418 = load i32, i32* %6, align 4
  %419 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %420 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %419, i32 0, i32 11
  store i32 %418, i32* %420, align 4
  br label %434

421:                                              ; preds = %3
  %422 = load i32, i32* %6, align 4
  %423 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %424 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %423, i32 0, i32 12
  store i32 %422, i32* %424, align 8
  br label %434

425:                                              ; preds = %3
  %426 = load i32, i32* %6, align 4
  %427 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %428 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %427, i32 0, i32 13
  store i32 %426, i32* %428, align 4
  br label %434

429:                                              ; preds = %3
  %430 = load i32, i32* %6, align 4
  %431 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %432 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %431, i32 0, i32 14
  store i32 %430, i32* %432, align 8
  br label %434

433:                                              ; preds = %3
  br label %434

434:                                              ; preds = %433, %429, %425, %421, %417, %416, %400, %388, %376, %364, %352, %337, %336, %316, %300, %272, %252, %240, %228, %212, %200, %185, %181, %180, %168, %156, %144, %132, %120, %101, %97, %93, %92, %80, %65, %61, %56, %55, %43, %31, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
