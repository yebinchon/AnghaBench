; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_setkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_eli_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.g_eli_metadata = type { i32, i32, i32, i32, %struct.g_eli_metadata* }
%struct.g_provider = type { i32, i8*, i64 }
%struct.g_consumer = type { %struct.g_provider* }

@.str = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@G_ELI_USERKEYLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@G_ELI_FLAG_RO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Cannot change keys for read-only provider.\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Cannot read metadata from %s (error=%d).\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"keyno\00", align 1
@G_ELI_MAXMKEYS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Invalid '%s' argument.\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"To be able to use '-i' option, only one key can be defined.\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"Only already defined key can be changed when '-i' option is used.\00", align 1
@G_ELI_MKEYLEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"Cannot encrypt Master Key (error=%d).\00", align 1
@M_ELI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"Cannot store metadata on %s (error=%d).\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Key %u changed on %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_eli_ctl_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_eli_ctl_setkey(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_eli_softc*, align 8
  %6 = alloca %struct.g_eli_metadata, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.g_eli_metadata*, align 8
  %11 = alloca %struct.g_eli_metadata*, align 8
  %12 = alloca %struct.g_eli_metadata*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %17 = call i32 (...) @g_topology_assert()
  %18 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %19 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %24 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %241

25:                                               ; preds = %2
  %26 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %27 = call %struct.g_eli_metadata* @gctl_get_param(%struct.gctl_req* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %14)
  store %struct.g_eli_metadata* %27, %struct.g_eli_metadata** %10, align 8
  %28 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %10, align 8
  %29 = icmp eq %struct.g_eli_metadata* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %25
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %241

37:                                               ; preds = %30
  %38 = load %struct.g_class*, %struct.g_class** %4, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call %struct.g_eli_softc* @g_eli_find_device(%struct.g_class* %38, i8* %39)
  store %struct.g_eli_softc* %40, %struct.g_eli_softc** %5, align 8
  %41 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %42 = icmp eq %struct.g_eli_softc* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  br label %241

47:                                               ; preds = %37
  %48 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %49 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @G_ELI_FLAG_RO, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %56 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %241

57:                                               ; preds = %47
  %58 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %59 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call %struct.g_consumer* @LIST_FIRST(i32* %61)
  store %struct.g_consumer* %62, %struct.g_consumer** %8, align 8
  %63 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %64 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %63, i32 0, i32 0
  %65 = load %struct.g_provider*, %struct.g_provider** %64, align 8
  store %struct.g_provider* %65, %struct.g_provider** %7, align 8
  %66 = load %struct.g_class*, %struct.g_class** %4, align 8
  %67 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %68 = call i32 @g_eli_read_metadata(%struct.g_class* %66, %struct.g_provider* %67, %struct.g_eli_metadata* %6)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %57
  %72 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %73, i32 %74)
  br label %241

76:                                               ; preds = %57
  %77 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %78 = call i32* @gctl_get_paraml(%struct.gctl_req* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 4)
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %83 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %241

84:                                               ; preds = %76
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %15, align 4
  br label %95

91:                                               ; preds = %84
  %92 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %93 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %15, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @G_ELI_MAXMKEYS, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98, %95
  %103 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %104 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %241

105:                                              ; preds = %98
  %106 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %107 = call i32* @gctl_get_paraml(%struct.gctl_req* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 4)
  store i32* %107, i32** %13, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %112 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %241

113:                                              ; preds = %105
  %114 = load i32*, i32** %13, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, -1
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  br label %157

125:                                              ; preds = %117, %113
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, -1
  br i1 %128, label %129, label %156

129:                                              ; preds = %125
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %131, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @bitcount32(i32 %137)
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %142 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %141, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0))
  br label %241

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %15, align 4
  %147 = shl i32 1, %146
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %151 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %150, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0))
  br label %241

152:                                              ; preds = %143
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  store i32 %154, i32* %155, align 8
  br label %156

156:                                              ; preds = %152, %129, %125
  br label %157

157:                                              ; preds = %156, %121
  %158 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 4
  %159 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* @G_ELI_MKEYLEN, align 4
  %162 = mul nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %159, i64 %163
  store %struct.g_eli_metadata* %164, %struct.g_eli_metadata** %11, align 8
  %165 = load i32, i32* %15, align 4
  %166 = shl i32 1, %165
  %167 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %166
  store i32 %169, i32* %167, align 4
  %170 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %171 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %174 = call i32 @bcopy(i32 %172, %struct.g_eli_metadata* %173, i32 4)
  %175 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %10, align 8
  %178 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %181 = call i32 @g_eli_mkey_encrypt(i32 %176, %struct.g_eli_metadata* %177, i32 %179, %struct.g_eli_metadata* %180)
  store i32 %181, i32* %16, align 4
  %182 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %10, align 8
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @explicit_bzero(%struct.g_eli_metadata* %182, i32 %183)
  %185 = load i32, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %157
  %188 = call i32 @explicit_bzero(%struct.g_eli_metadata* %6, i32 24)
  %189 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %190 = load i32, i32* %16, align 4
  %191 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %189, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %190)
  br label %241

192:                                              ; preds = %157
  %193 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %194 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @M_ELI, align 4
  %197 = load i32, i32* @M_WAITOK, align 4
  %198 = load i32, i32* @M_ZERO, align 4
  %199 = or i32 %197, %198
  %200 = call %struct.g_eli_metadata* @malloc(i32 %195, i32 %196, i32 %199)
  store %struct.g_eli_metadata* %200, %struct.g_eli_metadata** %12, align 8
  %201 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %12, align 8
  %202 = call i32 @eli_metadata_encode(%struct.g_eli_metadata* %6, %struct.g_eli_metadata* %201)
  %203 = call i32 @explicit_bzero(%struct.g_eli_metadata* %6, i32 24)
  %204 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %205 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %206 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %209 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = sub nsw i64 %207, %211
  %213 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %12, align 8
  %214 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %215 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @g_write_data(%struct.g_consumer* %204, i64 %212, %struct.g_eli_metadata* %213, i32 %216)
  store i32 %217, i32* %16, align 4
  %218 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %12, align 8
  %219 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %220 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @explicit_bzero(%struct.g_eli_metadata* %218, i32 %221)
  %223 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %12, align 8
  %224 = load i32, i32* @M_ELI, align 4
  %225 = call i32 @free(%struct.g_eli_metadata* %223, i32 %224)
  %226 = load i32, i32* %16, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %192
  %229 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %230 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %231 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* %16, align 4
  %234 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %229, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8* %232, i32 %233)
  br label %241

235:                                              ; preds = %192
  %236 = load i32, i32* %15, align 4
  %237 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %238 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %236, i8* %239)
  br label %241

241:                                              ; preds = %235, %228, %187, %149, %140, %110, %102, %81, %71, %54, %43, %34, %22
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local %struct.g_eli_metadata* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local %struct.g_eli_softc* @g_eli_find_device(%struct.g_class*, i8*) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_eli_read_metadata(%struct.g_class*, %struct.g_provider*, %struct.g_eli_metadata*) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @bitcount32(i32) #1

declare dso_local i32 @bcopy(i32, %struct.g_eli_metadata*, i32) #1

declare dso_local i32 @g_eli_mkey_encrypt(i32, %struct.g_eli_metadata*, i32, %struct.g_eli_metadata*) #1

declare dso_local i32 @explicit_bzero(%struct.g_eli_metadata*, i32) #1

declare dso_local %struct.g_eli_metadata* @malloc(i32, i32, i32) #1

declare dso_local i32 @eli_metadata_encode(%struct.g_eli_metadata*, %struct.g_eli_metadata*) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, %struct.g_eli_metadata*, i32) #1

declare dso_local i32 @free(%struct.g_eli_metadata*, i32) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
