; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athdebug/extr_athdebug.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athdebug/extr_athdebug.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ATH\00", align 1
@ATH_DEFAULT = common dso_local global i8* null, align 8
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"missing interface name for -i option\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ath\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"huh, this is for ath devices?\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"dev.%s.debug\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"sysctl-get(%s)\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"unknown flag %.*s\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"%s: 0x%llx => \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"sysctl-set(%s)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"%s: 0x%llx\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@flags = common dso_local global %struct.TYPE_3__* null, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** @ATH_DEFAULT, align 8
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** @progname, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strncmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %40
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %50, 2
  store i32 %51, i32* %4, align 4
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 2
  store i8** %53, i8*** %5, align 8
  br label %63

54:                                               ; preds = %29
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %60, %54
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %23
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @snprintf(i8* %65, i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %66)
  store i64 4, i64* %15, align 8
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %69 = call i64 @sysctlbyname(i8* %68, i32* %13, i64* %15, i32* null, i32 0)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %73 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %64
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %177, %74
  %77 = load i32, i32* %4, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %182

79:                                               ; preds = %76
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %7, align 8
  br label %83

83:                                               ; preds = %171, %79
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 45
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %7, align 8
  store i32 -1, i32* %11, align 4
  br label %101

91:                                               ; preds = %83
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 43
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %7, align 8
  store i32 1, i32* %11, align 4
  br label %100

99:                                               ; preds = %91
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %99, %96
  br label %101

101:                                              ; preds = %100, %88
  %102 = load i8*, i8** %7, align 8
  store i8* %102, i8** %8, align 8
  br label %103

103:                                              ; preds = %120, %101
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 43
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i8*, i8** %8, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 45
  br label %118

118:                                              ; preds = %113, %108, %103
  %119 = phi i1 [ false, %108 ], [ false, %103 ], [ %117, %113 ]
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  br label %103

123:                                              ; preds = %118
  %124 = load i8*, i8** %7, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = call i32 @getflag(i8* %124, i32 %130)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %123
  %135 = load i32, i32* %17, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %14, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %14, align 4
  br label %170

139:                                              ; preds = %123
  %140 = load i32, i32* %11, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %14, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %14, align 4
  br label %169

146:                                              ; preds = %139
  %147 = load i32, i32* %17, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load i8*, i8** %7, align 8
  %151 = load i8, i8* %150, align 1
  %152 = call i64 @isdigit(i8 signext %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @strtoul(i8* %155, i32* null, i32 0)
  store i32 %156, i32* %17, align 4
  br label %166

157:                                              ; preds = %149
  %158 = load i8*, i8** %8, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  %164 = load i8*, i8** %7, align 8
  %165 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %163, i8* %164)
  br label %166

166:                                              ; preds = %157, %154
  br label %167

167:                                              ; preds = %166, %146
  %168 = load i32, i32* %17, align 4
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %167, %142
  br label %170

170:                                              ; preds = %169, %134
  br label %171

171:                                              ; preds = %170
  %172 = load i8*, i8** %8, align 8
  store i8* %172, i8** %7, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %83, label %176

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %4, align 4
  %180 = load i8**, i8*** %5, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i32 1
  store i8** %181, i8*** %5, align 8
  br label %76

182:                                              ; preds = %76
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %182
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %187, i64 %189)
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %192 = call i64 @sysctlbyname(i8* %191, i32* null, i64* null, i32* %14, i32 4)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %186
  %195 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %196 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %194, %186
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 %199)
  %201 = load i32, i32* %14, align 4
  store i32 %201, i32* %13, align 4
  br label %207

202:                                              ; preds = %182
  %203 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %203, i64 %205)
  br label %207

207:                                              ; preds = %202, %197
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %208

208:                                              ; preds = %233, %207
  %209 = load i32, i32* %12, align 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flags, align 8
  %211 = call i32 @nitems(%struct.TYPE_3__* %210)
  %212 = icmp slt i32 %209, %211
  br i1 %212, label %213, label %236

213:                                              ; preds = %208
  %214 = load i32, i32* %13, align 4
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flags, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %214, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %213
  %224 = load i8*, i8** %9, align 8
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flags, align 8
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %224, i32 %230)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  br label %232

232:                                              ; preds = %223, %213
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %208

236:                                              ; preds = %208
  %237 = load i8*, i8** %9, align 8
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, 60
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0)
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %242)
  ret i32 0
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @getflag(i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
