; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_subr.c_i_setopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_subr.c_i_setopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32*, i32*, i32* }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [28 x i8] c"maxRecvDataSegmentLength=%d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"opt.maXmitDataSegmentLength=%d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"opt.maxBurstLength=%d\00", align 1
@M_ISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"opt.targetAddress='%s'\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"opt.targetName='%s'\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"opt.initiatorName='%s'\00", align 1
@ISCSI_MAX_LUNS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"opt.maxluns=%d\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"opt.headerDigest='%s'\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"CRC32C\00", align 1
@i_crc32c = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"opt.headerDigest set\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"opt.dataDigest='%s'\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"opt.dataDigest set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_setopt(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %9, %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i64 %29, i64* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %26, %21
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i64 %46, i64* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %43, %38
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 8
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @M_ISC, align 4
  %72 = call i32 @free(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 8
  %76 = load i32*, i32** %75, align 8
  %77 = call i8* @i_strdupin(i32* %76, i32 128)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 6
  store i32* %78, i32** %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %85)
  br label %87

87:                                               ; preds = %73, %55
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 7
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %119

92:                                               ; preds = %87
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @M_ISC, align 4
  %104 = call i32 @free(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %92
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = call i8* @i_strdupin(i32* %108, i32 128)
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 5
  store i32* %110, i32** %113, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %117)
  br label %119

119:                                              ; preds = %105, %87
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %151

124:                                              ; preds = %119
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @M_ISC, align 4
  %136 = call i32 @free(i32* %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %124
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = call i8* @i_strdupin(i32* %140, i32 128)
  %142 = bitcast i8* %141 to i32*
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 4
  store i32* %142, i32** %145, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %149)
  br label %151

151:                                              ; preds = %137, %119
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %151
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @ISCSI_MAX_LUNS, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load i64, i64* @ISCSI_MAX_LUNS, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  store i64 %163, i64* %166, align 8
  br label %167

167:                                              ; preds = %162, %156
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  store i64 %170, i64* %173, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %177)
  br label %179

179:                                              ; preds = %167, %151
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 5
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %201

184:                                              ; preds = %179
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32* %187)
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 5
  %191 = load i32*, i32** %190, align 8
  %192 = call i64 @strcmp(i32* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %184
  %195 = load i64, i64* @i_crc32c, align 8
  %196 = inttoptr i64 %195 to i32*
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  store i32* %196, i32** %198, align 8
  %199 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %200

200:                                              ; preds = %194, %184
  br label %201

201:                                              ; preds = %200, %179
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %223

206:                                              ; preds = %201
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 5
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32* %209)
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 4
  %213 = load i32*, i32** %212, align 8
  %214 = call i64 @strcmp(i32* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %206
  %217 = load i64, i64* @i_crc32c, align 8
  %218 = inttoptr i64 %217 to i32*
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  store i32* %218, i32** %220, align 8
  %221 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %222

222:                                              ; preds = %216, %206
  br label %223

223:                                              ; preds = %222, %201
  ret i32 0
}

declare dso_local i32 @sdebug(i32, i8*, ...) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i8* @i_strdupin(i32*, i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
