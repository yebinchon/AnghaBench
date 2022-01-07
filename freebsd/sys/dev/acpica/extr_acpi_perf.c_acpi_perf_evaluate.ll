; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_perf.c_acpi_perf_evaluate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_perf.c_acpi_perf_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_perf_softc = type { i32, i64, i32*, i32, i32, i32*, i32, %struct.TYPE_13__*, i32, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }

@acpi_perf_evaluate.once = internal global i32 1, align 4
@ENXIO = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"_PSS\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid top level _PSS package\0A\00", align 1
@M_ACPIPERF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid _PSS package\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_PCT\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"invalid perf register package\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"failed in PERF_CTL attach\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed in PERF_STATUS attach\0A\00", align 1
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_px_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_perf_evaluate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_perf_evaluate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_perf_softc*, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.acpi_perf_softc* @device_get_softc(i32 %15)
  store %struct.acpi_perf_softc* %16, %struct.acpi_perf_softc** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load i8*, i8** @ACPI_ALLOCATE_BUFFER, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @AcpiEvaluateObject(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_12__* %5)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %357

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %6, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = call i32 @ACPI_PKG_VALID(%struct.TYPE_11__* %33, i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %276

39:                                               ; preds = %29
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %47 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @M_ACPIPERF, align 4
  %53 = load i32, i32* @M_WAITOK, align 4
  %54 = load i32, i32* @M_ZERO, align 4
  %55 = or i32 %53, %54
  %56 = call %struct.TYPE_13__* @malloc(i32 %51, i32 %52, i32 %55)
  %57 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %58 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %57, i32 0, i32 7
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %58, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %171, %39
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %62 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %174

65:                                               ; preds = %59
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %7, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = call i32 @ACPI_PKG_VALID(%struct.TYPE_11__* %73, i32 6)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* @acpi_perf_evaluate.once, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  store i32 0, i32* @acpi_perf_evaluate.once, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  br label %171

83:                                               ; preds = %65
  %84 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %85 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %84, i32 0, i32 7
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  store i32* %90, i32** %13, align 8
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %99, %83
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 6
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @acpi_PkgInt32(%struct.TYPE_11__* %95, i32 %96, i32* %97)
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %13, align 8
  br label %91

104:                                              ; preds = %91
  %105 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %106 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %105, i32 0, i32 7
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %144, label %114

114:                                              ; preds = %104
  %115 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %116 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %115, i32 0, i32 7
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 9999
  br i1 %123, label %144, label %124

124:                                              ; preds = %114
  %125 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %126 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %125, i32 0, i32 7
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 39321
  br i1 %133, label %144, label %134

134:                                              ; preds = %124
  %135 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %136 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %135, i32 0, i32 7
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp sge i32 %142, 65535
  br i1 %143, label %144, label %145

144:                                              ; preds = %134, %124, %114, %104
  br label %171

145:                                              ; preds = %134
  %146 = load i32, i32* %9, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %145
  %149 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %150 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %149, i32 0, i32 7
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %159 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %158, i32 0, i32 7
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %157, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %148
  br label %171

168:                                              ; preds = %148, %145
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %168, %167, %144, %82
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %59

174:                                              ; preds = %59
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %177 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* %9, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %276

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @AcpiOsFree(i32* %183)
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32* null, i32** %185, align 8
  %186 = load i8*, i8** @ACPI_ALLOCATE_BUFFER, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i8* %186, i8** %187, align 8
  %188 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %189 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @AcpiEvaluateObject(i32 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, %struct.TYPE_12__* %5)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i64 @ACPI_FAILURE(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %181
  br label %276

196:                                              ; preds = %181
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = bitcast i32* %198 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %199, %struct.TYPE_11__** %6, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %201 = call i32 @ACPI_PKG_VALID(%struct.TYPE_11__* %200, i32 2)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %196
  %204 = load i32, i32* %3, align 4
  %205 = call i32 @device_printf(i32 %204, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %276

206:                                              ; preds = %196
  %207 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %208 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %211 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %212 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %211, i32 0, i32 6
  %213 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %214 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %213, i32 0, i32 1
  %215 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %216 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %215, i32 0, i32 5
  %217 = call i32 @acpi_PkgGas(i32 %209, %struct.TYPE_11__* %210, i32 0, i32* %212, i64* %214, i32** %216, i32 0)
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %206
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @EOPNOTSUPP, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i8*, i8** @TRUE, align 8
  %226 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %227 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %226, i32 0, i32 9
  store i8* %225, i8** %227, align 8
  store i32 0, i32* %10, align 4
  br label %231

228:                                              ; preds = %220
  %229 = load i32, i32* %3, align 4
  %230 = call i32 @device_printf(i32 %229, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %231

231:                                              ; preds = %228, %224
  br label %276

232:                                              ; preds = %206
  %233 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %234 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* %234, align 8
  %237 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %238 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %241 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %242 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %241, i32 0, i32 3
  %243 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %244 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %243, i32 0, i32 1
  %245 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %246 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %245, i32 0, i32 2
  %247 = call i32 @acpi_PkgGas(i32 %239, %struct.TYPE_11__* %240, i32 1, i32* %242, i64* %244, i32** %246, i32 0)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %232
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* @EOPNOTSUPP, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = load i8*, i8** @TRUE, align 8
  %256 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %257 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %256, i32 0, i32 9
  store i8* %255, i8** %257, align 8
  store i32 0, i32* %10, align 4
  br label %261

258:                                              ; preds = %250
  %259 = load i32, i32* %3, align 4
  %260 = call i32 @device_printf(i32 %259, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %261

261:                                              ; preds = %258, %254
  br label %276

262:                                              ; preds = %232
  %263 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %264 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, 1
  store i64 %266, i64* %264, align 8
  %267 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %268 = call i32 @acpi_px_available(%struct.acpi_perf_softc* %267)
  %269 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %270 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %269, i32 0, i32 8
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %273 = load i32, i32* @acpi_px_notify, align 4
  %274 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %275 = call i32 @AcpiInstallNotifyHandler(i32 %271, i32 %272, i32 %273, %struct.acpi_perf_softc* %274)
  store i32 0, i32* %10, align 4
  br label %276

276:                                              ; preds = %262, %261, %231, %203, %195, %180, %36
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %347

279:                                              ; preds = %276
  %280 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %281 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %280, i32 0, i32 7
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %281, align 8
  %283 = icmp ne %struct.TYPE_13__* %282, null
  br i1 %283, label %284, label %292

284:                                              ; preds = %279
  %285 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %286 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %285, i32 0, i32 7
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %286, align 8
  %288 = load i32, i32* @M_ACPIPERF, align 4
  %289 = call i32 @free(%struct.TYPE_13__* %287, i32 %288)
  %290 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %291 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %290, i32 0, i32 7
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %291, align 8
  br label %292

292:                                              ; preds = %284, %279
  %293 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %294 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %293, i32 0, i32 5
  %295 = load i32*, i32** %294, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %317

297:                                              ; preds = %292
  %298 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %299 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %302 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %305 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %304, i32 0, i32 5
  %306 = load i32*, i32** %305, align 8
  %307 = call i32 @bus_release_resource(i32 %300, i32 %303, i32 0, i32* %306)
  %308 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %309 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %312 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @bus_delete_resource(i32 %310, i32 %313, i32 0)
  %315 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %316 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %315, i32 0, i32 5
  store i32* null, i32** %316, align 8
  br label %317

317:                                              ; preds = %297, %292
  %318 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %319 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %318, i32 0, i32 2
  %320 = load i32*, i32** %319, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %342

322:                                              ; preds = %317
  %323 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %324 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %327 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %330 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %329, i32 0, i32 2
  %331 = load i32*, i32** %330, align 8
  %332 = call i32 @bus_release_resource(i32 %325, i32 %328, i32 1, i32* %331)
  %333 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %334 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %337 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @bus_delete_resource(i32 %335, i32 %338, i32 1)
  %340 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %341 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %340, i32 0, i32 2
  store i32* null, i32** %341, align 8
  br label %342

342:                                              ; preds = %322, %317
  %343 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %344 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %343, i32 0, i32 1
  store i64 0, i64* %344, align 8
  %345 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %4, align 8
  %346 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %345, i32 0, i32 0
  store i32 0, i32* %346, align 8
  br label %347

347:                                              ; preds = %342, %276
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = icmp ne i32* %349, null
  br i1 %350, label %351, label %355

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = call i32 @AcpiOsFree(i32* %353)
  br label %355

355:                                              ; preds = %351, %347
  %356 = load i32, i32* %10, align 4
  store i32 %356, i32* %2, align 4
  br label %357

357:                                              ; preds = %355, %27
  %358 = load i32, i32* %2, align 4
  ret i32 %358
}

declare dso_local %struct.acpi_perf_softc* @device_get_softc(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_PKG_VALID(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @malloc(i32, i32, i32) #1

declare dso_local i32 @acpi_PkgInt32(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

declare dso_local i32 @acpi_PkgGas(i32, %struct.TYPE_11__*, i32, i32*, i64*, i32**, i32) #1

declare dso_local i32 @acpi_px_available(%struct.acpi_perf_softc*) #1

declare dso_local i32 @AcpiInstallNotifyHandler(i32, i32, i32, %struct.acpi_perf_softc*) #1

declare dso_local i32 @free(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
