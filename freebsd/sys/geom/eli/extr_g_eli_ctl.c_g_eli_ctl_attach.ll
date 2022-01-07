; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_eli_metadata = type { i32, i32 }
%struct.g_provider = type { i8* }

@G_ELI_DATAIVKEYLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"keyno\00", align 1
@G_ELI_MAXMKEYS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Invalid '%s' argument.\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dryrun\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Options -d and -r are mutually exclusive.\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Cannot read metadata from %s (error=%d).\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"No valid keys on %s.\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@G_ELI_USERKEYLEN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"Wrong key for %s.\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"Cannot decrypt Master Key for %s (error=%d).\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Using Master Key %u for %s.\00", align 1
@G_ELI_FLAG_WO_DETACH = common dso_local global i32 0, align 4
@G_ELI_FLAG_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_eli_ctl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_eli_ctl_attach(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_eli_metadata, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_eli_metadata*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %22 = load i32, i32* @G_ELI_DATAIVKEYLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca %struct.g_eli_metadata, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = call i32 (...) @g_topology_assert()
  %27 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %28 = call i8* @gctl_get_paraml(%struct.gctl_req* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %34 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %248

35:                                               ; preds = %2
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %41 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %248

42:                                               ; preds = %35
  %43 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %44 = call i8* @gctl_get_paraml(%struct.gctl_req* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %50 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %248

51:                                               ; preds = %42
  store i32 -1, i32* %17, align 4
  %52 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %53 = call i8* @gctl_get_param(%struct.gctl_req* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %19)
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %20, align 8
  %55 = load i32*, i32** %20, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %59 = call i8* @gctl_get_paraml(%struct.gctl_req* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %60 = bitcast i8* %59 to i32*
  store i32* %60, i32** %20, align 8
  %61 = load i32*, i32** %20, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32*, i32** %20, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %51
  %68 = load i32, i32* %17, align 4
  %69 = icmp slt i32 %68, -1
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @G_ELI_MAXMKEYS, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %67
  %75 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %76 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %248

77:                                               ; preds = %70
  %78 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %79 = call i8* @gctl_get_paraml(%struct.gctl_req* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %80 = bitcast i8* %79 to i32*
  store i32* %80, i32** %13, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %85 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %248

86:                                               ; preds = %77
  store i32 0, i32* %18, align 4
  %87 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %88 = call i8* @gctl_get_param(%struct.gctl_req* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %19)
  %89 = bitcast i8* %88 to i32*
  store i32* %89, i32** %14, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %94 = call i8* @gctl_get_paraml(%struct.gctl_req* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %95 = bitcast i8* %94 to i32*
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %18, align 4
  br label %101

101:                                              ; preds = %98, %92
  br label %102

102:                                              ; preds = %101, %86
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %112 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %111, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %248

113:                                              ; preds = %106, %102
  %114 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %115 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i8* %115, i8** %7, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %120 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 0)
  store i32 1, i32* %21, align 4
  br label %248

121:                                              ; preds = %113
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %124 = call i64 @strncmp(i8* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %128 = load i8*, i8** %7, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %7, align 8
  br label %131

131:                                              ; preds = %126, %121
  %132 = load i8*, i8** %7, align 8
  %133 = call %struct.g_provider* @g_provider_by_name(i8* %132)
  store %struct.g_provider* %133, %struct.g_provider** %6, align 8
  %134 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %135 = icmp eq %struct.g_provider* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %138)
  store i32 1, i32* %21, align 4
  br label %248

140:                                              ; preds = %131
  %141 = load %struct.g_class*, %struct.g_class** %4, align 8
  %142 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %143 = call i32 @g_eli_read_metadata(%struct.g_class* %141, %struct.g_provider* %142, %struct.g_eli_metadata* %5)
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i8* %148, i32 %149)
  store i32 1, i32* %21, align 4
  br label %248

151:                                              ; preds = %140
  %152 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = call i32 @explicit_bzero(%struct.g_eli_metadata* %5, i32 8)
  %157 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %158 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %159 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %160)
  store i32 1, i32* %21, align 4
  br label %248

162:                                              ; preds = %151
  %163 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %164 = call i8* @gctl_get_param(%struct.gctl_req* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32* %15)
  %165 = bitcast i8* %164 to %struct.g_eli_metadata*
  store %struct.g_eli_metadata* %165, %struct.g_eli_metadata** %8, align 8
  %166 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %8, align 8
  %167 = icmp eq %struct.g_eli_metadata* %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %162
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168, %162
  %173 = call i32 @explicit_bzero(%struct.g_eli_metadata* %5, i32 8)
  %174 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %175 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %174, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %248

176:                                              ; preds = %168
  %177 = load i32, i32* %17, align 4
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %8, align 8
  %181 = call i32 @g_eli_mkey_decrypt_any(%struct.g_eli_metadata* %5, %struct.g_eli_metadata* %180, %struct.g_eli_metadata* %25, i32* %17)
  store i32 %181, i32* %16, align 4
  br label %186

182:                                              ; preds = %176
  %183 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %8, align 8
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @g_eli_mkey_decrypt(%struct.g_eli_metadata* %5, %struct.g_eli_metadata* %183, %struct.g_eli_metadata* %25, i32 %184)
  store i32 %185, i32* %16, align 4
  br label %186

186:                                              ; preds = %182, %179
  %187 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %8, align 8
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @explicit_bzero(%struct.g_eli_metadata* %187, i32 %188)
  %190 = load i32, i32* %16, align 4
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %199

192:                                              ; preds = %186
  %193 = call i32 @explicit_bzero(%struct.g_eli_metadata* %5, i32 8)
  %194 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %195 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %196 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %197)
  store i32 1, i32* %21, align 4
  br label %248

199:                                              ; preds = %186
  %200 = load i32, i32* %16, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = call i32 @explicit_bzero(%struct.g_eli_metadata* %5, i32 8)
  %204 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %205 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %206 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i32, i32* %16, align 4
  %209 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %204, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8* %207, i32 %208)
  store i32 1, i32* %21, align 4
  br label %248

210:                                              ; preds = %199
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %17, align 4
  %213 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %214 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %212, i8* %215)
  %217 = load i32*, i32** %12, align 8
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %211
  %221 = load i32, i32* @G_ELI_FLAG_WO_DETACH, align 4
  %222 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %221
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %220, %211
  %226 = load i32*, i32** %13, align 8
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %225
  %230 = load i32, i32* @G_ELI_FLAG_RO, align 4
  %231 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %230
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %229, %225
  %235 = load i32, i32* %18, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %234
  %238 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %239 = load %struct.g_class*, %struct.g_class** %4, align 8
  %240 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %241 = load i32, i32* %17, align 4
  %242 = call i32 @g_eli_create(%struct.gctl_req* %238, %struct.g_class* %239, %struct.g_provider* %240, %struct.g_eli_metadata* %5, %struct.g_eli_metadata* %25, i32 %241)
  br label %243

243:                                              ; preds = %237, %234
  %244 = mul nuw i64 8, %23
  %245 = trunc i64 %244 to i32
  %246 = call i32 @explicit_bzero(%struct.g_eli_metadata* %25, i32 %245)
  %247 = call i32 @explicit_bzero(%struct.g_eli_metadata* %5, i32 8)
  store i32 0, i32* %21, align 4
  br label %248

248:                                              ; preds = %243, %202, %192, %172, %155, %146, %136, %118, %110, %83, %74, %48, %39, %32
  %249 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %249)
  %250 = load i32, i32* %21, align 4
  switch i32 %250, label %252 [
    i32 0, label %251
    i32 1, label %251
  ]

251:                                              ; preds = %248, %248
  ret void

252:                                              ; preds = %248
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_topology_assert(...) #2

declare dso_local i8* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #2

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #2

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #2

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #2

declare dso_local i32 @g_eli_read_metadata(%struct.g_class*, %struct.g_provider*, %struct.g_eli_metadata*) #2

declare dso_local i32 @explicit_bzero(%struct.g_eli_metadata*, i32) #2

declare dso_local i32 @g_eli_mkey_decrypt_any(%struct.g_eli_metadata*, %struct.g_eli_metadata*, %struct.g_eli_metadata*, i32*) #2

declare dso_local i32 @g_eli_mkey_decrypt(%struct.g_eli_metadata*, %struct.g_eli_metadata*, %struct.g_eli_metadata*, i32) #2

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i32, i8*) #2

declare dso_local i32 @g_eli_create(%struct.gctl_req*, %struct.g_class*, %struct.g_provider*, %struct.g_eli_metadata*, %struct.g_eli_metadata*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
