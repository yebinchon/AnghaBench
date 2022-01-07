; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_forward.c_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_forward.c_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward(i32* %0, i8* %1, i32 %2, i32 %3, %struct.stat* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.stat* %4, %struct.stat** %10, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %196 [
    i32 131, label %13
    i32 130, label %64
    i32 129, label %92
    i32 128, label %143
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %197

17:                                               ; preds = %13
  %18 = load %struct.stat*, %struct.stat** %10, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @S_ISREG(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.stat*, %struct.stat** %10, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.stat*, %struct.stat** %10, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = call i32 @fseeko(i32* %34, i32 %35, i32 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @ierr(i8* %40)
  br label %221

42:                                               ; preds = %33
  br label %63

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @getc(i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @EOF, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @ferror(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @ierr(i8* %58)
  br label %221

60:                                               ; preds = %53
  br label %62

61:                                               ; preds = %48
  br label %44

62:                                               ; preds = %60, %44
  br label %63

63:                                               ; preds = %62, %42
  br label %197

64:                                               ; preds = %5
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %197

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %90, %68
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @getc(i32* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @EOF, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @ferror(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @ierr(i8* %79)
  br label %221

81:                                               ; preds = %74
  br label %91

82:                                               ; preds = %69
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %91

90:                                               ; preds = %85, %82
  br label %69

91:                                               ; preds = %89, %81
  br label %197

92:                                               ; preds = %5
  %93 = load %struct.stat*, %struct.stat** %10, align 8
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @S_ISREG(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = load %struct.stat*, %struct.stat** %10, align 8
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 0, %106
  %108 = load i32, i32* @SEEK_END, align 4
  %109 = call i32 @fseeko(i32* %105, i32 %107, i32 %108)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @ierr(i8* %112)
  br label %221

114:                                              ; preds = %104, %98
  br label %142

115:                                              ; preds = %92
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %124, %118
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @getc(i32* %120)
  %122 = load i32, i32* @EOF, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %119

125:                                              ; preds = %119
  %126 = load i32*, i32** %6, align 8
  %127 = call i64 @ferror(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @ierr(i8* %130)
  br label %221

132:                                              ; preds = %125
  br label %141

133:                                              ; preds = %115
  %134 = load i32*, i32** %6, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @bytes(i32* %134, i8* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %221

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %132
  br label %142

142:                                              ; preds = %141, %114
  br label %197

143:                                              ; preds = %5
  %144 = load %struct.stat*, %struct.stat** %10, align 8
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @S_ISREG(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %143
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %149
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* @SEEK_END, align 4
  %155 = call i32 @fseeko(i32* %153, i32 0, i32 %154)
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i8*, i8** %7, align 8
  %159 = call i32 @ierr(i8* %158)
  br label %221

160:                                              ; preds = %152
  br label %167

161:                                              ; preds = %149
  %162 = load i32*, i32** %6, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.stat*, %struct.stat** %10, align 8
  %166 = call i32 @rlines(i32* %162, i8* %163, i32 %164, %struct.stat* %165)
  br label %167

167:                                              ; preds = %161, %160
  br label %195

168:                                              ; preds = %143
  %169 = load i32, i32* %9, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %186

171:                                              ; preds = %168
  br label %172

172:                                              ; preds = %177, %171
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @getc(i32* %173)
  %175 = load i32, i32* @EOF, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %172

178:                                              ; preds = %172
  %179 = load i32*, i32** %6, align 8
  %180 = call i64 @ferror(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load i8*, i8** %7, align 8
  %184 = call i32 @ierr(i8* %183)
  br label %221

185:                                              ; preds = %178
  br label %194

186:                                              ; preds = %168
  %187 = load i32*, i32** %6, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @lines(i32* %187, i8* %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %221

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %193, %185
  br label %195

195:                                              ; preds = %194, %167
  br label %197

196:                                              ; preds = %5
  br label %197

197:                                              ; preds = %196, %195, %142, %91, %67, %63, %16
  br label %198

198:                                              ; preds = %210, %197
  %199 = load i32*, i32** %6, align 8
  %200 = call i32 @getc(i32* %199)
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* @EOF, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %211

203:                                              ; preds = %198
  %204 = load i32, i32* %11, align 4
  %205 = call i32 @putchar(i32 %204)
  %206 = load i32, i32* @EOF, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = call i32 (...) @oerr()
  br label %210

210:                                              ; preds = %208, %203
  br label %198

211:                                              ; preds = %198
  %212 = load i32*, i32** %6, align 8
  %213 = call i64 @ferror(i32* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i8*, i8** %7, align 8
  %217 = call i32 @ierr(i8* %216)
  br label %221

218:                                              ; preds = %211
  %219 = load i32, i32* @stdout, align 4
  %220 = call i32 @fflush(i32 %219)
  br label %221

221:                                              ; preds = %218, %215, %192, %182, %157, %139, %129, %111, %78, %57, %39
  ret void
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @fseeko(i32*, i32, i32) #1

declare dso_local i32 @ierr(i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @bytes(i32*, i8*, i32) #1

declare dso_local i32 @rlines(i32*, i8*, i32, %struct.stat*) #1

declare dso_local i32 @lines(i32*, i8*, i32) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @oerr(...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
