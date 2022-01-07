; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_eli_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.g_eli_metadata = type { i32 }
%struct.g_provider = type { i32, i64 }
%struct.g_consumer = type { %struct.g_provider* }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Missing device(s).\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"noboot\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Options -b and -B are mutually exclusive.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"trim\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"notrim\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Options -t and -T are mutually exclusive.\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"geliboot\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"nogeliboot\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Options -g and -G are mutually exclusive.\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"displaypass\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"nodisplaypass\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Options -d and -D are mutually exclusive.\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"autoresize\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"noautoresize\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Options -r and -R are mutually exclusive.\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"No option given.\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"No 'arg%d' argument.\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"Skipping configuration of not attached provider %s.\00", align 1
@G_ELI_FLAG_RO = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [54 x i8] c"Cannot change configuration of read-only provider %s.\00", align 1
@G_ELI_FLAG_BOOT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [37 x i8] c"BOOT flag already configured for %s.\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"BOOT flag not configured for %s.\00", align 1
@G_ELI_FLAG_NODELETE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [45 x i8] c"TRIM disable flag already configured for %s.\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"TRIM disable flag not configured for %s.\00", align 1
@G_ELI_FLAG_GELIBOOT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [41 x i8] c"GELIBOOT flag already configured for %s.\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"GELIBOOT flag not configured for %s.\00", align 1
@G_ELI_FLAG_GELIDISPLAYPASS = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [48 x i8] c"GELIDISPLAYPASS flag already configured for %s.\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"GELIDISPLAYPASS flag not configured for %s.\00", align 1
@G_ELI_FLAG_AUTORESIZE = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [43 x i8] c"AUTORESIZE flag already configured for %s.\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"AUTORESIZE flag not configured for %s.\00", align 1
@G_ELI_FLAG_ONETIME = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [41 x i8] c"Cannot read metadata from %s (error=%d).\00", align 1
@M_ELI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [40 x i8] c"Cannot store metadata on %s (error=%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_eli_ctl_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_eli_ctl_configure(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_eli_softc*, align 8
  %6 = alloca %struct.g_eli_metadata, align 4
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.g_eli_metadata*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %27 = call i32 (...) @g_topology_assert()
  store i32 0, i32* %25, align 4
  store i32 0, i32* %23, align 4
  %28 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %29 = call i32* @gctl_get_paraml(%struct.gctl_req* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %34 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %627

35:                                               ; preds = %2
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %41 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %627

42:                                               ; preds = %35
  %43 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %44 = call i32* @gctl_get_paraml(%struct.gctl_req* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  store i32* %44, i32** %13, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32* %23, i32** %13, align 8
  br label %48

48:                                               ; preds = %47, %42
  %49 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %50 = call i32* @gctl_get_paraml(%struct.gctl_req* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i32* %50, i32** %14, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32* %23, i32** %14, align 8
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %64 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %627

65:                                               ; preds = %58, %54
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65
  store i32 1, i32* %25, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %76 = call i32* @gctl_get_paraml(%struct.gctl_req* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  store i32* %76, i32** %15, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32* %23, i32** %15, align 8
  br label %80

80:                                               ; preds = %79, %74
  %81 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %82 = call i32* @gctl_get_paraml(%struct.gctl_req* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 4)
  store i32* %82, i32** %16, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32* %23, i32** %16, align 8
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %96 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %627

97:                                               ; preds = %90, %86
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32*, i32** %16, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %97
  store i32 1, i32* %25, align 4
  br label %106

106:                                              ; preds = %105, %101
  %107 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %108 = call i32* @gctl_get_paraml(%struct.gctl_req* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 4)
  store i32* %108, i32** %17, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32* %23, i32** %17, align 8
  br label %112

112:                                              ; preds = %111, %106
  %113 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %114 = call i32* @gctl_get_paraml(%struct.gctl_req* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 4)
  store i32* %114, i32** %18, align 8
  %115 = load i32*, i32** %18, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32* %23, i32** %18, align 8
  br label %118

118:                                              ; preds = %117, %112
  %119 = load i32*, i32** %17, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load i32*, i32** %18, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %128 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %127, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  br label %627

129:                                              ; preds = %122, %118
  %130 = load i32*, i32** %17, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32*, i32** %18, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %129
  store i32 1, i32* %25, align 4
  br label %138

138:                                              ; preds = %137, %133
  %139 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %140 = call i32* @gctl_get_paraml(%struct.gctl_req* %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 4)
  store i32* %140, i32** %19, align 8
  %141 = load i32*, i32** %19, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32* %23, i32** %19, align 8
  br label %144

144:                                              ; preds = %143, %138
  %145 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %146 = call i32* @gctl_get_paraml(%struct.gctl_req* %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 4)
  store i32* %146, i32** %20, align 8
  %147 = load i32*, i32** %20, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i32* %23, i32** %20, align 8
  br label %150

150:                                              ; preds = %149, %144
  %151 = load i32*, i32** %19, align 8
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load i32*, i32** %20, align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %160 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %159, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  br label %627

161:                                              ; preds = %154, %150
  %162 = load i32*, i32** %19, align 8
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i32*, i32** %20, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %165, %161
  store i32 1, i32* %25, align 4
  br label %170

170:                                              ; preds = %169, %165
  %171 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %172 = call i32* @gctl_get_paraml(%struct.gctl_req* %171, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 4)
  store i32* %172, i32** %21, align 8
  %173 = load i32*, i32** %21, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  store i32* %23, i32** %21, align 8
  br label %176

176:                                              ; preds = %175, %170
  %177 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %178 = call i32* @gctl_get_paraml(%struct.gctl_req* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 4)
  store i32* %178, i32** %22, align 8
  %179 = load i32*, i32** %22, align 8
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  store i32* %23, i32** %22, align 8
  br label %182

182:                                              ; preds = %181, %176
  %183 = load i32*, i32** %21, align 8
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load i32*, i32** %22, align 8
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %192 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %191, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0))
  br label %627

193:                                              ; preds = %186, %182
  %194 = load i32*, i32** %21, align 8
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i32*, i32** %22, align 8
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %197, %193
  store i32 1, i32* %25, align 4
  br label %202

202:                                              ; preds = %201, %197
  %203 = load i32, i32* %25, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %207 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %206, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  br label %627

208:                                              ; preds = %202
  store i32 0, i32* %26, align 4
  br label %209

209:                                              ; preds = %624, %208
  %210 = load i32, i32* %26, align 4
  %211 = load i32*, i32** %12, align 8
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %627

214:                                              ; preds = %209
  %215 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %216 = load i32, i32* %26, align 4
  %217 = call i32 @snprintf(i8* %215, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %216)
  %218 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %219 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %220 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %218, i8* %219)
  store i8* %220, i8** %10, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = icmp eq i8* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %214
  %224 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %225 = load i32, i32* %26, align 4
  %226 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 %225)
  br label %627

227:                                              ; preds = %214
  %228 = load %struct.g_class*, %struct.g_class** %4, align 8
  %229 = load i8*, i8** %10, align 8
  %230 = call %struct.g_eli_softc* @g_eli_find_device(%struct.g_class* %228, i8* %229)
  store %struct.g_eli_softc* %230, %struct.g_eli_softc** %5, align 8
  %231 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %232 = icmp eq %struct.g_eli_softc* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %227
  %234 = load i8*, i8** %10, align 8
  %235 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i64 0, i64 0), i8* %234)
  br label %624

236:                                              ; preds = %227
  %237 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %238 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @G_ELI_FLAG_RO, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %236
  %244 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %245 = load i8*, i8** %10, align 8
  %246 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %244, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i8* %245)
  br label %624

247:                                              ; preds = %236
  %248 = load i32*, i32** %13, align 8
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %253 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @G_ELI_FLAG_BOOT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %251
  %259 = load i8*, i8** %10, align 8
  %260 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i8* %259)
  br label %624

261:                                              ; preds = %251, %247
  %262 = load i32*, i32** %14, align 8
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %261
  %266 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %267 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @G_ELI_FLAG_BOOT, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %265
  %273 = load i8*, i8** %10, align 8
  %274 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i8* %273)
  br label %624

275:                                              ; preds = %265, %261
  br label %276

276:                                              ; preds = %275
  %277 = load i32*, i32** %16, align 8
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %276
  %281 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %282 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %280
  %288 = load i8*, i8** %10, align 8
  %289 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i8* %288)
  br label %624

290:                                              ; preds = %280, %276
  %291 = load i32*, i32** %15, align 8
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %304

294:                                              ; preds = %290
  %295 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %296 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %294
  %302 = load i8*, i8** %10, align 8
  %303 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i8* %302)
  br label %624

304:                                              ; preds = %294, %290
  br label %305

305:                                              ; preds = %304
  %306 = load i32*, i32** %17, align 8
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %305
  %310 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %311 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @G_ELI_FLAG_GELIBOOT, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %309
  %317 = load i8*, i8** %10, align 8
  %318 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0), i8* %317)
  br label %624

319:                                              ; preds = %309, %305
  %320 = load i32*, i32** %18, align 8
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %333

323:                                              ; preds = %319
  %324 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %325 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @G_ELI_FLAG_GELIBOOT, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %333, label %330

330:                                              ; preds = %323
  %331 = load i8*, i8** %10, align 8
  %332 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i8* %331)
  br label %624

333:                                              ; preds = %323, %319
  br label %334

334:                                              ; preds = %333
  %335 = load i32*, i32** %19, align 8
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %348

338:                                              ; preds = %334
  %339 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %340 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %338
  %346 = load i8*, i8** %10, align 8
  %347 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i64 0, i64 0), i8* %346)
  br label %624

348:                                              ; preds = %338, %334
  %349 = load i32*, i32** %20, align 8
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %362

352:                                              ; preds = %348
  %353 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %354 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %352
  %360 = load i8*, i8** %10, align 8
  %361 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0), i8* %360)
  br label %624

362:                                              ; preds = %352, %348
  br label %363

363:                                              ; preds = %362
  %364 = load i32*, i32** %21, align 8
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %377

367:                                              ; preds = %363
  %368 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %369 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %367
  %375 = load i8*, i8** %10, align 8
  %376 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0), i8* %375)
  br label %624

377:                                              ; preds = %367, %363
  %378 = load i32*, i32** %22, align 8
  %379 = load i32, i32* %378, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %391

381:                                              ; preds = %377
  %382 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %383 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %391, label %388

388:                                              ; preds = %381
  %389 = load i8*, i8** %10, align 8
  %390 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0), i8* %389)
  br label %624

391:                                              ; preds = %381, %377
  br label %392

392:                                              ; preds = %391
  %393 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %394 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @G_ELI_FLAG_ONETIME, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %419, label %399

399:                                              ; preds = %392
  %400 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %401 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %400, i32 0, i32 1
  %402 = load %struct.TYPE_2__*, %struct.TYPE_2__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 0
  %404 = call %struct.g_consumer* @LIST_FIRST(i32* %403)
  store %struct.g_consumer* %404, %struct.g_consumer** %8, align 8
  %405 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %406 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %405, i32 0, i32 0
  %407 = load %struct.g_provider*, %struct.g_provider** %406, align 8
  store %struct.g_provider* %407, %struct.g_provider** %7, align 8
  %408 = load %struct.g_class*, %struct.g_class** %4, align 8
  %409 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %410 = call i32 @g_eli_read_metadata(%struct.g_class* %408, %struct.g_provider* %409, %struct.g_eli_metadata* %6)
  store i32 %410, i32* %24, align 4
  %411 = load i32, i32* %24, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %399
  %414 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %415 = load i8*, i8** %10, align 8
  %416 = load i32, i32* %24, align 4
  %417 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %414, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0), i8* %415, i32 %416)
  br label %624

418:                                              ; preds = %399
  br label %419

419:                                              ; preds = %418, %392
  %420 = load i32*, i32** %13, align 8
  %421 = load i32, i32* %420, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %433

423:                                              ; preds = %419
  %424 = load i32, i32* @G_ELI_FLAG_BOOT, align 4
  %425 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = or i32 %426, %424
  store i32 %427, i32* %425, align 4
  %428 = load i32, i32* @G_ELI_FLAG_BOOT, align 4
  %429 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %430 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = or i32 %431, %428
  store i32 %432, i32* %430, align 8
  br label %450

433:                                              ; preds = %419
  %434 = load i32*, i32** %14, align 8
  %435 = load i32, i32* %434, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %449

437:                                              ; preds = %433
  %438 = load i32, i32* @G_ELI_FLAG_BOOT, align 4
  %439 = xor i32 %438, -1
  %440 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = and i32 %441, %439
  store i32 %442, i32* %440, align 4
  %443 = load i32, i32* @G_ELI_FLAG_BOOT, align 4
  %444 = xor i32 %443, -1
  %445 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %446 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = and i32 %447, %444
  store i32 %448, i32* %446, align 8
  br label %449

449:                                              ; preds = %437, %433
  br label %450

450:                                              ; preds = %449, %423
  %451 = load i32*, i32** %16, align 8
  %452 = load i32, i32* %451, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %464

454:                                              ; preds = %450
  %455 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %456 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = or i32 %457, %455
  store i32 %458, i32* %456, align 4
  %459 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %460 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %461 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = or i32 %462, %459
  store i32 %463, i32* %461, align 8
  br label %481

464:                                              ; preds = %450
  %465 = load i32*, i32** %15, align 8
  %466 = load i32, i32* %465, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %480

468:                                              ; preds = %464
  %469 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %470 = xor i32 %469, -1
  %471 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = and i32 %472, %470
  store i32 %473, i32* %471, align 4
  %474 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %475 = xor i32 %474, -1
  %476 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %477 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = and i32 %478, %475
  store i32 %479, i32* %477, align 8
  br label %480

480:                                              ; preds = %468, %464
  br label %481

481:                                              ; preds = %480, %454
  %482 = load i32*, i32** %17, align 8
  %483 = load i32, i32* %482, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %495

485:                                              ; preds = %481
  %486 = load i32, i32* @G_ELI_FLAG_GELIBOOT, align 4
  %487 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = or i32 %488, %486
  store i32 %489, i32* %487, align 4
  %490 = load i32, i32* @G_ELI_FLAG_GELIBOOT, align 4
  %491 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %492 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = or i32 %493, %490
  store i32 %494, i32* %492, align 8
  br label %512

495:                                              ; preds = %481
  %496 = load i32*, i32** %18, align 8
  %497 = load i32, i32* %496, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %511

499:                                              ; preds = %495
  %500 = load i32, i32* @G_ELI_FLAG_GELIBOOT, align 4
  %501 = xor i32 %500, -1
  %502 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = and i32 %503, %501
  store i32 %504, i32* %502, align 4
  %505 = load i32, i32* @G_ELI_FLAG_GELIBOOT, align 4
  %506 = xor i32 %505, -1
  %507 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %508 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = and i32 %509, %506
  store i32 %510, i32* %508, align 8
  br label %511

511:                                              ; preds = %499, %495
  br label %512

512:                                              ; preds = %511, %485
  %513 = load i32*, i32** %19, align 8
  %514 = load i32, i32* %513, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %526

516:                                              ; preds = %512
  %517 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %518 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %519 = load i32, i32* %518, align 4
  %520 = or i32 %519, %517
  store i32 %520, i32* %518, align 4
  %521 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %522 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %523 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = or i32 %524, %521
  store i32 %525, i32* %523, align 8
  br label %543

526:                                              ; preds = %512
  %527 = load i32*, i32** %20, align 8
  %528 = load i32, i32* %527, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %542

530:                                              ; preds = %526
  %531 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %532 = xor i32 %531, -1
  %533 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = and i32 %534, %532
  store i32 %535, i32* %533, align 4
  %536 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %537 = xor i32 %536, -1
  %538 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %539 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = and i32 %540, %537
  store i32 %541, i32* %539, align 8
  br label %542

542:                                              ; preds = %530, %526
  br label %543

543:                                              ; preds = %542, %516
  %544 = load i32*, i32** %21, align 8
  %545 = load i32, i32* %544, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %557

547:                                              ; preds = %543
  %548 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %549 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %550 = load i32, i32* %549, align 4
  %551 = or i32 %550, %548
  store i32 %551, i32* %549, align 4
  %552 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %553 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %554 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = or i32 %555, %552
  store i32 %556, i32* %554, align 8
  br label %574

557:                                              ; preds = %543
  %558 = load i32*, i32** %22, align 8
  %559 = load i32, i32* %558, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %573

561:                                              ; preds = %557
  %562 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %563 = xor i32 %562, -1
  %564 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = and i32 %565, %563
  store i32 %566, i32* %564, align 4
  %567 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %568 = xor i32 %567, -1
  %569 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %570 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = and i32 %571, %568
  store i32 %572, i32* %570, align 8
  br label %573

573:                                              ; preds = %561, %557
  br label %574

574:                                              ; preds = %573, %547
  %575 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %576 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  %578 = load i32, i32* @G_ELI_FLAG_ONETIME, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %582

581:                                              ; preds = %574
  br label %624

582:                                              ; preds = %574
  %583 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %584 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 8
  %586 = load i32, i32* @M_ELI, align 4
  %587 = load i32, i32* @M_WAITOK, align 4
  %588 = load i32, i32* @M_ZERO, align 4
  %589 = or i32 %587, %588
  %590 = call %struct.g_eli_metadata* @malloc(i32 %585, i32 %586, i32 %589)
  store %struct.g_eli_metadata* %590, %struct.g_eli_metadata** %11, align 8
  %591 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %592 = call i32 @eli_metadata_encode(%struct.g_eli_metadata* %6, %struct.g_eli_metadata* %591)
  %593 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %594 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %595 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %594, i32 0, i32 1
  %596 = load i64, i64* %595, align 8
  %597 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %598 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = sext i32 %599 to i64
  %601 = sub nsw i64 %596, %600
  %602 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %603 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %604 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = call i32 @g_write_data(%struct.g_consumer* %593, i64 %601, %struct.g_eli_metadata* %602, i32 %605)
  store i32 %606, i32* %24, align 4
  %607 = load i32, i32* %24, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %614

609:                                              ; preds = %582
  %610 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %611 = load i8*, i8** %10, align 8
  %612 = load i32, i32* %24, align 4
  %613 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %610, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* %611, i32 %612)
  br label %614

614:                                              ; preds = %609, %582
  %615 = call i32 @explicit_bzero(%struct.g_eli_metadata* %6, i32 4)
  %616 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %617 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %618 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 8
  %620 = call i32 @explicit_bzero(%struct.g_eli_metadata* %616, i32 %619)
  %621 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %622 = load i32, i32* @M_ELI, align 4
  %623 = call i32 @free(%struct.g_eli_metadata* %621, i32 %622)
  br label %624

624:                                              ; preds = %614, %581, %413, %388, %374, %359, %345, %330, %316, %301, %287, %272, %258, %243, %233
  %625 = load i32, i32* %26, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %26, align 4
  br label %209

627:                                              ; preds = %32, %39, %62, %94, %126, %158, %190, %205, %223, %209
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local %struct.g_eli_softc* @g_eli_find_device(%struct.g_class*, i8*) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i8*) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_eli_read_metadata(%struct.g_class*, %struct.g_provider*, %struct.g_eli_metadata*) #1

declare dso_local %struct.g_eli_metadata* @malloc(i32, i32, i32) #1

declare dso_local i32 @eli_metadata_encode(%struct.g_eli_metadata*, %struct.g_eli_metadata*) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, %struct.g_eli_metadata*, i32) #1

declare dso_local i32 @explicit_bzero(%struct.g_eli_metadata*, i32) #1

declare dso_local i32 @free(%struct.g_eli_metadata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
