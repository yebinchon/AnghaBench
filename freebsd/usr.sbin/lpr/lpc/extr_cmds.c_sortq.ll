; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_cmds.c_sortq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_cmds.c_sortq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [33 x i8] c"\09*** Error in sortq: %s == %s !\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\09***       cat %d == %d ; seq = %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirent**, %struct.dirent**)* @sortq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sortq(%struct.dirent** %0, %struct.dirent** %1) #0 {
  %3 = alloca %struct.dirent**, align 8
  %4 = alloca %struct.dirent**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dirent** %0, %struct.dirent*** %3, align 8
  store %struct.dirent** %1, %struct.dirent*** %4, align 8
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %18 = load %struct.dirent**, %struct.dirent*** %3, align 8
  %19 = load %struct.dirent*, %struct.dirent** %18, align 8
  %20 = getelementptr inbounds %struct.dirent, %struct.dirent* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load %struct.dirent**, %struct.dirent*** %4, align 8
  %23 = load %struct.dirent*, %struct.dirent** %22, align 8
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %9, align 8
  br label %26

26:                                               ; preds = %2
  store i32 10, i32* %12, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %14, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  store i8* %32, i8** %10, align 8
  store i32 0, i32* %16, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 102
  br i1 %37, label %38, label %102

38:                                               ; preds = %26
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @isalpha(i32 %39) #3
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %102

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %16, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 99
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %12, align 4
  br label %70

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 100
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 2, i32* %12, align 4
  br label %69

55:                                               ; preds = %49
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 114
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 3, i32* %12, align 4
  br label %68

61:                                               ; preds = %55
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 116
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 4, i32* %12, align 4
  br label %67

67:                                               ; preds = %66, %61
  br label %68

68:                                               ; preds = %67, %60
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 10
  br i1 %72, label %73, label %101

73:                                               ; preds = %70
  %74 = load i8*, i8** %10, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @isdigit(i32 %77) #3
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @isalpha(i32 %81) #3
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %16, align 4
  %91 = shl i32 %90, 8
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %84, %80
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @isdigit(i32 %95) #3
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  store i32 10, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %94
  br label %100

100:                                              ; preds = %99, %73
  br label %101

101:                                              ; preds = %100, %70
  br label %102

102:                                              ; preds = %101, %38, %26
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  store i32 10, i32* %13, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  store i32 %108, i32* %14, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  store i8* %110, i8** %11, align 8
  store i32 0, i32* %17, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 102
  br i1 %115, label %116, label %180

116:                                              ; preds = %104
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @isalpha(i32 %117) #3
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %180

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %17, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 99
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 1, i32* %13, align 4
  br label %148

127:                                              ; preds = %120
  %128 = load i8*, i8** %9, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 100
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 2, i32* %13, align 4
  br label %147

133:                                              ; preds = %127
  %134 = load i8*, i8** %9, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 114
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 3, i32* %13, align 4
  br label %146

139:                                              ; preds = %133
  %140 = load i8*, i8** %9, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 116
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store i32 4, i32* %13, align 4
  br label %145

145:                                              ; preds = %144, %139
  br label %146

146:                                              ; preds = %145, %138
  br label %147

147:                                              ; preds = %146, %132
  br label %148

148:                                              ; preds = %147, %126
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 10
  br i1 %150, label %151, label %179

151:                                              ; preds = %148
  %152 = load i8*, i8** %11, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @isdigit(i32 %155) #3
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %178, label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @isalpha(i32 %159) #3
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = load i8*, i8** %11, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %11, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %17, align 4
  %169 = shl i32 %168, 8
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %169, %170
  store i32 %171, i32* %17, align 4
  br label %172

172:                                              ; preds = %162, %158
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @isdigit(i32 %173) #3
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  store i32 10, i32* %13, align 4
  br label %177

177:                                              ; preds = %176, %172
  br label %178

178:                                              ; preds = %177, %151
  br label %179

179:                                              ; preds = %178, %148
  br label %180

180:                                              ; preds = %179, %116, %104
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %12, align 4
  %183 = icmp sge i32 %182, 10
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %13, align 4
  %186 = icmp sge i32 %185, 10
  br i1 %186, label %187, label %203

187:                                              ; preds = %184, %181
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i8*, i8** %8, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = call i32 @strcmp(i8* %192, i8* %193)
  store i32 %194, i32* %15, align 4
  br label %202

195:                                              ; preds = %187
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  store i32 -1, i32* %15, align 4
  br label %201

200:                                              ; preds = %195
  store i32 1, i32* %15, align 4
  br label %201

201:                                              ; preds = %200, %199
  br label %202

202:                                              ; preds = %201, %191
  br label %241

203:                                              ; preds = %184
  %204 = load i8*, i8** %10, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = call i32 @strcmp(i8* %204, i8* %205)
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  br label %241

210:                                              ; preds = %203
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  store i32 -1, i32* %15, align 4
  br label %241

215:                                              ; preds = %210
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %13, align 4
  %218 = icmp sgt i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  store i32 1, i32* %15, align 4
  br label %241

220:                                              ; preds = %215
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %17, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  store i32 -1, i32* %15, align 4
  br label %241

226:                                              ; preds = %221
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %17, align 4
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  store i32 1, i32* %15, align 4
  br label %241

231:                                              ; preds = %226
  br label %232

232:                                              ; preds = %231
  %233 = load i8*, i8** %8, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %233, i8* %234)
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* %17, align 4
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %236, i32 %237, i32 %238, i32 %239)
  store i32 0, i32* %15, align 4
  br label %241

241:                                              ; preds = %232, %230, %225, %219, %214, %209, %202
  %242 = load i32, i32* %15, align 4
  ret i32 %242
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
