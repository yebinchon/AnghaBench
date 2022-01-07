; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_ctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_ctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_concat_metadata = type { i32, i32, i32, i64, i32, i64, i32, i32 }
%struct.g_provider = type { i32 }
%struct.g_concat_softc = type { i32 }
%struct.g_geom = type { %struct.g_concat_softc*, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Too few arguments.\00", align 1
@G_CONCAT_MAGIC = common dso_local global i8* null, align 8
@G_CONCAT_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"arg%u\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Disk %s is invalid.\00", align 1
@G_CONCAT_TYPE_MANUAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Can't configure %s.\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Can't attach disk(s) to %s:\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"No 'arg%d' argument.\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Provider %s disappear?!\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Disk %u (%s) not attached to %s.\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_concat_ctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_concat_ctl_create(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_concat_metadata, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca %struct.g_concat_softc*, align 8
  %10 = alloca %struct.g_geom*, align 8
  %11 = alloca %struct.sbuf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [16 x i8], align 16
  %14 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %15 = call i32 (...) @g_topology_assert()
  %16 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %17 = call i32* @gctl_get_paraml(%struct.gctl_req* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %22 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %205

23:                                               ; preds = %2
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %29 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %205

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** @G_CONCAT_MAGIC, align 8
  %34 = call i32 @strlcpy(i32 %32, i8* %33, i32 4)
  %35 = load i32, i32* @G_CONCAT_VERSION, align 4
  %36 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %7, i32 0, i32 7
  store i32 %35, i32* %36, align 4
  %37 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %38 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %43 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %205

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @strlcpy(i32 %46, i8* %47, i32 4)
  %49 = call i32 (...) @arc4random()
  %50 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %7, i32 0, i32 6
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %7, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %7, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %7, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bzero(i32 %57, i32 4)
  %59 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %7, i32 0, i32 3
  store i64 0, i64* %59, align 8
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %100, %44
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %60
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @snprintf(i8* %66, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %71 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %69, i8* %70)
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  br label %205

78:                                               ; preds = %65
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %81 = call i64 @strncmp(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i8*, i8** %12, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %12, align 8
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i8*, i8** %12, align 8
  %90 = call %struct.g_provider* @g_provider_by_name(i8* %89)
  store %struct.g_provider* %90, %struct.g_provider** %8, align 8
  %91 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %92 = icmp eq %struct.g_provider* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 (i32, i8*, ...) @G_CONCAT_DEBUG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  %96 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %97)
  br label %205

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %60

103:                                              ; preds = %60
  %104 = load %struct.g_class*, %struct.g_class** %4, align 8
  %105 = load i32, i32* @G_CONCAT_TYPE_MANUAL, align 4
  %106 = call %struct.g_geom* @g_concat_create(%struct.g_class* %104, %struct.g_concat_metadata* %7, i32 %105)
  store %struct.g_geom* %106, %struct.g_geom** %10, align 8
  %107 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %108 = icmp eq %struct.g_geom* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %111 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %7, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %112)
  br label %205

114:                                              ; preds = %103
  %115 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %116 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %115, i32 0, i32 0
  %117 = load %struct.g_concat_softc*, %struct.g_concat_softc** %116, align 8
  store %struct.g_concat_softc* %117, %struct.g_concat_softc** %9, align 8
  %118 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %118, %struct.sbuf** %11, align 8
  %119 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %120 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %121 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @sbuf_printf(%struct.sbuf* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %122)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %124

124:                                              ; preds = %183, %114
  %125 = load i32, i32* %6, align 4
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %186

129:                                              ; preds = %124
  %130 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @snprintf(i8* %130, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %134 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %135 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %133, i8* %134)
  store i8* %135, i8** %12, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %129
  %139 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %140)
  br label %205

142:                                              ; preds = %129
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %145 = call i64 @strncmp(i8* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %149 = load i8*, i8** %12, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %12, align 8
  br label %152

152:                                              ; preds = %147, %142
  %153 = load i8*, i8** %12, align 8
  %154 = call %struct.g_provider* @g_provider_by_name(i8* %153)
  store %struct.g_provider* %154, %struct.g_provider** %8, align 8
  %155 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %156 = icmp ne %struct.g_provider* %155, null
  %157 = zext i1 %156 to i32
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 @KASSERT(i32 %157, i8* %158)
  %160 = load %struct.g_concat_softc*, %struct.g_concat_softc** %9, align 8
  %161 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sub nsw i32 %162, 1
  %164 = call i64 @g_concat_add_disk(%struct.g_concat_softc* %160, %struct.g_provider* %161, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %152
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %169 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %172 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i32, i8*, ...) @G_CONCAT_DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %167, i32 %170, i32 %173)
  %175 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %176 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %177 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @sbuf_printf(%struct.sbuf* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %178)
  br label %183

180:                                              ; preds = %152
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %180, %166
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %124

186:                                              ; preds = %124
  %187 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %188 = call i32 @sbuf_finish(%struct.sbuf* %187)
  %189 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %7, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %186
  %194 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %195 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %194, i32 0, i32 0
  %196 = load %struct.g_concat_softc*, %struct.g_concat_softc** %195, align 8
  %197 = call i32 @g_concat_destroy(%struct.g_concat_softc* %196, i32 1)
  %198 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %199 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %200 = call i32 @sbuf_data(%struct.sbuf* %199)
  %201 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %193, %186
  %203 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %204 = call i32 @sbuf_delete(%struct.sbuf* %203)
  br label %205

205:                                              ; preds = %202, %138, %109, %93, %74, %41, %27, %20
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @G_CONCAT_DEBUG(i32, i8*, ...) #1

declare dso_local %struct.g_geom* @g_concat_create(%struct.g_class*, %struct.g_concat_metadata*, i32) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @g_concat_add_disk(%struct.g_concat_softc*, %struct.g_provider*, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @g_concat_destroy(%struct.g_concat_softc*, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
