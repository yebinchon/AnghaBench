; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_parse_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_nvme_softc = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8* }

@NVME_QUEUES = common dso_local global i8* null, align 8
@NVME_MAX_QENTRIES = common dso_local global i8* null, align 8
@NVME_IOSLOTS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"NVME-%d-%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"maxq\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"qsz\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ioslots\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sectsz\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ser\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@NVME_STOR_RAM = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"Unable to allocate RAM\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"eui64\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Could not open backing file\00", align 1
@NVME_STOR_BLOCKIF = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"Invalid option %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"backing store not specified\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Invalid qsz option\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Invalid ioslots option\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_nvme_softc*, i8*)* @pci_nvme_parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_nvme_parse_opts(%struct.pci_nvme_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_nvme_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_nvme_softc* %0, %struct.pci_nvme_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** @NVME_QUEUES, align 8
  %14 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %15 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @NVME_MAX_QENTRIES, align 8
  %17 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %18 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @NVME_IOSLOTS, align 8
  %20 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %21 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %23 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %26 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %28 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %31 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  store i32 0, i32* %10, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @strdup(i8* %32)
  store i8* %33, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %34 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %35 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %39 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %38, i32 0, i32 6
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %44 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %43, i32 0, i32 6
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snprintf(i8* %37, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @strtok(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %220, %2
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %222

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 61)
  store i8* %56, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  store i8 0, i8* %59, align 1
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %9, align 8
  %67 = call i8* @atoi(i8* %66)
  %68 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %69 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %217

70:                                               ; preds = %61
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %9, align 8
  %76 = call i8* @atoi(i8* %75)
  %77 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %78 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  br label %216

79:                                               ; preds = %70
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %9, align 8
  %85 = call i8* @atoi(i8* %84)
  %86 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %87 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  br label %215

88:                                               ; preds = %79
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %9, align 8
  %94 = call i8* @atoi(i8* %93)
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %10, align 4
  br label %214

96:                                               ; preds = %88
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %102 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @cpywithpad(i8* %104, i32 8, i8* %105, i8 signext 32)
  br label %213

107:                                              ; preds = %96
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %149, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  %114 = call i32 @strtoull(i8* %113, i32* null, i32 10)
  store i32 %114, i32* %12, align 4
  %115 = load i64, i64* @NVME_STOR_RAM, align 8
  %116 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %117 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i64 %115, i64* %118, align 8
  %119 = load i32, i32* %12, align 4
  %120 = mul nsw i32 %119, 1024
  %121 = mul nsw i32 %120, 1024
  %122 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %123 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 8
  %125 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %126 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32* @calloc(i32 1, i32 %128)
  %130 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %131 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 4
  store i32* %129, i32** %132, align 8
  %133 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %134 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  store i32 4096, i32* %135, align 4
  %136 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %137 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  store i32 12, i32* %138, align 8
  %139 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %140 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %111
  %145 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @free(i8* %146)
  store i32 -1, i32* %3, align 4
  br label %324

148:                                              ; preds = %111
  br label %212

149:                                              ; preds = %107
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %149
  %154 = load i8*, i8** %9, align 8
  %155 = call i32 @strtoull(i8* %154, i32* null, i32 0)
  %156 = call i32 @htobe64(i32 %155)
  %157 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %158 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 5
  store i32 %156, i32* %159, align 8
  br label %211

160:                                              ; preds = %149
  %161 = load i32, i32* %11, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %204

163:                                              ; preds = %160
  %164 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %165 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %166 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %165, i32 0, i32 6
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %171 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %170, i32 0, i32 6
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @snprintf(i8* %164, i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %169, i32 %174)
  %176 = load i8*, i8** %8, align 8
  %177 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %178 = call i32* @blockif_open(i8* %176, i8* %177)
  %179 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %180 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 4
  store i32* %178, i32** %181, align 8
  %182 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %183 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %163
  %188 = call i32 @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 @free(i8* %189)
  store i32 -1, i32* %3, align 4
  br label %324

191:                                              ; preds = %163
  %192 = load i64, i64* @NVME_STOR_BLOCKIF, align 8
  %193 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %194 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i64 %192, i64* %195, align 8
  %196 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %197 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @blockif_size(i32* %199)
  %201 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %202 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  store i32 %200, i32* %203, align 8
  br label %210

204:                                              ; preds = %160
  %205 = load i32, i32* @stderr, align 4
  %206 = load i8*, i8** %8, align 8
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %205, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %206)
  %208 = load i8*, i8** %7, align 8
  %209 = call i32 @free(i8* %208)
  store i32 -1, i32* %3, align 4
  br label %324

210:                                              ; preds = %191
  br label %211

211:                                              ; preds = %210, %153
  br label %212

212:                                              ; preds = %211, %148
  br label %213

213:                                              ; preds = %212, %100
  br label %214

214:                                              ; preds = %213, %92
  br label %215

215:                                              ; preds = %214, %83
  br label %216

216:                                              ; preds = %215, %74
  br label %217

217:                                              ; preds = %216, %65
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %217
  %221 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %221, i8** %8, align 8
  br label %51

222:                                              ; preds = %51
  %223 = load i8*, i8** %7, align 8
  %224 = call i32 @free(i8* %223)
  %225 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %226 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %236, label %230

230:                                              ; preds = %222
  %231 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %232 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %230, %222
  %237 = load i32, i32* @stderr, align 4
  %238 = call i32 (i32, i8*, ...) @fprintf(i32 %237, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %324

239:                                              ; preds = %230
  %240 = load i32, i32* %10, align 4
  %241 = icmp eq i32 %240, 512
  br i1 %241, label %248, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %10, align 4
  %244 = icmp eq i32 %243, 4096
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %10, align 4
  %247 = icmp eq i32 %246, 8192
  br i1 %247, label %248, label %253

248:                                              ; preds = %245, %242, %239
  %249 = load i32, i32* %10, align 4
  %250 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %251 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 2
  store i32 %249, i32* %252, align 4
  br label %270

253:                                              ; preds = %245
  %254 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %255 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @NVME_STOR_RAM, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %269

260:                                              ; preds = %253
  %261 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %262 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @blockif_sectsz(i32* %264)
  %266 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %267 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 2
  store i32 %265, i32* %268, align 4
  br label %269

269:                                              ; preds = %260, %253
  br label %270

270:                                              ; preds = %269, %248
  %271 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %272 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 3
  store i32 9, i32* %273, align 8
  br label %274

274:                                              ; preds = %286, %270
  %275 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %276 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = shl i32 1, %278
  %280 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %281 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %280, i32 0, i32 5
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = icmp slt i32 %279, %283
  br i1 %284, label %285, label %292

285:                                              ; preds = %274
  br label %286

286:                                              ; preds = %285
  %287 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %288 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 8
  br label %274

292:                                              ; preds = %274
  %293 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %294 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = icmp ule i8* %295, null
  br i1 %296, label %303, label %297

297:                                              ; preds = %292
  %298 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %299 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = load i8*, i8** @NVME_QUEUES, align 8
  %302 = icmp ugt i8* %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %297, %292
  %304 = load i8*, i8** @NVME_QUEUES, align 8
  %305 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %306 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %305, i32 0, i32 0
  store i8* %304, i8** %306, align 8
  br label %307

307:                                              ; preds = %303, %297
  %308 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %309 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %308, i32 0, i32 4
  %310 = load i8*, i8** %309, align 8
  %311 = icmp ule i8* %310, null
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load i32, i32* @stderr, align 4
  %314 = call i32 (i32, i8*, ...) @fprintf(i32 %313, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %324

315:                                              ; preds = %307
  %316 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %4, align 8
  %317 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %316, i32 0, i32 3
  %318 = load i8*, i8** %317, align 8
  %319 = icmp ule i8* %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %315
  %321 = load i32, i32* @stderr, align 4
  %322 = call i32 (i32, i8*, ...) @fprintf(i32 %321, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %324

323:                                              ; preds = %315
  store i32 0, i32* %3, align 4
  br label %324

324:                                              ; preds = %323, %320, %312, %236, %204, %187, %144
  %325 = load i32, i32* %3, align 4
  ret i32 %325
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @cpywithpad(i8*, i32, i8*, i8 signext) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32* @blockif_open(i8*, i8*) #1

declare dso_local i32 @blockif_size(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @blockif_sectsz(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
