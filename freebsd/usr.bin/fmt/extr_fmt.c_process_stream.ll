; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fmt/extr_fmt.c_process_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fmt/extr_fmt.c_process_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SILLY = common dso_local global i64 0, align 8
@hdr_ParagraphStart = common dso_local global i64 0, align 8
@centerP = common dso_local global i64 0, align 8
@hdr_NonHeader = common dso_local global i64 0, align 8
@grok_mail_headers = common dso_local global i64 0, align 8
@hdr_Header = common dso_local global i64 0, align 8
@hdr_Continuation = common dso_local global i64 0, align 8
@format_troff = common dso_local global i32 0, align 4
@allow_indented_paragraphs = common dso_local global i32 0, align 4
@output_in_paragraph = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i32] [i32 37, i32 46, i32 42, i32 108, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@n_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @process_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_stream(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i64, i64* @SILLY, align 8
  store i64 %16, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %17 = load i64, i64* @SILLY, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* @hdr_ParagraphStart, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* @centerP, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @center_stream(i32* %22, i8* %23)
  br label %237

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %216, %138, %25
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @get_line(i32* %27, i64* %10)
  store i8* %28, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %219

30:                                               ; preds = %26
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @indent_length(i8* %31, i64 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* @hdr_NonHeader, align 8
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* @grok_mail_headers, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @hdr_NonHeader, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i64, i64* %11, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @might_be_header(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @hdr_Header, align 8
  store i64 %49, i64* %12, align 8
  br label %60

50:                                               ; preds = %44, %41
  %51 = load i64, i64* %11, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @hdr_NonHeader, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @hdr_Continuation, align 8
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %57, %53, %50
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %37, %30
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %99, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @format_troff, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %70, %64
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @hdr_Header, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %99, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @hdr_NonHeader, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @hdr_NonHeader, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %99, label %85

85:                                               ; preds = %81, %77
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %141

89:                                               ; preds = %85
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* @hdr_Continuation, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %141

93:                                               ; preds = %89
  %94 = load i32, i32* @allow_indented_paragraphs, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i64, i64* %6, align 8
  %98 = icmp ne i64 %97, 1
  br i1 %98, label %99, label %141

99:                                               ; preds = %96, %93, %81, %73, %70, %61
  %100 = load i64, i64* @output_in_paragraph, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i64, i64* %5, align 8
  br label %106

104:                                              ; preds = %99
  %105 = load i64, i64* %7, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i64 [ %103, %102 ], [ %105, %104 ]
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @new_paragraph(i64 %107, i64 %108)
  store i64 0, i64* %6, align 8
  %110 = load i64, i64* %11, align 8
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* %11, align 8
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* @hdr_Header, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  store i64 2, i64* %5, align 8
  br label %116

116:                                              ; preds = %115, %106
  %117 = load i64, i64* %10, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 46
  br i1 %124, label %125, label %140

125:                                              ; preds = %119
  %126 = load i32, i32* @format_troff, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %125, %116
  %129 = load i64, i64* %10, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 @putwchar(i8 signext 10)
  br label %138

133:                                              ; preds = %128
  %134 = load i64, i64* %10, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i8*, i8** %9, align 8
  %137 = call i32 @wprintf(i8* bitcast ([7 x i32]* @.str to i8*), i32 %135, i8* %136)
  br label %138

138:                                              ; preds = %133, %131
  %139 = load i64, i64* @hdr_ParagraphStart, align 8
  store i64 %139, i64* %8, align 8
  br label %26

140:                                              ; preds = %125, %119
  br label %152

141:                                              ; preds = %96, %89, %85
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* %5, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* @hdr_Continuation, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i64, i64* %11, align 8
  store i64 %150, i64* %5, align 8
  br label %151

151:                                              ; preds = %149, %145, %141
  br label %152

152:                                              ; preds = %151, %140
  %153 = load i64, i64* %12, align 8
  store i64 %153, i64* %8, align 8
  %154 = load i64, i64* %11, align 8
  store i64 %154, i64* %13, align 8
  br label %155

155:                                              ; preds = %202, %152
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* %10, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %216

159:                                              ; preds = %155
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %160

160:                                              ; preds = %177, %159
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %14, align 8
  %163 = add i64 %161, %162
  %164 = load i64, i64* %10, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %160
  %167 = load i8*, i8** %9, align 8
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %14, align 8
  %170 = add i64 %168, %169
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 32
  br label %175

175:                                              ; preds = %166, %160
  %176 = phi i1 [ false, %160 ], [ %174, %166 ]
  br i1 %176, label %177, label %180

177:                                              ; preds = %175
  %178 = load i64, i64* %14, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %14, align 8
  br label %160

180:                                              ; preds = %175
  %181 = load i64, i64* %14, align 8
  store i64 %181, i64* %15, align 8
  br label %182

182:                                              ; preds = %199, %180
  %183 = load i64, i64* %13, align 8
  %184 = load i64, i64* %15, align 8
  %185 = add i64 %183, %184
  %186 = load i64, i64* %10, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %182
  %189 = load i8*, i8** %9, align 8
  %190 = load i64, i64* %13, align 8
  %191 = load i64, i64* %15, align 8
  %192 = add i64 %190, %191
  %193 = getelementptr inbounds i8, i8* %189, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 32
  br label %197

197:                                              ; preds = %188, %182
  %198 = phi i1 [ false, %182 ], [ %196, %188 ]
  br i1 %198, label %199, label %202

199:                                              ; preds = %197
  %200 = load i64, i64* %15, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %15, align 8
  br label %182

202:                                              ; preds = %197
  %203 = load i64, i64* %7, align 8
  %204 = load i64, i64* %5, align 8
  %205 = load i8*, i8** %9, align 8
  %206 = load i64, i64* %13, align 8
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  %208 = load i64, i64* %14, align 8
  %209 = load i64, i64* %15, align 8
  %210 = load i64, i64* %14, align 8
  %211 = sub i64 %209, %210
  %212 = call i32 @output_word(i64 %203, i64 %204, i8* %207, i64 %208, i64 %211)
  %213 = load i64, i64* %15, align 8
  %214 = load i64, i64* %13, align 8
  %215 = add i64 %214, %213
  store i64 %215, i64* %13, align 8
  br label %155

216:                                              ; preds = %155
  %217 = load i64, i64* %6, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %6, align 8
  br label %26

219:                                              ; preds = %26
  %220 = load i64, i64* @output_in_paragraph, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = load i64, i64* %5, align 8
  br label %226

224:                                              ; preds = %219
  %225 = load i64, i64* %7, align 8
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi i64 [ %223, %222 ], [ %225, %224 ]
  %228 = call i32 @new_paragraph(i64 %227, i64 0)
  %229 = load i32*, i32** %3, align 8
  %230 = call i64 @ferror(i32* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %226
  %233 = load i8*, i8** %4, align 8
  %234 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %233)
  %235 = load i32, i32* @n_errors, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* @n_errors, align 4
  br label %237

237:                                              ; preds = %21, %232, %226
  ret void
}

declare dso_local i32 @center_stream(i32*, i8*) #1

declare dso_local i8* @get_line(i32*, i64*) #1

declare dso_local i64 @indent_length(i8*, i64) #1

declare dso_local i64 @might_be_header(i8*) #1

declare dso_local i32 @new_paragraph(i64, i64) #1

declare dso_local i32 @putwchar(i8 signext) #1

declare dso_local i32 @wprintf(i8*, i32, i8*) #1

declare dso_local i32 @output_word(i64, i64, i8*, i64, i64) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
