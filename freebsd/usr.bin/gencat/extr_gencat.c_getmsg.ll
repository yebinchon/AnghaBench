; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_getmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_getmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getmsg.msg = internal global i8* null, align 8
@getmsg.msglen = internal global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"unexpected quote character, ignoring\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"premature end of file\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"octal number greater than 7?!\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unrecognized escape sequence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i8)* @getmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getmsg(i32 %0, i8* %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* %6, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %21, %14, %3
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @getmsg.msglen, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load i64, i64* @getmsg.msglen, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8*, i8** @getmsg.msg, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i8* @xrealloc(i8* %35, i64 %36)
  store i8* %37, i8** @getmsg.msg, align 8
  br label %41

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  %40 = call i8* @xmalloc(i64 %39)
  store i8* %40, i8** @getmsg.msg, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* @getmsg.msglen, align 8
  br label %43

43:                                               ; preds = %41, %24
  %44 = load i8*, i8** @getmsg.msg, align 8
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %237, %43
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %238

49:                                               ; preds = %45
  %50 = load i8, i8* %6, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %6, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %53
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %60
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @isspace(i8 zeroext %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %10, align 8
  %74 = call i64* @wskip(i8* %73)
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72, %67
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @warning(i8* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  %82 = load i8, i8* %80, align 1
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  store i8 %82, i8* %83, align 1
  br label %87

85:                                               ; preds = %72, %60
  %86 = load i8*, i8** %5, align 8
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %85, %77
  br label %237

88:                                               ; preds = %53, %49
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 92
  br i1 %92, label %93, label %230

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %5, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  switch i32 %98, label %162 [
    i32 0, label %99
    i32 110, label %122
    i32 116, label %127
    i32 118, label %132
    i32 98, label %137
    i32 114, label %142
    i32 102, label %147
    i32 34, label %152
    i32 92, label %157
  ]

99:                                               ; preds = %93
  %100 = load i32, i32* %4, align 4
  %101 = call i8* @get_line(i32 %100)
  store i8* %101, i8** %5, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %99
  %107 = load i8*, i8** %5, align 8
  %108 = call i64 @strlen(i8* %107)
  %109 = load i64, i64* @getmsg.msglen, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* @getmsg.msglen, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** @getmsg.msg, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  store i64 %115, i64* %8, align 8
  %116 = load i8*, i8** @getmsg.msg, align 8
  %117 = load i64, i64* @getmsg.msglen, align 8
  %118 = call i8* @xrealloc(i8* %116, i64 %117)
  store i8* %118, i8** @getmsg.msg, align 8
  %119 = load i8*, i8** @getmsg.msg, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %9, align 8
  br label %229

122:                                              ; preds = %93
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %9, align 8
  store i8 10, i8* %123, align 1
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %5, align 8
  br label %229

127:                                              ; preds = %93
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %9, align 8
  store i8 9, i8* %128, align 1
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %5, align 8
  br label %229

132:                                              ; preds = %93
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %9, align 8
  store i8 11, i8* %133, align 1
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %5, align 8
  br label %229

137:                                              ; preds = %93
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %9, align 8
  store i8 8, i8* %138, align 1
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %5, align 8
  br label %229

142:                                              ; preds = %93
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %9, align 8
  store i8 13, i8* %143, align 1
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %5, align 8
  br label %229

147:                                              ; preds = %93
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %9, align 8
  store i8 12, i8* %148, align 1
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %5, align 8
  br label %229

152:                                              ; preds = %93
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %9, align 8
  store i8 34, i8* %153, align 1
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %5, align 8
  br label %229

157:                                              ; preds = %93
  %158 = load i8*, i8** %9, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %9, align 8
  store i8 92, i8* %158, align 1
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %5, align 8
  br label %229

162:                                              ; preds = %93
  %163 = load i8, i8* %6, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %162
  %167 = load i8*, i8** %5, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = load i8, i8* %6, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %5, align 8
  %176 = load i8, i8* %174, align 1
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %9, align 8
  store i8 %176, i8* %177, align 1
  br label %228

179:                                              ; preds = %166, %162
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = call i32 @isdigit(i8 zeroext %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %224

184:                                              ; preds = %179
  %185 = load i8*, i8** %9, align 8
  store i8 0, i8* %185, align 1
  store i64 0, i64* %8, align 8
  br label %186

186:                                              ; preds = %220, %184
  %187 = load i64, i64* %8, align 8
  %188 = icmp slt i64 %187, 3
  br i1 %188, label %189, label %223

189:                                              ; preds = %186
  %190 = load i8*, i8** %5, align 8
  %191 = load i8, i8* %190, align 1
  %192 = call i32 @isdigit(i8 zeroext %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  br label %223

195:                                              ; preds = %189
  %196 = load i8*, i8** %5, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp sgt i32 %198, 55
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i8*, i8** %5, align 8
  %202 = call i32 @warning(i8* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %195
  %204 = load i8*, i8** %9, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = mul nsw i32 %206, 8
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %204, align 1
  %209 = load i8*, i8** %5, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = sub nsw i32 %211, 48
  %213 = load i8*, i8** %9, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = add nsw i32 %215, %212
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %213, align 1
  %218 = load i8*, i8** %5, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %5, align 8
  br label %220

220:                                              ; preds = %203
  %221 = load i64, i64* %8, align 8
  %222 = add nsw i64 %221, 1
  store i64 %222, i64* %8, align 8
  br label %186

223:                                              ; preds = %194, %186
  br label %227

224:                                              ; preds = %179
  %225 = load i8*, i8** %5, align 8
  %226 = call i32 @warning(i8* %225, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %223
  br label %228

228:                                              ; preds = %227, %173
  br label %229

229:                                              ; preds = %228, %157, %152, %147, %142, %137, %132, %127, %122, %106
  br label %236

230:                                              ; preds = %88
  %231 = load i8*, i8** %5, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %5, align 8
  %233 = load i8, i8* %231, align 1
  %234 = load i8*, i8** %9, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %9, align 8
  store i8 %233, i8* %234, align 1
  br label %236

236:                                              ; preds = %230, %229
  br label %237

237:                                              ; preds = %236, %87
  br label %45

238:                                              ; preds = %45
  %239 = load i8*, i8** %9, align 8
  store i8 0, i8* %239, align 1
  %240 = load i8*, i8** @getmsg.msg, align 8
  ret i8* %240
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i64* @wskip(i8*) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i8* @get_line(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
