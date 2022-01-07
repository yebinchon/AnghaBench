; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rs/extr_rs.c_getfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rs/extr_rs.c_getfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flags = common dso_local global i32 0, align 4
@ONEISEPONLY = common dso_local global i32 0, align 4
@NULLPAD = common dso_local global i32 0, align 4
@skip = common dso_local global i32 0, align 4
@SKIPPRINT = common dso_local global i32 0, align 4
@curline = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@NOARGS = common dso_local global i32 0, align 4
@curlen = common dso_local global i64 0, align 8
@owidth = common dso_local global i64 0, align 8
@ONEPERLINE = common dso_local global i32 0, align 4
@icols = common dso_local global i32 0, align 4
@isep = common dso_local global i8 0, align 1
@elem = common dso_local global i8** null, align 8
@maxlen = common dso_local global i64 0, align 8
@irows = common dso_local global i32 0, align 4
@blank = common dso_local global i8* null, align 8
@nelem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @getfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getfile() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = load i32, i32* @flags, align 4
  %9 = load i32, i32* @ONEISEPONLY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 1
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @flags, align 4
  %15 = load i32, i32* @NULLPAD, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %35, %0
  %18 = load i32, i32* @skip, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @skip, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = call i32 (...) @get_line()
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @flags, align 4
  %24 = load i32, i32* @SKIPPRINT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** @curline, align 8
  %29 = call i32 @puts(i8* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EOF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %231

35:                                               ; preds = %30
  br label %17

36:                                               ; preds = %17
  %37 = call i32 (...) @get_line()
  %38 = load i32, i32* @flags, align 4
  %39 = load i32, i32* @NOARGS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i64, i64* @curlen, align 8
  %44 = load i64, i64* @owidth, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @ONEPERLINE, align 4
  %48 = load i32, i32* @flags, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @flags, align 4
  br label %50

50:                                               ; preds = %46, %42, %36
  %51 = load i32, i32* @flags, align 4
  %52 = load i32, i32* @ONEPERLINE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* @icols, align 4
  br label %101

56:                                               ; preds = %50
  %57 = load i8*, i8** @curline, align 8
  store i8* %57, i8** %1, align 8
  %58 = load i8*, i8** @curline, align 8
  %59 = load i64, i64* @curlen, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %2, align 8
  br label %61

61:                                               ; preds = %97, %56
  %62 = load i8*, i8** %1, align 8
  %63 = load i8*, i8** %2, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %61
  %66 = load i8*, i8** %1, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* @isep, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %97

76:                                               ; preds = %72, %65
  %77 = load i32, i32* @icols, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @icols, align 4
  br label %79

79:                                               ; preds = %93, %76
  %80 = load i8*, i8** %1, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i8*, i8** %1, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* @isep, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %87, %89
  br label %91

91:                                               ; preds = %84, %79
  %92 = phi i1 [ false, %79 ], [ %90, %84 ]
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i8*, i8** %1, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %1, align 8
  br label %79

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %75
  %98 = load i8*, i8** %1, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %1, align 8
  br label %61

100:                                              ; preds = %61
  br label %101

101:                                              ; preds = %100, %55
  %102 = load i8**, i8*** @elem, align 8
  %103 = call i8** @getptrs(i8** %102)
  store i8** %103, i8*** %3, align 8
  br label %104

104:                                              ; preds = %218, %101
  %105 = load i32, i32* @flags, align 4
  %106 = load i32, i32* @ONEPERLINE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load i8*, i8** @curline, align 8
  %111 = load i8**, i8*** %3, align 8
  store i8* %110, i8** %111, align 8
  %112 = load i8**, i8*** %3, align 8
  %113 = call i32 @INCR(i8** %112)
  %114 = load i64, i64* @maxlen, align 8
  %115 = load i64, i64* @curlen, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i64, i64* @curlen, align 8
  store i64 %118, i64* @maxlen, align 8
  br label %119

119:                                              ; preds = %117, %109
  %120 = load i32, i32* @irows, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @irows, align 4
  br label %218

122:                                              ; preds = %104
  %123 = load i8*, i8** @curline, align 8
  store i8* %123, i8** %1, align 8
  %124 = load i8*, i8** @curline, align 8
  %125 = load i64, i64* @curlen, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %2, align 8
  br label %127

127:                                              ; preds = %192, %122
  %128 = load i8*, i8** %1, align 8
  %129 = load i8*, i8** %2, align 8
  %130 = icmp ult i8* %128, %129
  br i1 %130, label %131, label %195

131:                                              ; preds = %127
  %132 = load i8*, i8** %1, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* @isep, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %192

142:                                              ; preds = %138, %131
  %143 = load i8*, i8** %1, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = load i8, i8* @isep, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i8*, i8** @blank, align 8
  %151 = load i8**, i8*** %3, align 8
  store i8* %150, i8** %151, align 8
  br label %155

152:                                              ; preds = %142
  %153 = load i8*, i8** %1, align 8
  %154 = load i8**, i8*** %3, align 8
  store i8* %153, i8** %154, align 8
  br label %155

155:                                              ; preds = %152, %149
  br label %156

156:                                              ; preds = %169, %155
  %157 = load i8*, i8** %1, align 8
  %158 = load i8*, i8** %2, align 8
  %159 = icmp ult i8* %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i8*, i8** %1, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = load i8, i8* @isep, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %163, %165
  br label %167

167:                                              ; preds = %160, %156
  %168 = phi i1 [ false, %156 ], [ %166, %160 ]
  br i1 %168, label %169, label %172

169:                                              ; preds = %167
  %170 = load i8*, i8** %1, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %1, align 8
  br label %156

172:                                              ; preds = %167
  %173 = load i8*, i8** %1, align 8
  store i8 0, i8* %173, align 1
  %174 = load i64, i64* @maxlen, align 8
  %175 = load i8*, i8** %1, align 8
  %176 = load i8**, i8*** %3, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = ptrtoint i8* %175 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  %181 = icmp slt i64 %174, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %172
  %183 = load i8*, i8** %1, align 8
  %184 = load i8**, i8*** %3, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = ptrtoint i8* %183 to i64
  %187 = ptrtoint i8* %185 to i64
  %188 = sub i64 %186, %187
  store i64 %188, i64* @maxlen, align 8
  br label %189

189:                                              ; preds = %182, %172
  %190 = load i8**, i8*** %3, align 8
  %191 = call i32 @INCR(i8** %190)
  br label %192

192:                                              ; preds = %189, %141
  %193 = load i8*, i8** %1, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %1, align 8
  br label %127

195:                                              ; preds = %127
  %196 = load i32, i32* @irows, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* @irows, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %217

200:                                              ; preds = %195
  %201 = load i8**, i8*** @elem, align 8
  %202 = load i32, i32* @irows, align 4
  %203 = load i32, i32* @icols, align 4
  %204 = mul nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %201, i64 %205
  store i8** %206, i8*** %7, align 8
  br label %207

207:                                              ; preds = %211, %200
  %208 = load i8**, i8*** %3, align 8
  %209 = load i8**, i8*** %7, align 8
  %210 = icmp ult i8** %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load i8*, i8** @blank, align 8
  %213 = load i8**, i8*** %3, align 8
  store i8* %212, i8** %213, align 8
  %214 = load i8**, i8*** %3, align 8
  %215 = call i32 @INCR(i8** %214)
  br label %207

216:                                              ; preds = %207
  br label %217

217:                                              ; preds = %216, %195
  br label %218

218:                                              ; preds = %217, %119
  %219 = call i32 (...) @get_line()
  %220 = load i32, i32* @EOF, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %104, label %222

222:                                              ; preds = %218
  %223 = load i8**, i8*** %3, align 8
  store i8* null, i8** %223, align 8
  %224 = load i8**, i8*** %3, align 8
  %225 = load i8**, i8*** @elem, align 8
  %226 = ptrtoint i8** %224 to i64
  %227 = ptrtoint i8** %225 to i64
  %228 = sub i64 %226, %227
  %229 = sdiv exact i64 %228, 8
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* @nelem, align 4
  br label %231

231:                                              ; preds = %222, %34
  ret void
}

declare dso_local i32 @get_line(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i8** @getptrs(i8**) #1

declare dso_local i32 @INCR(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
