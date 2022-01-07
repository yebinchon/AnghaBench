; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/mwl/mwldebug/extr_mwldebug.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/mwl/mwldebug/extr_mwldebug.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mwl0\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"missing interface name for -i option\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"mv\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"huh, this is for mv devices?\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"dev.mwl.%s.debug\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"sysctl-get(%s)\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"unknown flag %.*s\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"%s: 0x%x => \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"sysctl-set(%s)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%s: 0x%x\00", align 1
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
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** @progname, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %58

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %44, 2
  store i32 %45, i32* %4, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  store i8** %47, i8*** %5, align 8
  br label %57

48:                                               ; preds = %23
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %48
  br label %57

57:                                               ; preds = %56, %43
  br label %58

58:                                               ; preds = %57, %2
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = call i32 @snprintf(i8* %59, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  store i64 4, i64* %15, align 8
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %64 = call i64 @sysctlbyname(i8* %63, i32* %13, i64* %15, i32* null, i32 0)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %68 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %174, %69
  %72 = load i32, i32* %4, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %179

74:                                               ; preds = %71
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %7, align 8
  br label %78

78:                                               ; preds = %168, %74
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 45
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %7, align 8
  store i32 -1, i32* %11, align 4
  br label %96

86:                                               ; preds = %78
  %87 = load i8*, i8** %7, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 43
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %7, align 8
  store i32 1, i32* %11, align 4
  br label %95

94:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95, %83
  %97 = load i8*, i8** %7, align 8
  store i8* %97, i8** %8, align 8
  br label %98

98:                                               ; preds = %115, %96
  %99 = load i8*, i8** %8, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 43
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 45
  br label %113

113:                                              ; preds = %108, %103, %98
  %114 = phi i1 [ false, %103 ], [ false, %98 ], [ %112, %108 ]
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %8, align 8
  br label %98

118:                                              ; preds = %113
  %119 = load i8*, i8** %7, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = call i32 @getflag(i8* %119, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %118
  %130 = load i32, i32* %17, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %14, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %14, align 4
  br label %167

134:                                              ; preds = %118
  %135 = load i32, i32* %11, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %14, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %14, align 4
  br label %166

141:                                              ; preds = %134
  %142 = load i32, i32* %17, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %164

144:                                              ; preds = %141
  %145 = load i8*, i8** %7, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i64 @isdigit(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @strtoul(i8* %152, i32* null, i32 0)
  store i32 %153, i32* %17, align 4
  br label %163

154:                                              ; preds = %144
  %155 = load i8*, i8** %8, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %160, i8* %161)
  br label %163

163:                                              ; preds = %154, %151
  br label %164

164:                                              ; preds = %163, %141
  %165 = load i32, i32* %17, align 4
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %164, %137
  br label %167

167:                                              ; preds = %166, %129
  br label %168

168:                                              ; preds = %167
  %169 = load i8*, i8** %8, align 8
  store i8* %169, i8** %7, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %78, label %173

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %4, align 4
  %177 = load i8**, i8*** %5, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i32 1
  store i8** %178, i8*** %5, align 8
  br label %71

179:                                              ; preds = %71
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %197

183:                                              ; preds = %179
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %185 = load i32, i32* %13, align 4
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %184, i32 %185)
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %188 = call i64 @sysctlbyname(i8* %187, i32* null, i64* null, i32* %14, i32 4)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %183
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %192 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %191)
  br label %193

193:                                              ; preds = %190, %183
  %194 = load i32, i32* %14, align 4
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %14, align 4
  store i32 %196, i32* %13, align 4
  br label %201

197:                                              ; preds = %179
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %199 = load i32, i32* %13, align 4
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %198, i32 %199)
  br label %201

201:                                              ; preds = %197, %193
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %202

202:                                              ; preds = %227, %201
  %203 = load i32, i32* %12, align 4
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flags, align 8
  %205 = call i32 @nitems(%struct.TYPE_3__* %204)
  %206 = icmp slt i32 %203, %205
  br i1 %206, label %207, label %230

207:                                              ; preds = %202
  %208 = load i32, i32* %13, align 4
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flags, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %208, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %207
  %218 = load i8*, i8** %9, align 8
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flags, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %218, i32 %224)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  br label %226

226:                                              ; preds = %217, %207
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %12, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %12, align 4
  br label %202

230:                                              ; preds = %202
  %231 = load i8*, i8** %9, align 8
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp ne i32 %233, 60
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0)
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %236)
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @getflag(i8*, i32) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
