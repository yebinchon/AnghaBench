; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_horzcol.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_horzcol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@colwd = common dso_local global i32 0, align 4
@pgwd = common dso_local global i64 0, align 8
@offst = common dso_local global i32 0, align 4
@HDBUF = common dso_local global i64 0, align 8
@pgnm = common dso_local global i32 0, align 4
@lines = common dso_local global i32 0, align 4
@nmwd = common dso_local global i64 0, align 8
@nmchar = common dso_local global i32 0, align 4
@clcnt = common dso_local global i32 0, align 4
@sflag = common dso_local global i64 0, align 8
@schar = common dso_local global i32 0, align 4
@nohead = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@eoptind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @horzcol(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %8, align 4
  %24 = load i32, i32* @colwd, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %26 = load i64, i64* @pgwd, align 8
  %27 = load i32, i32* @offst, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = add nsw i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i8* @malloc(i32 %34)
  store i8* %35, i8** %15, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = call i32 (...) @mfail()
  store i32 1, i32* %3, align 4
  br label %232

39:                                               ; preds = %2
  %40 = load i64, i64* @HDBUF, align 8
  %41 = load i32, i32* @offst, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = trunc i64 %43 to i32
  %45 = zext i32 %44 to i64
  %46 = mul i64 %45, 1
  %47 = trunc i64 %46 to i32
  %48 = call i8* @malloc(i32 %47)
  store i8* %48, i8** %16, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 @free(i8* %51)
  %53 = call i32 (...) @mfail()
  store i32 1, i32* %3, align 4
  br label %232

54:                                               ; preds = %39
  %55 = load i8*, i8** %16, align 8
  %56 = load i32, i32* @offst, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8* %58, i8** %17, align 8
  %59 = load i32, i32* @offst, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i8*, i8** %15, align 8
  %63 = load i32, i32* @offst, align 4
  %64 = call i32 @memset(i8* %62, i32 32, i32 %63)
  %65 = load i8*, i8** %16, align 8
  %66 = load i32, i32* @offst, align 4
  %67 = call i32 @memset(i8* %65, i32 32, i32 %66)
  br label %68

68:                                               ; preds = %61, %54
  br label %69

69:                                               ; preds = %216, %84, %68
  %70 = load i32, i32* %4, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = call i32* @nxtfile(i32 %70, i8** %71, i8** %18, i8* %72, i32 0)
  store i32* %73, i32** %19, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %217

75:                                               ; preds = %69
  %76 = load i32, i32* @pgnm, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32*, i32** %19, align 8
  %80 = load i32, i32* @pgnm, align 4
  %81 = load i32, i32* @lines, align 4
  %82 = call i64 @inskip(i32* %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %69

85:                                               ; preds = %78
  %86 = load i32, i32* @pgnm, align 4
  store i32 %86, i32* %14, align 4
  br label %88

87:                                               ; preds = %75
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %87, %85
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %206, %88
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @ttypause(i32 %90)
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %189, %89
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @lines, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %192

96:                                               ; preds = %92
  %97 = load i8*, i8** %15, align 8
  %98 = load i32, i32* @offst, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8* %100, i8** %6, align 8
  %101 = load i8*, i8** %6, align 8
  store i8* %101, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %158, %96
  %103 = load i64, i64* @nmwd, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load i8*, i8** %6, align 8
  %107 = load i64, i64* @nmwd, align 8
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  %110 = call i32 @addnum(i8* %106, i64 %107, i32 %109)
  %111 = load i64, i64* @nmwd, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 %111
  store i8* %113, i8** %6, align 8
  %114 = load i32, i32* @nmchar, align 4
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 8
  store i8 %115, i8* %116, align 1
  br label %118

118:                                              ; preds = %105, %102
  %119 = load i32*, i32** %19, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* @colwd, align 4
  %122 = call i32 @inln(i32* %119, i8* %120, i32 %121, i32* %21, i32 1, i32* %23)
  store i32 %122, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %159

125:                                              ; preds = %118
  %126 = load i32, i32* %8, align 4
  %127 = load i8*, i8** %6, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %6, align 8
  %130 = load i8*, i8** %6, align 8
  store i8* %130, i8** %9, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* @clcnt, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %159

136:                                              ; preds = %125
  %137 = load i64, i64* @sflag, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, i32* @schar, align 4
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %6, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %6, align 8
  store i8 %141, i8* %142, align 1
  br label %158

144:                                              ; preds = %136
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %8, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %7, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @memset(i8* %150, i32 32, i32 %151)
  %153 = load i32, i32* %7, align 4
  %154 = load i8*, i8** %6, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %6, align 8
  br label %157

157:                                              ; preds = %149, %144
  br label %158

158:                                              ; preds = %157, %139
  br label %102

159:                                              ; preds = %135, %124
  %160 = load i8*, i8** %9, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* @offst, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  br label %192

169:                                              ; preds = %159
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %182, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* @nohead, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %172
  %176 = load i8*, i8** %16, align 8
  %177 = load i8*, i8** %18, align 8
  %178 = load i32, i32* %14, align 4
  %179 = call i64 @prhead(i8* %176, i8* %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %227

182:                                              ; preds = %175, %172, %169
  %183 = load i8*, i8** %15, align 8
  %184 = load i32, i32* %11, align 4
  %185 = call i64 @otln(i8* %183, i32 %184, i32* %20, i32* %22, i32 0)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %227

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  br label %92

192:                                              ; preds = %168, %92
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load i32, i32* @lines, align 4
  %197 = load i32, i32* %12, align 4
  %198 = sub nsw i32 %196, %197
  %199 = call i64 @prtail(i32 %198, i32 0)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %227

202:                                              ; preds = %195, %192
  %203 = load i32, i32* %8, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %209

206:                                              ; preds = %202
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %89

209:                                              ; preds = %205
  %210 = load i32*, i32** %19, align 8
  %211 = load i32*, i32** @stdin, align 8
  %212 = icmp ne i32* %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32*, i32** %19, align 8
  %215 = call i32 @fclose(i32* %214)
  br label %216

216:                                              ; preds = %213, %209
  br label %69

217:                                              ; preds = %69
  %218 = load i32, i32* @eoptind, align 4
  %219 = load i32, i32* %4, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %227

222:                                              ; preds = %217
  %223 = load i8*, i8** %16, align 8
  %224 = call i32 @free(i8* %223)
  %225 = load i8*, i8** %15, align 8
  %226 = call i32 @free(i8* %225)
  store i32 0, i32* %3, align 4
  br label %232

227:                                              ; preds = %221, %201, %187, %181
  %228 = load i8*, i8** %16, align 8
  %229 = call i32 @free(i8* %228)
  %230 = load i8*, i8** %15, align 8
  %231 = call i32 @free(i8* %230)
  store i32 1, i32* %3, align 4
  br label %232

232:                                              ; preds = %227, %222, %50, %37
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @mfail(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @nxtfile(i32, i8**, i8**, i8*, i32) #1

declare dso_local i64 @inskip(i32*, i32, i32) #1

declare dso_local i32 @ttypause(i32) #1

declare dso_local i32 @addnum(i8*, i64, i32) #1

declare dso_local i32 @inln(i32*, i8*, i32, i32*, i32, i32*) #1

declare dso_local i64 @prhead(i8*, i8*, i32) #1

declare dso_local i64 @otln(i8*, i32, i32*, i32*, i32) #1

declare dso_local i64 @prtail(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
