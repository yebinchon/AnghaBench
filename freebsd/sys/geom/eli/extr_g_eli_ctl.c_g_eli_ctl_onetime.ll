; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_onetime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_onetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_eli_metadata = type { i64, i64, i64, i32, i32, %struct.g_eli_metadata*, %struct.g_eli_metadata*, i64, i32, i32, i32 }
%struct.g_provider = type { i32 }

@G_ELI_DATAIVKEYLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@G_ELI_MAGIC = common dso_local global i32 0, align 4
@G_ELI_VERSION = common dso_local global i32 0, align 4
@G_ELI_FLAG_ONETIME = common dso_local global i32 0, align 4
@G_ELI_FLAG_AUTORESIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@G_ELI_FLAG_WO_DETACH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"noautoresize\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"notrim\00", align 1
@G_ELI_FLAG_NODELETE = common dso_local global i32 0, align 4
@CRYPTO_ALGORITHM_MIN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"aalgo\00", align 1
@CRYPTO_ALGORITHM_MAX = common dso_local global i64 0, align 8
@G_ELI_FLAG_AUTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Invalid authentication algorithm.\00", align 1
@.str.8 = private unnamed_addr constant [94 x i8] c"warning: The -e option, not the -a option is now used to specify encryption algorithm to use.\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ealgo\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Invalid encryption algorithm.\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"keylen\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Invalid '%s' argument.\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"sectorsize\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Invalid sector size.\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [53 x i8] c"warning: Using sectorsize bigger than the page size!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_eli_ctl_onetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_eli_ctl_onetime(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_eli_metadata, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %17 = load i32, i32* @G_ELI_DATAIVKEYLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca %struct.g_eli_metadata, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = call i32 (...) @g_topology_assert()
  %22 = call i32 @bzero(%struct.g_eli_metadata* %5, i32 72)
  %23 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %24 = call i8* @gctl_get_paraml(%struct.gctl_req* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %30 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %304

31:                                               ; preds = %2
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %37 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %304

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @G_ELI_MAGIC, align 4
  %42 = call i32 @strlcpy(i32 %40, i32 %41, i32 4)
  %43 = load i32, i32* @G_ELI_VERSION, align 4
  %44 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 9
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @G_ELI_FLAG_ONETIME, align 4
  %46 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %50 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 8
  %53 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %54 = call i8* @gctl_get_paraml(%struct.gctl_req* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %38
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* @G_ELI_FLAG_WO_DETACH, align 4
  %64 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %58, %38
  %68 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %69 = call i8* @gctl_get_paraml(%struct.gctl_req* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %70 = bitcast i8* %69 to i32*
  store i32* %70, i32** %14, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* @G_ELI_FLAG_AUTORESIZE, align 4
  %79 = xor i32 %78, -1
  %80 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %79
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %73, %67
  %84 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %85 = call i8* @gctl_get_paraml(%struct.gctl_req* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** %15, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %95 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %93, %89, %83
  %99 = load i64, i64* @CRYPTO_ALGORITHM_MIN, align 8
  %100 = sub nsw i64 %99, 1
  %101 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %103 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i8* %103, i8** %7, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %108 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %304

109:                                              ; preds = %98
  %110 = load i8*, i8** %7, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %154

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = call i64 @g_eli_str2aalgo(i8* %115)
  %117 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 1
  store i64 %116, i64* %117, align 8
  %118 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CRYPTO_ALGORITHM_MIN, align 8
  %121 = icmp sge i64 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @CRYPTO_ALGORITHM_MAX, align 8
  %126 = icmp sle i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @G_ELI_FLAG_AUTH, align 4
  %129 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 8
  br label %153

132:                                              ; preds = %122, %114
  %133 = load i8*, i8** %7, align 8
  %134 = call i8* @g_eli_str2ealgo(i8* %133)
  %135 = ptrtoint i8* %134 to i64
  %136 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  store i64 %135, i64* %136, align 8
  %137 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @CRYPTO_ALGORITHM_MIN, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %146, label %141

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @CRYPTO_ALGORITHM_MAX, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %141, %132
  %147 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %148 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %304

149:                                              ; preds = %141
  %150 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %151 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %150, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.8, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %152, %127
  br label %154

154:                                              ; preds = %153, %109
  %155 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @CRYPTO_ALGORITHM_MIN, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CRYPTO_ALGORITHM_MAX, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %164, label %190

164:                                              ; preds = %159, %154
  %165 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %166 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i8* %166, i8** %7, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %171 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %170, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %304

172:                                              ; preds = %164
  %173 = load i8*, i8** %7, align 8
  %174 = call i8* @g_eli_str2ealgo(i8* %173)
  %175 = ptrtoint i8* %174 to i64
  %176 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  store i64 %175, i64* %176, align 8
  %177 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @CRYPTO_ALGORITHM_MIN, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %186, label %181

181:                                              ; preds = %172
  %182 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @CRYPTO_ALGORITHM_MAX, align 8
  %185 = icmp sgt i64 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %181, %172
  %187 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %188 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %187, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %304

189:                                              ; preds = %181
  br label %190

190:                                              ; preds = %189, %159
  %191 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %192 = call i8* @gctl_get_paraml(%struct.gctl_req* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %193 = bitcast i8* %192 to i32*
  store i32* %193, i32** %8, align 8
  %194 = load i32*, i32** %8, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %198 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %197, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %304

199:                                              ; preds = %190
  %200 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i32*, i32** %8, align 8
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @g_eli_keylen(i64 %201, i32 %203)
  %205 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 2
  store i64 %204, i64* %205, align 8
  %206 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %199
  %210 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %211 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %304

212:                                              ; preds = %199
  %213 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 7
  store i64 0, i64* %213, align 8
  %214 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 6
  %215 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %214, align 8
  %216 = call i32 @bzero(%struct.g_eli_metadata* %215, i32 8)
  %217 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 3
  store i32 1, i32* %217, align 8
  %218 = mul nuw i64 72, %18
  %219 = trunc i64 %218 to i32
  %220 = call i32 @arc4rand(%struct.g_eli_metadata* %20, i32 %219, i32 0)
  %221 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 5
  %222 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %221, align 8
  %223 = call i32 @bzero(%struct.g_eli_metadata* %222, i32 8)
  %224 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %225 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store i8* %225, i8** %7, align 8
  %226 = load i8*, i8** %7, align 8
  %227 = icmp eq i8* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %212
  %229 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %230 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %229, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 0)
  store i32 1, i32* %16, align 4
  br label %304

231:                                              ; preds = %212
  %232 = load i8*, i8** %7, align 8
  %233 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %234 = call i64 @strncmp(i8* %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %233)
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %238 = load i8*, i8** %7, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  store i8* %240, i8** %7, align 8
  br label %241

241:                                              ; preds = %236, %231
  %242 = load i8*, i8** %7, align 8
  %243 = call %struct.g_provider* @g_provider_by_name(i8* %242)
  store %struct.g_provider* %243, %struct.g_provider** %6, align 8
  %244 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %245 = icmp eq %struct.g_provider* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %248 = load i8*, i8** %7, align 8
  %249 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %247, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* %248)
  store i32 1, i32* %16, align 4
  br label %304

250:                                              ; preds = %241
  %251 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %252 = call i8* @gctl_get_paraml(%struct.gctl_req* %251, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 4)
  %253 = bitcast i8* %252 to i32*
  store i32* %253, i32** %9, align 8
  %254 = load i32*, i32** %9, align 8
  %255 = icmp eq i32* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %258 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %257, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %304

259:                                              ; preds = %250
  %260 = load i32*, i32** %9, align 8
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %265 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 4
  store i32 %266, i32* %267, align 4
  br label %295

268:                                              ; preds = %259
  %269 = load i32*, i32** %9, align 8
  %270 = load i32, i32* %269, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %280, label %272

272:                                              ; preds = %268
  %273 = load i32*, i32** %9, align 8
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %276 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = srem i32 %274, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %272, %268
  %281 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %282 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %281, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %304

283:                                              ; preds = %272
  %284 = load i32*, i32** %9, align 8
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @PAGE_SIZE, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %283
  %289 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %290 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %289, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0))
  br label %291

291:                                              ; preds = %288, %283
  %292 = load i32*, i32** %9, align 8
  %293 = load i32, i32* %292, align 4
  %294 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 4
  store i32 %293, i32* %294, align 4
  br label %295

295:                                              ; preds = %291, %263
  %296 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %297 = load %struct.g_class*, %struct.g_class** %4, align 8
  %298 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %299 = call i32 @g_eli_create(%struct.gctl_req* %296, %struct.g_class* %297, %struct.g_provider* %298, %struct.g_eli_metadata* %5, %struct.g_eli_metadata* %20, i32 -1)
  %300 = mul nuw i64 72, %18
  %301 = trunc i64 %300 to i32
  %302 = call i32 @explicit_bzero(%struct.g_eli_metadata* %20, i32 %301)
  %303 = call i32 @explicit_bzero(%struct.g_eli_metadata* %5, i32 72)
  store i32 0, i32* %16, align 4
  br label %304

304:                                              ; preds = %295, %280, %256, %246, %228, %209, %196, %186, %169, %146, %106, %35, %28
  %305 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %305)
  %306 = load i32, i32* %16, align 4
  switch i32 %306, label %308 [
    i32 0, label %307
    i32 1, label %307
  ]

307:                                              ; preds = %304, %304
  ret void

308:                                              ; preds = %304
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_topology_assert(...) #2

declare dso_local i32 @bzero(%struct.g_eli_metadata*, i32) #2

declare dso_local i8* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #2

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #2

declare dso_local i64 @g_eli_str2aalgo(i8*) #2

declare dso_local i8* @g_eli_str2ealgo(i8*) #2

declare dso_local i64 @g_eli_keylen(i64, i32) #2

declare dso_local i32 @arc4rand(%struct.g_eli_metadata*, i32, i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #2

declare dso_local i32 @g_eli_create(%struct.gctl_req*, %struct.g_class*, %struct.g_provider*, %struct.g_eli_metadata*, %struct.g_eli_metadata*, i32) #2

declare dso_local i32 @explicit_bzero(%struct.g_eli_metadata*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
