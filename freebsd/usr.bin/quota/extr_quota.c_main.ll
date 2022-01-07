; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGROUPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"f:ghlrquv\00", align 1
@optarg = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@hflag = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@qflag = common dso_local global i32 0, align 4
@rflag = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"getgroups\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @NGROUPS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %52, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %11, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %50 [
    i32 102, label %27
    i32 103, label %29
    i32 104, label %32
    i32 108, label %35
    i32 113, label %38
    i32 114, label %41
    i32 117, label %44
    i32 118, label %47
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @optarg, align 4
  store i32 %28, i32* @filename, align 4
  br label %52

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %52

32:                                               ; preds = %25
  %33 = load i32, i32* @hflag, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @hflag, align 4
  br label %52

35:                                               ; preds = %25
  %36 = load i32, i32* @lflag, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @lflag, align 4
  br label %52

38:                                               ; preds = %25
  %39 = load i32, i32* @qflag, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @qflag, align 4
  br label %52

41:                                               ; preds = %25
  %42 = load i32, i32* @rflag, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @rflag, align 4
  br label %52

44:                                               ; preds = %25
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %52

47:                                               ; preds = %25
  %48 = load i32, i32* @vflag, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @vflag, align 4
  br label %52

50:                                               ; preds = %25
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %50, %47, %44, %41, %38, %35, %32, %29, %27
  br label %20

53:                                               ; preds = %20
  %54 = load i64, i64* @optind, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  %59 = load i64, i64* @optind, align 8
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 %59
  store i8** %61, i8*** %5, align 8
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %64, %53
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %129

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = call i64 (...) @getuid()
  %78 = call i64 @showuid(i64 %77)
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %76, %73
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %127

86:                                               ; preds = %83
  %87 = call i64 (...) @getgid()
  store i64 %87, i64* %7, align 8
  %88 = load i32, i32* @NGROUPS, align 4
  %89 = call i32 @getgroups(i32 %88, i64* %19)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %86
  %95 = load i64, i64* %7, align 8
  %96 = call i64 @showgid(i64 %95)
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %123, %94
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %19, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %105
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %19, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @showgid(i64 %116)
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %112, %105
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %101

126:                                              ; preds = %101
  br label %127

127:                                              ; preds = %126, %83
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %212

129:                                              ; preds = %70
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = call i32 (...) @usage()
  br label %137

137:                                              ; preds = %135, %132, %129
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %174

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %167, %140
  %142 = load i32, i32* %4, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %172

144:                                              ; preds = %141
  %145 = load i8**, i8*** %5, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @alldigits(i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = load i8**, i8*** %5, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @atoi(i8* %151)
  %153 = call i64 @showuid(i64 %152)
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %14, align 4
  br label %166

158:                                              ; preds = %144
  %159 = load i8**, i8*** %5, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @showusrname(i8* %160)
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %158, %149
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %4, align 4
  %170 = load i8**, i8*** %5, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i32 1
  store i8** %171, i8*** %5, align 8
  br label %141

172:                                              ; preds = %141
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %212

174:                                              ; preds = %137
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %210

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %204, %177
  %179 = load i32, i32* %4, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %209

181:                                              ; preds = %178
  %182 = load i8**, i8*** %5, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @alldigits(i8* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = load i8**, i8*** %5, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @atoi(i8* %188)
  %190 = call i64 @showgid(i64 %189)
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %190
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %14, align 4
  br label %203

195:                                              ; preds = %181
  %196 = load i8**, i8*** %5, align 8
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @showgrpname(i8* %197)
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %195, %186
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %4, align 4
  %207 = load i8**, i8*** %5, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i32 1
  store i8** %208, i8*** %5, align 8
  br label %178

209:                                              ; preds = %178
  br label %210

210:                                              ; preds = %209, %174
  %211 = load i32, i32* %14, align 4
  store i32 %211, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %212

212:                                              ; preds = %210, %172, %127
  %213 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %213)
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @showuid(i64) #2

declare dso_local i64 @getuid(...) #2

declare dso_local i64 @getgid(...) #2

declare dso_local i32 @getgroups(i32, i64*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i64 @showgid(i64) #2

declare dso_local i64 @alldigits(i8*) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i64 @showusrname(i8*) #2

declare dso_local i64 @showgrpname(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
