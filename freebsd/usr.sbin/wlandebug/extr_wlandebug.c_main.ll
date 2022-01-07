; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/wlandebug/extr_wlandebug.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/wlandebug/extr_wlandebug.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"wlan0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"missing interface name for -i option\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"sysctl-get(%s)\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"unknown flag %.*s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%s: 0x%x => \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"sysctl-set(%s)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s: 0x%x\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@flags = common dso_local global %struct.TYPE_3__* null, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** @progname, align 8
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %21 = call i32 @setoid(i8* %20, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %69

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %32 = call i32 @setoid(i8* %31, i32 256, i8* null)
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  store i8** %36, i8*** %5, align 8
  br label %68

37:                                               ; preds = %24
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = icmp sle i32 %44, 2
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @get_orig_iface_name(i8* %49, i32 256, i8* %52)
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 2
  store i32 %55, i32* %4, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  store i8** %57, i8*** %5, align 8
  br label %67

58:                                               ; preds = %37
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %64, %58
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67, %30
  br label %69

69:                                               ; preds = %68, %2
  store i64 4, i64* %13, align 8
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %71 = call i64 @sysctlbyname(i8* %70, i32* %11, i64* %13, i32* null, i32 0)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %75 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %181, %76
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %186

81:                                               ; preds = %78
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %6, align 8
  br label %85

85:                                               ; preds = %175, %81
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 45
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  store i32 -1, i32* %9, align 4
  br label %103

93:                                               ; preds = %85
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 43
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  store i32 1, i32* %9, align 4
  br label %102

101:                                              ; preds = %93
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %98
  br label %103

103:                                              ; preds = %102, %90
  %104 = load i8*, i8** %6, align 8
  store i8* %104, i8** %7, align 8
  br label %105

105:                                              ; preds = %122, %103
  %106 = load i8*, i8** %7, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load i8*, i8** %7, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 43
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i8*, i8** %7, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 45
  br label %120

120:                                              ; preds = %115, %110, %105
  %121 = phi i1 [ false, %110 ], [ false, %105 ], [ %119, %115 ]
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %7, align 8
  br label %105

125:                                              ; preds = %120
  %126 = load i8*, i8** %6, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @getflag(i8* %126, i32 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %125
  %137 = load i32, i32* %15, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %12, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %12, align 4
  br label %174

141:                                              ; preds = %125
  %142 = load i32, i32* %9, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %12, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %12, align 4
  br label %173

148:                                              ; preds = %141
  %149 = load i32, i32* %15, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %171

151:                                              ; preds = %148
  %152 = load i8*, i8** %6, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = call i64 @isdigit(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @strtoul(i8* %159, i32* null, i32 0)
  store i32 %160, i32* %15, align 4
  br label %170

161:                                              ; preds = %151
  %162 = load i8*, i8** %7, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = ptrtoint i8* %162 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = trunc i64 %166 to i32
  %168 = load i8*, i8** %6, align 8
  %169 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %167, i8* %168)
  br label %170

170:                                              ; preds = %161, %158
  br label %171

171:                                              ; preds = %170, %148
  %172 = load i32, i32* %15, align 4
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %171, %144
  br label %174

174:                                              ; preds = %173, %136
  br label %175

175:                                              ; preds = %174
  %176 = load i8*, i8** %7, align 8
  store i8* %176, i8** %6, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %85, label %180

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %4, align 4
  %184 = load i8**, i8*** %5, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i32 1
  store i8** %185, i8*** %5, align 8
  br label %78

186:                                              ; preds = %78
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %204

190:                                              ; preds = %186
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %192 = load i32, i32* %11, align 4
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %191, i32 %192)
  %194 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %195 = call i64 @sysctlbyname(i8* %194, i32* null, i64* null, i32* %12, i32 4)
  %196 = icmp slt i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %199 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %198)
  br label %200

200:                                              ; preds = %197, %190
  %201 = load i32, i32* %12, align 4
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* %12, align 4
  store i32 %203, i32* %11, align 4
  br label %208

204:                                              ; preds = %186
  %205 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %206 = load i32, i32* %11, align 4
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %205, i32 %206)
  br label %208

208:                                              ; preds = %204, %200
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %209

209:                                              ; preds = %234, %208
  %210 = load i32, i32* %10, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flags, align 8
  %212 = call i32 @N(%struct.TYPE_3__* %211)
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %237

214:                                              ; preds = %209
  %215 = load i32, i32* %11, align 4
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flags, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %215, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %214
  %225 = load i8*, i8** %8, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flags, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %225, i32 %231)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  br label %233

233:                                              ; preds = %224, %214
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  br label %209

237:                                              ; preds = %209
  %238 = load i8*, i8** %8, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp ne i32 %240, 60
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %243)
  ret i32 0
}

declare dso_local i32 @setoid(i8*, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @get_orig_iface_name(i8*, i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @getflag(i8*, i32) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @N(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
