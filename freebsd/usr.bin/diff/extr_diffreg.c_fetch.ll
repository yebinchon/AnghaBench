; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@diff_format = common dso_local global i64 0, align 8
@D_IFDEF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@inifdef = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"#else /* %s%s */\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ifdefname = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"#ifndef %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"#ifdef %s\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@D_GFORMAT = common dso_local global i64 0, align 8
@Tflag = common dso_local global i64 0, align 8
@D_NORMAL = common dso_local global i64 0, align 8
@D_CONTEXT = common dso_local global i64 0, align 8
@D_UNIFIED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@EOF = common dso_local global i32 0, align 4
@D_EDIT = common dso_local global i64 0, align 8
@D_REVERSE = common dso_local global i64 0, align 8
@D_NREVERSE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"No newline at end of file\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"\0A\\ No newline at end of file\0A\00", align 1
@D_EXPANDTABS = common dso_local global i32 0, align 4
@tabsize = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32, i32*, i32, i32, i32)* @fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch(i64* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store i64* %0, i64** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %24 = load i64, i64* @diff_format, align 8
  %25 = load i64, i64* @D_IFDEF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %7
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load i32*, i32** %12, align 8
  %32 = call i64 @ftell(i32* %31)
  store i64 %32, i64* %23, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 1
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %33, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %23, align 8
  %48 = sub nsw i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %21, align 4
  store i32 0, i32* %16, align 4
  br label %50

50:                                               ; preds = %58, %42
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %21, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @getc(i32* %55)
  %57 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %16, align 4
  br label %50

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %27, %7
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %244

67:                                               ; preds = %62
  %68 = load i64, i64* @diff_format, align 8
  %69 = load i64, i64* @D_IFDEF, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = load i32, i32* @inifdef, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %79 = load i32, i32* @ifdefname, align 4
  %80 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %78, i32 %79)
  br label %91

81:                                               ; preds = %71
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @ifdefname, align 4
  %86 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @ifdefname, align 4
  %89 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 1, %92
  store i32 %93, i32* @inifdef, align 4
  br label %94

94:                                               ; preds = %91, %67
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %240, %94
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %243

100:                                              ; preds = %96
  %101 = load i32*, i32** %12, align 8
  %102 = load i64*, i64** %9, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @SEEK_SET, align 4
  %109 = call i32 @fseek(i32* %101, i64 %107, i32 %108)
  %110 = load i64*, i64** %9, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %115, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %114, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %21, align 4
  %123 = load i64, i64* @diff_format, align 8
  %124 = load i64, i64* @D_IFDEF, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %100
  %127 = load i64, i64* @diff_format, align 8
  %128 = load i64, i64* @D_GFORMAT, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %160

130:                                              ; preds = %126
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %130
  %134 = load i32, i32* %13, align 4
  %135 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load i64, i64* @Tflag, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %133
  %139 = load i64, i64* @diff_format, align 8
  %140 = load i64, i64* @D_NORMAL, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %138
  %143 = load i64, i64* @diff_format, align 8
  %144 = load i64, i64* @D_CONTEXT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i64, i64* @diff_format, align 8
  %148 = load i64, i64* @D_UNIFIED, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146, %142, %138
  %151 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %159

152:                                              ; preds = %146, %133
  %153 = load i64, i64* @diff_format, align 8
  %154 = load i64, i64* @D_UNIFIED, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %152
  br label %159

159:                                              ; preds = %158, %150
  br label %160

160:                                              ; preds = %159, %130, %126, %100
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %161

161:                                              ; preds = %235, %160
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %21, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %239

165:                                              ; preds = %161
  %166 = load i32*, i32** %12, align 8
  %167 = call i32 @getc(i32* %166)
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* @EOF, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %187

170:                                              ; preds = %165
  %171 = load i64, i64* @diff_format, align 8
  %172 = load i64, i64* @D_EDIT, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %182, label %174

174:                                              ; preds = %170
  %175 = load i64, i64* @diff_format, align 8
  %176 = load i64, i64* @D_REVERSE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i64, i64* @diff_format, align 8
  %180 = load i64, i64* @D_NREVERSE, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %178, %174, %170
  %183 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %186

184:                                              ; preds = %178
  %185 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %182
  store i32 0, i32* %8, align 4
  br label %244

187:                                              ; preds = %165
  %188 = load i32, i32* %18, align 4
  %189 = icmp eq i32 %188, 9
  br i1 %189, label %190, label %210

190:                                              ; preds = %187
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* @D_EXPANDTABS, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  %196 = load i32, i32* %20, align 4
  %197 = load i32, i32* @tabsize, align 4
  %198 = sdiv i32 %196, %197
  %199 = add nsw i32 %198, 1
  %200 = load i32, i32* @tabsize, align 4
  %201 = mul nsw i32 %199, %200
  store i32 %201, i32* %22, align 4
  br label %202

202:                                              ; preds = %204, %195
  %203 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  %207 = load i32, i32* %22, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %202, label %209

209:                                              ; preds = %204
  br label %234

210:                                              ; preds = %190, %187
  %211 = load i64, i64* @diff_format, align 8
  %212 = load i64, i64* @D_EDIT, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %229

214:                                              ; preds = %210
  %215 = load i32, i32* %17, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %229

217:                                              ; preds = %214
  %218 = load i32, i32* %18, align 4
  %219 = icmp eq i32 %218, 10
  br i1 %219, label %220, label %229

220:                                              ; preds = %217
  %221 = load i32, i32* %19, align 4
  %222 = icmp eq i32 %221, 46
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* %10, align 4
  %227 = sub nsw i32 %225, %226
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %244

229:                                              ; preds = %220, %217, %214, %210
  %230 = load i32, i32* %18, align 4
  %231 = call i32 (i8*, ...) @diff_output(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* %20, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %20, align 4
  br label %234

234:                                              ; preds = %229, %209
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %17, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %17, align 4
  %238 = load i32, i32* %18, align 4
  store i32 %238, i32* %19, align 4
  br label %161

239:                                              ; preds = %161
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %16, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %16, align 4
  br label %96

243:                                              ; preds = %96
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %243, %223, %186, %66
  %245 = load i32, i32* %8, align 4
  ret i32 %245
}

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @diff_output(i8*, ...) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
