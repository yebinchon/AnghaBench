; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_inline_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_cout.c_inline_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32, i32* }
%struct.TYPE_14__ = type { i32 }

@PUT = common dso_local global i32 0, align 4
@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"\0A\09if (xdrs->x_op == XDR_ENCODE) {\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\09\09return (TRUE);\0A\09} else if (xdrs->x_op == XDR_DECODE) {\0A\00", align 1
@REL_ALIAS = common dso_local global i64 0, align 8
@REL_VECTOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s%s * %d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@inline_size = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"buf = XDR_INLINE(xdrs, %d * BYTES_PER_XDR_UNIT);\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"buf = XDR_INLINE(xdrs, (%s) * BYTES_PER_XDR_UNIT);\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"buf = XDR_INLINE(xdrs, (%d + (%s)) * BYTES_PER_XDR_UNIT);\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"if (buf == NULL) {\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"\0A\09\09} else {\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"\09\09buf = XDR_INLINE(xdrs, %d * BYTES_PER_XDR_UNIT);\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"\09\09buf = XDR_INLINE(xdrs, (%s) * BYTES_PER_XDR_UNIT);\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"\09\09buf = XDR_INLINE(xdrs, (%d + (%s)) * BYTES_PER_XDR_UNIT);\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"\0A\09\09if (buf == NULL) {\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"\09\09} else {\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\09\09}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @inline_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inline_struct(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PUT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @fout, align 4
  %20 = call i32 (i32, i8*, ...) @f_print(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @fout, align 4
  %23 = call i32 (i32, i8*, ...) @f_print(i32 %22, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %11, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %5, align 8
  br label %30

30:                                               ; preds = %236, %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %240

33:                                               ; preds = %30
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %129

39:                                               ; preds = %33
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_14__* @find_type(i32 %43)
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %10, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %129

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @REL_ALIAS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @REL_VECTOR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %129

60:                                               ; preds = %53, %46
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %8, align 8
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @REL_ALIAS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %128

80:                                               ; preds = %65
  %81 = load i8*, i8** %11, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %85

84:                                               ; preds = %80
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %85

85:                                               ; preds = %84, %83
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %92 = load i8*, i8** %12, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i8*, i8*, i32, ...) @s_print(i8* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %92, i32 %96, i32 %99)
  br label %109

101:                                              ; preds = %85
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %103 = load i8*, i8** %12, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, i8*, i8*, i32, ...) @s_print(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %103, i32 %107)
  br label %109

109:                                              ; preds = %101, %90
  %110 = load i8*, i8** %11, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %114 = call i8* @xstrdup(i8* %113)
  store i8* %114, i8** %11, align 8
  br label %127

115:                                              ; preds = %109
  %116 = load i8*, i8** %11, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = call i64 @strlen(i8* %117)
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %120 = call i64 @strlen(i8* %119)
  %121 = add nsw i64 %118, %120
  %122 = add nsw i64 %121, 1
  %123 = call i8* @xrealloc(i8* %116, i64 %122)
  store i8* %123, i8** %11, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %126 = call i8* @strcat(i8* %124, i8* %125)
  store i8* %126, i8** %11, align 8
  br label %127

127:                                              ; preds = %115, %112
  br label %128

128:                                              ; preds = %127, %74
  br label %235

129:                                              ; preds = %53, %39, %33
  %130 = load i32, i32* %6, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %227

132:                                              ; preds = %129
  %133 = load i8*, i8** %11, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %154

135:                                              ; preds = %132
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @inline_size, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %144, %139
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %143 = icmp ne %struct.TYPE_13__* %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = call i32 @print_stat(i32 %146, %struct.TYPE_15__* %148)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  store %struct.TYPE_13__* %152, %struct.TYPE_13__** %8, align 8
  br label %140

153:                                              ; preds = %140
  br label %226

154:                                              ; preds = %135, %132
  %155 = load i32, i32* @fout, align 4
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  %158 = call i32 @tabify(i32 %155, i32 %157)
  %159 = load i8*, i8** %11, align 8
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load i32, i32* @fout, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (i32, i8*, ...) @f_print(i32 %162, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  br label %178

165:                                              ; preds = %154
  %166 = load i32, i32* %7, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i32, i32* @fout, align 4
  %170 = load i8*, i8** %11, align 8
  %171 = call i32 (i32, i8*, ...) @f_print(i32 %169, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i8* %170)
  br label %177

172:                                              ; preds = %165
  %173 = load i32, i32* @fout, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i8*, i8** %11, align 8
  %176 = call i32 (i32, i8*, ...) @f_print(i32 %173, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %174, i8* %175)
  br label %177

177:                                              ; preds = %172, %168
  br label %178

178:                                              ; preds = %177, %161
  %179 = load i32, i32* @fout, align 4
  %180 = call i32 (i32, i8*, ...) @f_print(i32 %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %181 = load i32, i32* @fout, align 4
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  %184 = call i32 @tabify(i32 %181, i32 %183)
  %185 = load i32, i32* @fout, align 4
  %186 = call i32 (i32, i8*, ...) @f_print(i32 %185, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %187, %struct.TYPE_13__** %9, align 8
  br label %188

188:                                              ; preds = %192, %178
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %191 = icmp ne %struct.TYPE_13__* %189, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %188
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 2
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = call i32 @print_stat(i32 %194, %struct.TYPE_15__* %196)
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  store %struct.TYPE_13__* %200, %struct.TYPE_13__** %8, align 8
  br label %188

201:                                              ; preds = %188
  %202 = load i32, i32* @fout, align 4
  %203 = call i32 (i32, i8*, ...) @f_print(i32 %202, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %204, %struct.TYPE_13__** %8, align 8
  br label %205

205:                                              ; preds = %209, %201
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %208 = icmp ne %struct.TYPE_13__* %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %205
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, 2
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load i32, i32* %4, align 4
  %215 = call i32 @emit_inline(i32 %211, %struct.TYPE_15__* %213, i32 %214)
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  store %struct.TYPE_13__* %218, %struct.TYPE_13__** %8, align 8
  br label %205

219:                                              ; preds = %205
  %220 = load i32, i32* @fout, align 4
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, 1
  %223 = call i32 @tabify(i32 %220, i32 %222)
  %224 = load i32, i32* @fout, align 4
  %225 = call i32 (i32, i8*, ...) @f_print(i32 %224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %226

226:                                              ; preds = %219, %153
  br label %227

227:                                              ; preds = %226, %129
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %228 = load i8*, i8** %11, align 8
  %229 = call i32 @free(i8* %228)
  store i8* null, i8** %11, align 8
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 %230, 1
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = call i32 @print_stat(i32 %231, %struct.TYPE_15__* %233)
  br label %235

235:                                              ; preds = %227, %128
  br label %236

236:                                              ; preds = %235
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %238, align 8
  store %struct.TYPE_13__* %239, %struct.TYPE_13__** %5, align 8
  br label %30

240:                                              ; preds = %30
  %241 = load i32, i32* %6, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %323

243:                                              ; preds = %240
  %244 = load i8*, i8** %11, align 8
  %245 = icmp eq i8* %244, null
  br i1 %245, label %246, label %265

246:                                              ; preds = %243
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* @inline_size, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %265

250:                                              ; preds = %246
  br label %251

251:                                              ; preds = %255, %250
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %254 = icmp ne %struct.TYPE_13__* %252, %253
  br i1 %254, label %255, label %264

255:                                              ; preds = %251
  %256 = load i32, i32* %14, align 4
  %257 = add nsw i32 %256, 1
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  %260 = call i32 @print_stat(i32 %257, %struct.TYPE_15__* %259)
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %262, align 8
  store %struct.TYPE_13__* %263, %struct.TYPE_13__** %8, align 8
  br label %251

264:                                              ; preds = %251
  br label %322

265:                                              ; preds = %246, %243
  %266 = load i8*, i8** %11, align 8
  %267 = icmp eq i8* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load i32, i32* @fout, align 4
  %270 = load i32, i32* %7, align 4
  %271 = call i32 (i32, i8*, ...) @f_print(i32 %269, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %270)
  br label %285

272:                                              ; preds = %265
  %273 = load i32, i32* %7, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load i32, i32* @fout, align 4
  %277 = load i8*, i8** %11, align 8
  %278 = call i32 (i32, i8*, ...) @f_print(i32 %276, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i8* %277)
  br label %284

279:                                              ; preds = %272
  %280 = load i32, i32* @fout, align 4
  %281 = load i32, i32* %7, align 4
  %282 = load i8*, i8** %11, align 8
  %283 = call i32 (i32, i8*, ...) @f_print(i32 %280, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0), i32 %281, i8* %282)
  br label %284

284:                                              ; preds = %279, %275
  br label %285

285:                                              ; preds = %284, %268
  %286 = load i32, i32* @fout, align 4
  %287 = call i32 (i32, i8*, ...) @f_print(i32 %286, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %288, %struct.TYPE_13__** %9, align 8
  br label %289

289:                                              ; preds = %292, %285
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %291 = icmp ne %struct.TYPE_13__* %290, null
  br i1 %291, label %292, label %301

292:                                              ; preds = %289
  %293 = load i32, i32* %14, align 4
  %294 = add nsw i32 %293, 2
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = call i32 @print_stat(i32 %294, %struct.TYPE_15__* %296)
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %299, align 8
  store %struct.TYPE_13__* %300, %struct.TYPE_13__** %8, align 8
  br label %289

301:                                              ; preds = %289
  %302 = load i32, i32* @fout, align 4
  %303 = call i32 (i32, i8*, ...) @f_print(i32 %302, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %304, %struct.TYPE_13__** %8, align 8
  br label %305

305:                                              ; preds = %309, %301
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %308 = icmp ne %struct.TYPE_13__* %306, %307
  br i1 %308, label %309, label %319

309:                                              ; preds = %305
  %310 = load i32, i32* %14, align 4
  %311 = add nsw i32 %310, 2
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 1
  %314 = load i32, i32* %4, align 4
  %315 = call i32 @emit_inline(i32 %311, %struct.TYPE_15__* %313, i32 %314)
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %317, align 8
  store %struct.TYPE_13__* %318, %struct.TYPE_13__** %8, align 8
  br label %305

319:                                              ; preds = %305
  %320 = load i32, i32* @fout, align 4
  %321 = call i32 (i32, i8*, ...) @f_print(i32 %320, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %322

322:                                              ; preds = %319, %264
  br label %323

323:                                              ; preds = %322, %240
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @find_type(i32) #1

declare dso_local i32 @s_print(i8*, i8*, i8*, i32, ...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strcat(i8*, i8*) #1

declare dso_local i32 @print_stat(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @tabify(i32, i32) #1

declare dso_local i32 @emit_inline(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
