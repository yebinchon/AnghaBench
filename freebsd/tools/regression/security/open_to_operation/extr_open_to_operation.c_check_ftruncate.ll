; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_ftruncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/open_to_operation/extr_open_to_operation.c_check_ftruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"truncate1 skipped\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"truncate2 skipped\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"truncate3 skipped\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"truncate1 succeeded\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"truncate1 failed\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"truncate2 succeeded\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"truncate2 failed\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"truncate3 succeeded\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"truncate3 failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i32)* @check_ftruncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ftruncate(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %238, %4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %241

17:                                               ; preds = %13
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @open(i8* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %17
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @notok_mode(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @notok_mode(i8* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @notok_mode(i8* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @notok_mode(i8* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %238

41:                                               ; preds = %17
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @fstat(i32 %42, %struct.stat* %9)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @notok_mode(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @notok_mode(i8* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @notok_mode(i8* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @notok_mode(i8* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @close(i32 %58)
  br label %238

60:                                               ; preds = %41
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @ok_mode(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  %68 = call i64 @ftruncate(i32 %64, i64 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %60
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @O_ACCMODE, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @O_WRONLY, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @O_ACCMODE, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @O_RDWR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76, %70
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @ok_mode(i8* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  br label %98

86:                                               ; preds = %76
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @notok_mode(i8* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @notok_mode(i8* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @notok_mode(i8* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @close(i32 %96)
  br label %238

98:                                               ; preds = %82
  br label %128

99:                                               ; preds = %60
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @O_ACCMODE, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @O_WRONLY, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @O_ACCMODE, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @O_RDWR, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %105, %99
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @notok_mode(i8* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @notok_mode(i8* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load i8*, i8** %5, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @notok_mode(i8* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @close(i32 %121)
  br label %238

123:                                              ; preds = %105
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @ok_mode(i8* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %127, %98
  %129 = load i32, i32* %10, align 4
  %130 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  %133 = call i64 @ftruncate(i32 %129, i64 %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %161

135:                                              ; preds = %128
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @O_ACCMODE, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @O_WRONLY, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @O_ACCMODE, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* @O_RDWR, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141, %135
  %148 = load i8*, i8** %5, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @ok_mode(i8* %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %149)
  br label %160

151:                                              ; preds = %141
  %152 = load i8*, i8** %5, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @notok_mode(i8* %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %153)
  %155 = load i8*, i8** %5, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @notok_mode(i8* %155, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @close(i32 %158)
  br label %238

160:                                              ; preds = %147
  br label %187

161:                                              ; preds = %128
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @O_ACCMODE, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* @O_WRONLY, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %161
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @O_ACCMODE, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* @O_RDWR, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %167, %161
  %174 = load i8*, i8** %5, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @notok_mode(i8* %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %175)
  %177 = load i8*, i8** %5, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @notok_mode(i8* %177, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @close(i32 %180)
  br label %238

182:                                              ; preds = %167
  %183 = load i8*, i8** %5, align 8
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @ok_mode(i8* %183, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %186, %160
  %188 = load i32, i32* %10, align 4
  %189 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i64 @ftruncate(i32 %188, i64 %190)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %214

193:                                              ; preds = %187
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* @O_ACCMODE, align 4
  %196 = and i32 %194, %195
  %197 = load i32, i32* @O_WRONLY, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %205, label %199

199:                                              ; preds = %193
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @O_ACCMODE, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* @O_RDWR, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %199, %193
  %206 = load i8*, i8** %5, align 8
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @ok_mode(i8* %206, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %207)
  br label %213

209:                                              ; preds = %199
  %210 = load i8*, i8** %5, align 8
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @notok_mode(i8* %210, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %209, %205
  br label %235

214:                                              ; preds = %187
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @O_ACCMODE, align 4
  %217 = and i32 %215, %216
  %218 = load i32, i32* @O_WRONLY, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %226, label %220

220:                                              ; preds = %214
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @O_ACCMODE, align 4
  %223 = and i32 %221, %222
  %224 = load i32, i32* @O_RDWR, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %220, %214
  %227 = load i8*, i8** %5, align 8
  %228 = load i32, i32* %12, align 4
  %229 = call i32 @notok_mode(i8* %227, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %228)
  br label %234

230:                                              ; preds = %220
  %231 = load i8*, i8** %5, align 8
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @ok_mode(i8* %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %230, %226
  br label %235

235:                                              ; preds = %234, %213
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @close(i32 %236)
  br label %238

238:                                              ; preds = %235, %173, %151, %111, %86, %45, %28
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %13

241:                                              ; preds = %13
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @notok_mode(i8*, i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ok_mode(i8*, i8*, i32) #1

declare dso_local i64 @ftruncate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
