; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_delkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_delkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_eli_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.g_eli_metadata = type { i32, %struct.g_eli_metadata* }
%struct.g_provider = type { i32, i32, i64 }
%struct.g_consumer = type { %struct.g_provider* }

@.str = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@G_ELI_FLAG_RO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Cannot delete keys for read-only provider.\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Cannot read metadata from %s (error=%d).\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"keyno\00", align 1
@G_ELI_MAXMKEYS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Invalid '%s' argument.\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Master Key %u is not set.\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"This is the last Master Key. Use '-f' flag if you really want to remove it.\00", align 1
@G_ELI_MKEYLEN = common dso_local global i32 0, align 4
@M_ELI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@g_eli_overwrites = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [40 x i8] c"Cannot store metadata on %s (error=%d).\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"All keys removed from %s.\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Key %d removed from %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_eli_ctl_delkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_eli_ctl_delkey(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_eli_softc*, align 8
  %6 = alloca %struct.g_eli_metadata, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.g_eli_metadata*, align 8
  %11 = alloca %struct.g_eli_metadata*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %19 = call i32 (...) @g_topology_assert()
  store i32 0, i32* %15, align 4
  %20 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %21 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %26 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %241

27:                                               ; preds = %2
  %28 = load %struct.g_class*, %struct.g_class** %4, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call %struct.g_eli_softc* @g_eli_find_device(%struct.g_class* %28, i8* %29)
  store %struct.g_eli_softc* %30, %struct.g_eli_softc** %5, align 8
  %31 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %32 = icmp eq %struct.g_eli_softc* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %241

37:                                               ; preds = %27
  %38 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %39 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @G_ELI_FLAG_RO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %46 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %241

47:                                               ; preds = %37
  %48 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %49 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call %struct.g_consumer* @LIST_FIRST(i32* %51)
  store %struct.g_consumer* %52, %struct.g_consumer** %8, align 8
  %53 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %54 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %53, i32 0, i32 0
  %55 = load %struct.g_provider*, %struct.g_provider** %54, align 8
  store %struct.g_provider* %55, %struct.g_provider** %7, align 8
  %56 = load %struct.g_class*, %struct.g_class** %4, align 8
  %57 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %58 = call i32 @g_eli_read_metadata(%struct.g_class* %56, %struct.g_provider* %57, %struct.g_eli_metadata* %6)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %63, i32 %64)
  br label %241

66:                                               ; preds = %47
  %67 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %68 = call i32* @gctl_get_paraml(%struct.gctl_req* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 4)
  store i32* %68, i32** %16, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %73 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %241

74:                                               ; preds = %66
  %75 = load i32*, i32** %16, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 1
  %80 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %79, align 8
  store %struct.g_eli_metadata* %80, %struct.g_eli_metadata** %10, align 8
  store i64 8, i64* %13, align 8
  br label %160

81:                                               ; preds = %74
  %82 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %83 = call i32* @gctl_get_paraml(%struct.gctl_req* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 4)
  store i32* %83, i32** %17, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %88 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %241

89:                                               ; preds = %81
  %90 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %91 = call i32* @gctl_get_paraml(%struct.gctl_req* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 4)
  store i32* %91, i32** %12, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %96 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %241

97:                                               ; preds = %89
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %15, align 4
  br label %108

104:                                              ; preds = %97
  %105 = load %struct.g_eli_softc*, %struct.g_eli_softc** %5, align 8
  %106 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @G_ELI_MAXMKEYS, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111, %108
  %116 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %117 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %241

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = shl i32 1, %121
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %118
  %126 = load i32*, i32** %17, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %131 = load i32, i32* %15, align 4
  %132 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %131)
  br label %241

133:                                              ; preds = %125, %118
  %134 = load i32, i32* %15, align 4
  %135 = shl i32 1, %134
  %136 = xor i32 %135, -1
  %137 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, %136
  store i32 %139, i32* %137, align 8
  %140 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %133
  %144 = load i32*, i32** %17, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %149 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %148, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0))
  br label %241

150:                                              ; preds = %143, %133
  %151 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %6, i32 0, i32 1
  %152 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* @G_ELI_MKEYLEN, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %152, i64 %156
  store %struct.g_eli_metadata* %157, %struct.g_eli_metadata** %10, align 8
  %158 = load i32, i32* @G_ELI_MKEYLEN, align 4
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %13, align 8
  br label %160

160:                                              ; preds = %150, %78
  %161 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %162 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @M_ELI, align 4
  %165 = load i32, i32* @M_WAITOK, align 4
  %166 = load i32, i32* @M_ZERO, align 4
  %167 = or i32 %165, %166
  %168 = call %struct.g_eli_metadata* @malloc(i32 %163, i32 %164, i32 %167)
  store %struct.g_eli_metadata* %168, %struct.g_eli_metadata** %11, align 8
  store i64 0, i64* %18, align 8
  br label %169

169:                                              ; preds = %214, %160
  %170 = load i64, i64* %18, align 8
  %171 = load i64, i64* @g_eli_overwrites, align 8
  %172 = icmp sle i64 %170, %171
  br i1 %172, label %173, label %217

173:                                              ; preds = %169
  %174 = load i64, i64* %18, align 8
  %175 = load i64, i64* @g_eli_overwrites, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %10, align 8
  %179 = load i64, i64* %13, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i32 @explicit_bzero(%struct.g_eli_metadata* %178, i32 %180)
  br label %186

182:                                              ; preds = %173
  %183 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %10, align 8
  %184 = load i64, i64* %13, align 8
  %185 = call i32 @arc4rand(%struct.g_eli_metadata* %183, i64 %184, i32 0)
  br label %186

186:                                              ; preds = %182, %177
  %187 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %188 = call i32 @eli_metadata_encode(%struct.g_eli_metadata* %6, %struct.g_eli_metadata* %187)
  %189 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %190 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %191 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %194 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = sub nsw i64 %192, %196
  %198 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %199 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %200 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @g_write_data(%struct.g_consumer* %189, i64 %197, %struct.g_eli_metadata* %198, i32 %201)
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* %14, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %186
  %206 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %207 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %14, align 4
  %210 = call i32 (i32, i8*, i32, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %205, %186
  %212 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %213 = call i32 @g_io_flush(%struct.g_consumer* %212)
  br label %214

214:                                              ; preds = %211
  %215 = load i64, i64* %18, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %18, align 8
  br label %169

217:                                              ; preds = %169
  %218 = call i32 @explicit_bzero(%struct.g_eli_metadata* %6, i32 16)
  %219 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %220 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %221 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @explicit_bzero(%struct.g_eli_metadata* %219, i32 %222)
  %224 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %11, align 8
  %225 = load i32, i32* @M_ELI, align 4
  %226 = call i32 @free(%struct.g_eli_metadata* %224, i32 %225)
  %227 = load i32*, i32** %16, align 8
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %217
  %231 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %232 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i32, i8*, i32, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %233)
  br label %241

235:                                              ; preds = %217
  %236 = load i32, i32* %15, align 4
  %237 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %238 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i32, i8*, i32, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %236, i32 %239)
  br label %241

241:                                              ; preds = %24, %33, %44, %61, %71, %86, %94, %115, %129, %147, %235, %230
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local %struct.g_eli_softc* @g_eli_find_device(%struct.g_class*, i8*) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_eli_read_metadata(%struct.g_class*, %struct.g_provider*, %struct.g_eli_metadata*) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local %struct.g_eli_metadata* @malloc(i32, i32, i32) #1

declare dso_local i32 @explicit_bzero(%struct.g_eli_metadata*, i32) #1

declare dso_local i32 @arc4rand(%struct.g_eli_metadata*, i64, i32) #1

declare dso_local i32 @eli_metadata_encode(%struct.g_eli_metadata*, %struct.g_eli_metadata*) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, %struct.g_eli_metadata*, i32) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_io_flush(%struct.g_consumer*) #1

declare dso_local i32 @free(%struct.g_eli_metadata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
