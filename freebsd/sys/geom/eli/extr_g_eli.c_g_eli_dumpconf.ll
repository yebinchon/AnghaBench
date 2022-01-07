; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_eli_softc* }
%struct.g_eli_softc = type { i32, i8*, i8*, i32, i8*, i32, i32, i64, i64 }
%struct.g_consumer = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s<KeysTotal>%ju</KeysTotal>\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s<KeysAllocated>%ju</KeysAllocated>\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s<Flags>\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@G_ELI_FLAG_SUSPEND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SUSPEND\00", align 1
@G_ELI_FLAG_SINGLE_KEY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"SINGLE-KEY\00", align 1
@G_ELI_FLAG_NATIVE_BYTE_ORDER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"NATIVE-BYTE-ORDER\00", align 1
@G_ELI_FLAG_ONETIME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"ONETIME\00", align 1
@G_ELI_FLAG_BOOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"BOOT\00", align 1
@G_ELI_FLAG_WO_DETACH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"W-DETACH\00", align 1
@G_ELI_FLAG_RW_DETACH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"RW-DETACH\00", align 1
@G_ELI_FLAG_AUTH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@G_ELI_FLAG_WOPEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"W-OPEN\00", align 1
@G_ELI_FLAG_DESTROY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"DESTROY\00", align 1
@G_ELI_FLAG_RO = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"READ-ONLY\00", align 1
@G_ELI_FLAG_NODELETE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"NODELETE\00", align 1
@G_ELI_FLAG_GELIBOOT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"GELIBOOT\00", align 1
@G_ELI_FLAG_GELIDISPLAYPASS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"GELIDISPLAYPASS\00", align 1
@G_ELI_FLAG_AUTORESIZE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"AUTORESIZE\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"</Flags>\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"%s<UsedKey>%u</UsedKey>\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"%s<Version>%u</Version>\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"%s<Crypto>\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"hardware\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"</Crypto>\0A\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"%s<AuthenticationAlgorithm>%s</AuthenticationAlgorithm>\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"%s<KeyLength>%u</KeyLength>\0A\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"%s<EncryptionAlgorithm>%s</EncryptionAlgorithm>\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"%s<State>%s</State>\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"SUSPENDED\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_eli_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_eli_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_eli_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %13 = call i32 (...) @g_topology_assert()
  %14 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %15 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %14, i32 0, i32 0
  %16 = load %struct.g_eli_softc*, %struct.g_eli_softc** %15, align 8
  store %struct.g_eli_softc* %16, %struct.g_eli_softc** %11, align 8
  %17 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %18 = icmp eq %struct.g_eli_softc* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %418

20:                                               ; preds = %5
  %21 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %22 = icmp ne %struct.g_provider* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %25 = icmp ne %struct.g_consumer* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20
  br label %418

27:                                               ; preds = %23
  %28 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %31 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %33)
  %35 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %38 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %40)
  %42 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %46 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %27
  %50 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %51 = call i32 @sbuf_cat(%struct.sbuf* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %338

52:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %55 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @G_ELI_FLAG_SUSPEND, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %65 = call i32 @sbuf_cat(%struct.sbuf* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %67

66:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %69 = call i32 @sbuf_cat(%struct.sbuf* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %53
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %74 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @G_ELI_FLAG_SINGLE_KEY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %84 = call i32 @sbuf_cat(%struct.sbuf* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %86

85:                                               ; preds = %79
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %88 = call i32 @sbuf_cat(%struct.sbuf* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %72
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %93 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @G_ELI_FLAG_NATIVE_BYTE_ORDER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %103 = call i32 @sbuf_cat(%struct.sbuf* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %105

104:                                              ; preds = %98
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %107 = call i32 @sbuf_cat(%struct.sbuf* %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %91
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %112 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @G_ELI_FLAG_ONETIME, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %110
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %122 = call i32 @sbuf_cat(%struct.sbuf* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %124

123:                                              ; preds = %117
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %123, %120
  %125 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %126 = call i32 @sbuf_cat(%struct.sbuf* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %110
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %131 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @G_ELI_FLAG_BOOT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %129
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %141 = call i32 @sbuf_cat(%struct.sbuf* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %143

142:                                              ; preds = %136
  store i32 0, i32* %12, align 4
  br label %143

143:                                              ; preds = %142, %139
  %144 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %145 = call i32 @sbuf_cat(%struct.sbuf* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %129
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %150 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @G_ELI_FLAG_WO_DETACH, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %148
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %160 = call i32 @sbuf_cat(%struct.sbuf* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %162

161:                                              ; preds = %155
  store i32 0, i32* %12, align 4
  br label %162

162:                                              ; preds = %161, %158
  %163 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %164 = call i32 @sbuf_cat(%struct.sbuf* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %148
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %169 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @G_ELI_FLAG_RW_DETACH, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %167
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %179 = call i32 @sbuf_cat(%struct.sbuf* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %181

180:                                              ; preds = %174
  store i32 0, i32* %12, align 4
  br label %181

181:                                              ; preds = %180, %177
  %182 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %183 = call i32 @sbuf_cat(%struct.sbuf* %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %167
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185
  %187 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %188 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @G_ELI_FLAG_AUTH, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %186
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %198 = call i32 @sbuf_cat(%struct.sbuf* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %200

199:                                              ; preds = %193
  store i32 0, i32* %12, align 4
  br label %200

200:                                              ; preds = %199, %196
  %201 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %202 = call i32 @sbuf_cat(%struct.sbuf* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %186
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %207 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @G_ELI_FLAG_WOPEN, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %205
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %217 = call i32 @sbuf_cat(%struct.sbuf* %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %219

218:                                              ; preds = %212
  store i32 0, i32* %12, align 4
  br label %219

219:                                              ; preds = %218, %215
  %220 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %221 = call i32 @sbuf_cat(%struct.sbuf* %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %222

222:                                              ; preds = %219, %205
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223
  %225 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %226 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @G_ELI_FLAG_DESTROY, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %224
  %232 = load i32, i32* %12, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %236 = call i32 @sbuf_cat(%struct.sbuf* %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %238

237:                                              ; preds = %231
  store i32 0, i32* %12, align 4
  br label %238

238:                                              ; preds = %237, %234
  %239 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %240 = call i32 @sbuf_cat(%struct.sbuf* %239, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %241

241:                                              ; preds = %238, %224
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242
  %244 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %245 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @G_ELI_FLAG_RO, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %243
  %251 = load i32, i32* %12, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %255 = call i32 @sbuf_cat(%struct.sbuf* %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %257

256:                                              ; preds = %250
  store i32 0, i32* %12, align 4
  br label %257

257:                                              ; preds = %256, %253
  %258 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %259 = call i32 @sbuf_cat(%struct.sbuf* %258, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %260

260:                                              ; preds = %257, %243
  br label %261

261:                                              ; preds = %260
  br label %262

262:                                              ; preds = %261
  %263 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %264 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %262
  %270 = load i32, i32* %12, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %269
  %273 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %274 = call i32 @sbuf_cat(%struct.sbuf* %273, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %276

275:                                              ; preds = %269
  store i32 0, i32* %12, align 4
  br label %276

276:                                              ; preds = %275, %272
  %277 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %278 = call i32 @sbuf_cat(%struct.sbuf* %277, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %279

279:                                              ; preds = %276, %262
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  %282 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %283 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @G_ELI_FLAG_GELIBOOT, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %281
  %289 = load i32, i32* %12, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %288
  %292 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %293 = call i32 @sbuf_cat(%struct.sbuf* %292, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %295

294:                                              ; preds = %288
  store i32 0, i32* %12, align 4
  br label %295

295:                                              ; preds = %294, %291
  %296 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %297 = call i32 @sbuf_cat(%struct.sbuf* %296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %298

298:                                              ; preds = %295, %281
  br label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299
  %301 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %302 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %317

307:                                              ; preds = %300
  %308 = load i32, i32* %12, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %307
  %311 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %312 = call i32 @sbuf_cat(%struct.sbuf* %311, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %314

313:                                              ; preds = %307
  store i32 0, i32* %12, align 4
  br label %314

314:                                              ; preds = %313, %310
  %315 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %316 = call i32 @sbuf_cat(%struct.sbuf* %315, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %317

317:                                              ; preds = %314, %300
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  %320 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %321 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %336

326:                                              ; preds = %319
  %327 = load i32, i32* %12, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %331 = call i32 @sbuf_cat(%struct.sbuf* %330, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %333

332:                                              ; preds = %326
  store i32 0, i32* %12, align 4
  br label %333

333:                                              ; preds = %332, %329
  %334 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %335 = call i32 @sbuf_cat(%struct.sbuf* %334, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %336

336:                                              ; preds = %333, %319
  br label %337

337:                                              ; preds = %336
  br label %338

338:                                              ; preds = %337, %49
  %339 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %340 = call i32 @sbuf_cat(%struct.sbuf* %339, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %341 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %342 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @G_ELI_FLAG_ONETIME, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %354, label %347

347:                                              ; preds = %338
  %348 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %349 = load i8*, i8** %7, align 8
  %350 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %351 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %350, i32 0, i32 1
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %348, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8* %349, i8* %352)
  br label %354

354:                                              ; preds = %347, %338
  %355 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %356 = load i8*, i8** %7, align 8
  %357 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %358 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %357, i32 0, i32 2
  %359 = load i8*, i8** %358, align 8
  %360 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %355, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* %356, i8* %359)
  %361 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %362 = load i8*, i8** %7, align 8
  %363 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %361, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* %362)
  %364 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %365 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  switch i32 %366, label %373 [
    i32 129, label %367
    i32 128, label %370
  ]

367:                                              ; preds = %354
  %368 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %369 = call i32 @sbuf_cat(%struct.sbuf* %368, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  br label %376

370:                                              ; preds = %354
  %371 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %372 = call i32 @sbuf_cat(%struct.sbuf* %371, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  br label %376

373:                                              ; preds = %354
  %374 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %375 = call i32 @sbuf_cat(%struct.sbuf* %374, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %376

376:                                              ; preds = %373, %370, %367
  %377 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %378 = call i32 @sbuf_cat(%struct.sbuf* %377, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  %379 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %380 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @G_ELI_FLAG_AUTH, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %393

385:                                              ; preds = %376
  %386 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %387 = load i8*, i8** %7, align 8
  %388 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %389 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 4
  %391 = call i8* @g_eli_algo2str(i32 %390)
  %392 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %386, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i64 0, i64 0), i8* %387, i8* %391)
  br label %393

393:                                              ; preds = %385, %376
  %394 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %395 = load i8*, i8** %7, align 8
  %396 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %397 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %396, i32 0, i32 4
  %398 = load i8*, i8** %397, align 8
  %399 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %394, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i8* %395, i8* %398)
  %400 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %401 = load i8*, i8** %7, align 8
  %402 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %403 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %402, i32 0, i32 5
  %404 = load i32, i32* %403, align 8
  %405 = call i8* @g_eli_algo2str(i32 %404)
  %406 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %400, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.30, i64 0, i64 0), i8* %401, i8* %405)
  %407 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %408 = load i8*, i8** %7, align 8
  %409 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  %410 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @G_ELI_FLAG_SUSPEND, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  %415 = zext i1 %414 to i64
  %416 = select i1 %414, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0)
  %417 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %407, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i8* %408, i8* %416)
  br label %418

418:                                              ; preds = %393, %26, %19
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, ...) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i8* @g_eli_algo2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
