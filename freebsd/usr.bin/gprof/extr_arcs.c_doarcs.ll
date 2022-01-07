; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_arcs.c_doarcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_arcs.c_doarcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { double, double, double, double, i64, i64, i64, %struct.TYPE_15__*, i64, i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i64 }

@nl = common dso_local global %struct.TYPE_15__* null, align 8
@npe = common dso_local global %struct.TYPE_15__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@DFN_NAN = common dso_local global i64 0, align 8
@Cflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\0A\0A%s %s\0A%s %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"The following arcs were deleted\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"from the propagation calculation\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"to reduce the maximum cycle size to\00", align 1
@cyclethreshold = common dso_local global i32 0, align 4
@cyclenl = common dso_local global %struct.TYPE_15__* null, align 8
@ncycle = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"\0C\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\09None\0A\0A\00", align 1
@nname = common dso_local global i64 0, align 8
@topsortnlp = common dso_local global %struct.TYPE_15__** null, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"[doarcs] ran out of memory for topo sorting\00", align 1
@topcmp = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"ran out of memory for sorting\00", align 1
@totalcmp = common dso_local global i32 0, align 4
@BREAKCYCLE = common dso_local global i32 0, align 4
@DFNDEBUG = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__** @doarcs() #0 {
  %1 = alloca %struct.TYPE_15__*, align 8
  %2 = alloca %struct.TYPE_15__**, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** @nl, align 8
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %1, align 8
  br label %7

7:                                                ; preds = %62, %0
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** @npe, align 8
  %10 = icmp ult %struct.TYPE_15__* %8, %9
  br i1 %10, label %11, label %65

11:                                               ; preds = %7
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store double 0.000000e+00, double* %13, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %16 = call %struct.TYPE_16__* @arclookup(%struct.TYPE_15__* %14, %struct.TYPE_15__* %15)
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %3, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %11
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 12
  store i64 %31, i64* %33, align 8
  br label %37

34:                                               ; preds = %11
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 12
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %19
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  store double 0.000000e+00, double* %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  store double 0.000000e+00, double* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  store double 0.000000e+00, double* %48, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* @DFN_NAN, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 4
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 8
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 7
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %37
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 1
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %1, align 8
  br label %7

65:                                               ; preds = %7
  store i64 1, i64* %5, align 8
  br label %66

66:                                               ; preds = %124, %65
  %67 = call i32 (...) @dfn_init()
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** @nl, align 8
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %1, align 8
  br label %69

69:                                               ; preds = %83, %66
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** @npe, align 8
  %72 = icmp ult %struct.TYPE_15__* %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DFN_NAN, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %81 = call i32 @dfn(%struct.TYPE_15__* %80)
  br label %82

82:                                               ; preds = %79, %73
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 1
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %1, align 8
  br label %69

86:                                               ; preds = %69
  %87 = call i32 (...) @cyclelink()
  %88 = load i32, i32* @Cflag, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %127

91:                                               ; preds = %86
  %92 = load i64, i64* %5, align 8
  %93 = icmp eq i64 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @cyclethreshold, align 4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = call i64 (...) @cycleanalyze()
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %127

101:                                              ; preds = %97
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cyclenl, align 8
  %103 = call i32 @free(%struct.TYPE_15__* %102)
  store i64 0, i64* @ncycle, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** @nl, align 8
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %1, align 8
  br label %105

105:                                              ; preds = %120, %101
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** @npe, align 8
  %108 = icmp ult %struct.TYPE_15__* %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load i64, i64* @DFN_NAN, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 4
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 8
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 7
  store %struct.TYPE_15__* %115, %struct.TYPE_15__** %117, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 6
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %109
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 1
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %1, align 8
  br label %105

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %5, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %5, align 8
  br label %66

127:                                              ; preds = %100, %90
  %128 = load i64, i64* %5, align 8
  %129 = icmp sgt i64 %128, 1
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %134

132:                                              ; preds = %127
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %130
  %135 = load i64, i64* @nname, align 8
  %136 = call i64 @calloc(i64 %135, i32 8)
  %137 = inttoptr i64 %136 to %struct.TYPE_15__**
  store %struct.TYPE_15__** %137, %struct.TYPE_15__*** @topsortnlp, align 8
  %138 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @topsortnlp, align 8
  %139 = icmp eq %struct.TYPE_15__** %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = call i32 @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %134
  store i64 0, i64* %4, align 8
  br label %143

143:                                              ; preds = %154, %142
  %144 = load i64, i64* %4, align 8
  %145 = load i64, i64* @nname, align 8
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** @nl, align 8
  %149 = load i64, i64* %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 %149
  %151 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @topsortnlp, align 8
  %152 = load i64, i64* %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %151, i64 %152
  store %struct.TYPE_15__* %150, %struct.TYPE_15__** %153, align 8
  br label %154

154:                                              ; preds = %147
  %155 = load i64, i64* %4, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %4, align 8
  br label %143

157:                                              ; preds = %143
  %158 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @topsortnlp, align 8
  %159 = load i64, i64* @nname, align 8
  %160 = load i32, i32* @topcmp, align 4
  %161 = call i32 @qsort(%struct.TYPE_15__** %158, i64 %159, i32 8, i32 %160)
  %162 = call i32 (...) @doflags()
  %163 = call i32 (...) @dotime()
  %164 = load i64, i64* @nname, align 8
  %165 = load i64, i64* @ncycle, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i64 @calloc(i64 %166, i32 8)
  %168 = inttoptr i64 %167 to %struct.TYPE_15__**
  store %struct.TYPE_15__** %168, %struct.TYPE_15__*** %2, align 8
  %169 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %2, align 8
  %170 = icmp eq %struct.TYPE_15__** %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %157
  %172 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %157
  store i64 0, i64* %4, align 8
  br label %174

174:                                              ; preds = %185, %173
  %175 = load i64, i64* %4, align 8
  %176 = load i64, i64* @nname, align 8
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %174
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** @nl, align 8
  %180 = load i64, i64* %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i64 %180
  %182 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %2, align 8
  %183 = load i64, i64* %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %182, i64 %183
  store %struct.TYPE_15__* %181, %struct.TYPE_15__** %184, align 8
  br label %185

185:                                              ; preds = %178
  %186 = load i64, i64* %4, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %4, align 8
  br label %174

188:                                              ; preds = %174
  store i64 1, i64* %4, align 8
  br label %189

189:                                              ; preds = %203, %188
  %190 = load i64, i64* %4, align 8
  %191 = load i64, i64* @ncycle, align 8
  %192 = icmp sle i64 %190, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %189
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cyclenl, align 8
  %195 = load i64, i64* %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i64 %195
  %197 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %2, align 8
  %198 = load i64, i64* @nname, align 8
  %199 = load i64, i64* %4, align 8
  %200 = add nsw i64 %198, %199
  %201 = sub nsw i64 %200, 1
  %202 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %197, i64 %201
  store %struct.TYPE_15__* %196, %struct.TYPE_15__** %202, align 8
  br label %203

203:                                              ; preds = %193
  %204 = load i64, i64* %4, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %4, align 8
  br label %189

206:                                              ; preds = %189
  %207 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %2, align 8
  %208 = load i64, i64* @nname, align 8
  %209 = load i64, i64* @ncycle, align 8
  %210 = add nsw i64 %208, %209
  %211 = load i32, i32* @totalcmp, align 4
  %212 = call i32 @qsort(%struct.TYPE_15__** %207, i64 %210, i32 8, i32 %211)
  store i64 0, i64* %4, align 8
  br label %213

213:                                              ; preds = %227, %206
  %214 = load i64, i64* %4, align 8
  %215 = load i64, i64* @nname, align 8
  %216 = load i64, i64* @ncycle, align 8
  %217 = add nsw i64 %215, %216
  %218 = icmp slt i64 %214, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %213
  %220 = load i64, i64* %4, align 8
  %221 = add nsw i64 %220, 1
  %222 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %2, align 8
  %223 = load i64, i64* %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %222, i64 %223
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 5
  store i64 %221, i64* %226, align 8
  br label %227

227:                                              ; preds = %219
  %228 = load i64, i64* %4, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %4, align 8
  br label %213

230:                                              ; preds = %213
  %231 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %2, align 8
  ret %struct.TYPE_15__** %231
}

declare dso_local %struct.TYPE_16__* @arclookup(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @dfn_init(...) #1

declare dso_local i32 @dfn(%struct.TYPE_15__*) #1

declare dso_local i32 @cyclelink(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @cycleanalyze(...) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @qsort(%struct.TYPE_15__**, i64, i32, i32) #1

declare dso_local i32 @doflags(...) #1

declare dso_local i32 @dotime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
