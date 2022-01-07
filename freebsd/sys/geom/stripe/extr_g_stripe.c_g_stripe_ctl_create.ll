; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_ctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_ctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_stripe_metadata = type { i32, i32, i32, i64, i32, i64, i64, i32, i32 }
%struct.g_provider = type { i32 }
%struct.g_stripe_softc = type { i32 }
%struct.g_geom = type { %struct.g_stripe_softc*, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Too few arguments.\00", align 1
@G_STRIPE_MAGIC = common dso_local global i8* null, align 8
@G_STRIPE_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"stripesize\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"arg%u\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Disk %s is invalid.\00", align 1
@G_STRIPE_TYPE_MANUAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Can't configure %s.\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Can't attach disk(s) to %s:\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Provider %s disappear?!\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Disk %u (%s) not attached to %s.\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_stripe_ctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_stripe_ctl_create(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_stripe_metadata, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca %struct.g_stripe_softc*, align 8
  %10 = alloca %struct.g_geom*, align 8
  %11 = alloca %struct.sbuf*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %16 = call i32 (...) @g_topology_assert()
  %17 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %18 = call i8* @gctl_get_paraml(%struct.gctl_req* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %24 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %219

25:                                               ; preds = %2
  %26 = load i32*, i32** %15, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %31 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %219

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** @G_STRIPE_MAGIC, align 8
  %36 = call i32 @strlcpy(i32 %34, i8* %35, i32 4)
  %37 = load i32, i32* @G_STRIPE_VERSION, align 4
  %38 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %7, i32 0, i32 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %40 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %45 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %219

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %7, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @strlcpy(i32 %48, i8* %49, i32 4)
  %51 = call i32 (...) @arc4random()
  %52 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %7, i32 0, i32 7
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %7, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %7, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %59 = call i8* @gctl_get_paraml(%struct.gctl_req* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %60 = bitcast i8* %59 to i64*
  store i64* %60, i64** %12, align 8
  %61 = load i64*, i64** %12, align 8
  %62 = icmp eq i64* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %46
  %64 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %65 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %219

66:                                               ; preds = %46
  %67 = load i64*, i64** %12, align 8
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %7, i32 0, i32 5
  store i64 %68, i64* %69, align 8
  %70 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %7, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bzero(i32 %71, i32 4)
  %73 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %7, i32 0, i32 3
  store i64 0, i64* %73, align 8
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %114, %66
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %117

79:                                               ; preds = %74
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @snprintf(i8* %80, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  %83 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %84 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %85 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %83, i8* %84)
  store i8* %85, i8** %13, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %219

92:                                               ; preds = %79
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %95 = call i64 @strncmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %99 = load i8*, i8** %13, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %13, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i8*, i8** %13, align 8
  %104 = call %struct.g_provider* @g_provider_by_name(i8* %103)
  store %struct.g_provider* %104, %struct.g_provider** %8, align 8
  %105 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %106 = icmp eq %struct.g_provider* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 (i32, i8*, ...) @G_STRIPE_DEBUG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %108)
  %110 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  br label %219

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %74

117:                                              ; preds = %74
  %118 = load %struct.g_class*, %struct.g_class** %4, align 8
  %119 = load i32, i32* @G_STRIPE_TYPE_MANUAL, align 4
  %120 = call %struct.g_geom* @g_stripe_create(%struct.g_class* %118, %struct.g_stripe_metadata* %7, i32 %119)
  store %struct.g_geom* %120, %struct.g_geom** %10, align 8
  %121 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %122 = icmp eq %struct.g_geom* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %125 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %7, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  br label %219

128:                                              ; preds = %117
  %129 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %130 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %129, i32 0, i32 0
  %131 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %130, align 8
  store %struct.g_stripe_softc* %131, %struct.g_stripe_softc** %9, align 8
  %132 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %132, %struct.sbuf** %11, align 8
  %133 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %134 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %135 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @sbuf_printf(%struct.sbuf* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %136)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %138

138:                                              ; preds = %197, %128
  %139 = load i32, i32* %6, align 4
  %140 = load i32*, i32** %15, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %200

143:                                              ; preds = %138
  %144 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @snprintf(i8* %144, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %148 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %149 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %147, i8* %148)
  store i8* %149, i8** %13, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  br label %197

156:                                              ; preds = %143
  %157 = load i8*, i8** %13, align 8
  %158 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %159 = call i64 @strncmp(i8* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %163 = load i8*, i8** %13, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %13, align 8
  br label %166

166:                                              ; preds = %161, %156
  %167 = load i8*, i8** %13, align 8
  %168 = call %struct.g_provider* @g_provider_by_name(i8* %167)
  store %struct.g_provider* %168, %struct.g_provider** %8, align 8
  %169 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %170 = icmp ne %struct.g_provider* %169, null
  %171 = zext i1 %170 to i32
  %172 = load i8*, i8** %13, align 8
  %173 = call i32 @KASSERT(i32 %171, i8* %172)
  %174 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %9, align 8
  %175 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sub nsw i32 %176, 1
  %178 = call i64 @g_stripe_add_disk(%struct.g_stripe_softc* %174, %struct.g_provider* %175, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %166
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %183 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %186 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i32, i8*, ...) @G_STRIPE_DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %181, i32 %184, i32 %187)
  %189 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %190 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %191 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @sbuf_printf(%struct.sbuf* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %192)
  br label %197

194:                                              ; preds = %166
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %194, %180, %152
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %138

200:                                              ; preds = %138
  %201 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %202 = call i32 @sbuf_finish(%struct.sbuf* %201)
  %203 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %7, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %216

207:                                              ; preds = %200
  %208 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %209 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %208, i32 0, i32 0
  %210 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %209, align 8
  %211 = call i32 @g_stripe_destroy(%struct.g_stripe_softc* %210, i32 1)
  %212 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %213 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %214 = call i32 @sbuf_data(%struct.sbuf* %213)
  %215 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %207, %200
  %217 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %218 = call i32 @sbuf_delete(%struct.sbuf* %217)
  br label %219

219:                                              ; preds = %216, %123, %107, %88, %63, %43, %29, %22
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i8* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @G_STRIPE_DEBUG(i32, i8*, ...) #1

declare dso_local %struct.g_geom* @g_stripe_create(%struct.g_class*, %struct.g_stripe_metadata*, i32) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @g_stripe_add_disk(%struct.g_stripe_softc*, %struct.g_provider*, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @g_stripe_destroy(%struct.g_stripe_softc*, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
