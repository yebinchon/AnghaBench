; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_onecol.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_onecol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nmwd = common dso_local global i32 0, align 4
@offst = common dso_local global i32 0, align 4
@LBUF = common dso_local global i64 0, align 8
@HDBUF = common dso_local global i64 0, align 8
@nmchar = common dso_local global i8 0, align 1
@pgnm = common dso_local global i32 0, align 4
@lines = common dso_local global i32 0, align 4
@nohead = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@eoptind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onecol(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %6, align 4
  %24 = load i32, i32* @nmwd, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @nmwd, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @offst, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i64, i64* @LBUF, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = trunc i64 %37 to i32
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i8* @malloc(i32 %41)
  store i8* %42, i8** %16, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = call i32 (...) @mfail()
  store i32 1, i32* %3, align 4
  br label %221

46:                                               ; preds = %30
  %47 = load i64, i64* @HDBUF, align 8
  %48 = load i32, i32* @offst, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = trunc i64 %50 to i32
  %52 = zext i32 %51 to i64
  %53 = mul i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i8* @malloc(i32 %54)
  store i8* %55, i8** %19, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i8*, i8** %16, align 8
  %59 = call i32 @free(i8* %58)
  %60 = call i32 (...) @mfail()
  store i32 1, i32* %3, align 4
  br label %221

61:                                               ; preds = %46
  %62 = load i8*, i8** %19, align 8
  %63 = load i32, i32* @offst, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8* %65, i8** %20, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = load i32, i32* @offst, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %18, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8* %73, i8** %17, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %61
  %77 = load i8, i8* @nmchar, align 1
  %78 = load i8*, i8** %18, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 %77, i8* %82, align 1
  br label %83

83:                                               ; preds = %76, %61
  %84 = load i32, i32* @offst, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i8*, i8** %16, align 8
  %88 = load i32, i32* @offst, align 4
  %89 = call i32 @memset(i8* %87, i32 32, i32 %88)
  %90 = load i8*, i8** %19, align 8
  %91 = load i32, i32* @offst, align 4
  %92 = call i32 @memset(i8* %90, i32 32, i32 %91)
  br label %93

93:                                               ; preds = %86, %83
  br label %94

94:                                               ; preds = %205, %109, %93
  %95 = load i32, i32* %4, align 4
  %96 = load i8**, i8*** %5, align 8
  %97 = load i8*, i8** %20, align 8
  %98 = call i32* @nxtfile(i32 %95, i8** %96, i8** %22, i8* %97, i32 0)
  store i32* %98, i32** %21, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %206

100:                                              ; preds = %94
  %101 = load i32, i32* @pgnm, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32*, i32** %21, align 8
  %105 = load i32, i32* @pgnm, align 4
  %106 = load i32, i32* @lines, align 4
  %107 = call i64 @inskip(i32* %104, i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %94

110:                                              ; preds = %103
  %111 = load i32, i32* @pgnm, align 4
  store i32 %111, i32* %12, align 4
  br label %113

112:                                              ; preds = %100
  store i32 1, i32* %12, align 4
  br label %113

113:                                              ; preds = %112, %110
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %195, %113
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @ttypause(i32 %115)
  br label %117

117:                                              ; preds = %175, %174, %114
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @lines, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %178

121:                                              ; preds = %117
  %122 = load i32*, i32** %21, align 8
  %123 = load i8*, i8** %17, align 8
  %124 = load i64, i64* @LBUF, align 8
  %125 = call i32 @inln(i32* %122, i8* %123, i64 %124, i32* %15, i32 0, i32* %23)
  store i32 %125, i32* %6, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %178

128:                                              ; preds = %121
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* @nohead, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = load i8*, i8** %19, align 8
  %136 = load i8*, i8** %22, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i64 @prhead(i8* %135, i8* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %216

141:                                              ; preds = %134, %131, %128
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %163, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i8*, i8** %18, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  %152 = call i32 @addnum(i8* %148, i32 %149, i32 %151)
  br label %153

153:                                              ; preds = %147, %144
  %154 = load i8*, i8** %16, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %155, %156
  %158 = load i32, i32* %23, align 4
  %159 = call i64 @otln(i8* %154, i32 %157, i32* %13, i32* %14, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %216

162:                                              ; preds = %153
  br label %171

163:                                              ; preds = %141
  %164 = load i8*, i8** %17, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %23, align 4
  %167 = call i64 @otln(i8* %164, i32 %165, i32* %13, i32* %14, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %216

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170, %162
  %172 = load i32, i32* %23, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  store i32 1, i32* %8, align 4
  br label %117

175:                                              ; preds = %171
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %117

178:                                              ; preds = %127, %117
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %178
  %182 = load i32, i32* @lines, align 4
  %183 = load i32, i32* %9, align 4
  %184 = sub nsw i32 %182, %183
  %185 = load i32, i32* %8, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i32, i32* %8, align 4
  %188 = call i64 @prtail(i32 %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %216

191:                                              ; preds = %181, %178
  %192 = load i32, i32* %6, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %198

195:                                              ; preds = %191
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %114

198:                                              ; preds = %194
  %199 = load i32*, i32** %21, align 8
  %200 = load i32*, i32** @stdin, align 8
  %201 = icmp ne i32* %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32*, i32** %21, align 8
  %204 = call i32 @fclose(i32* %203)
  br label %205

205:                                              ; preds = %202, %198
  br label %94

206:                                              ; preds = %94
  %207 = load i32, i32* @eoptind, align 4
  %208 = load i32, i32* %4, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %216

211:                                              ; preds = %206
  %212 = load i8*, i8** %19, align 8
  %213 = call i32 @free(i8* %212)
  %214 = load i8*, i8** %16, align 8
  %215 = call i32 @free(i8* %214)
  store i32 0, i32* %3, align 4
  br label %221

216:                                              ; preds = %210, %190, %169, %161, %140
  %217 = load i8*, i8** %19, align 8
  %218 = call i32 @free(i8* %217)
  %219 = load i8*, i8** %16, align 8
  %220 = call i32 @free(i8* %219)
  store i32 1, i32* %3, align 4
  br label %221

221:                                              ; preds = %216, %211, %57, %44
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @mfail(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @nxtfile(i32, i8**, i8**, i8*, i32) #1

declare dso_local i64 @inskip(i32*, i32, i32) #1

declare dso_local i32 @ttypause(i32) #1

declare dso_local i32 @inln(i32*, i8*, i64, i32*, i32, i32*) #1

declare dso_local i64 @prhead(i8*, i8*, i32) #1

declare dso_local i32 @addnum(i8*, i32, i32) #1

declare dso_local i64 @otln(i8*, i32, i32*, i32*, i32) #1

declare dso_local i64 @prtail(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
