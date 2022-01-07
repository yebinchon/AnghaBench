; ModuleID = '/home/carl/AnghaBench/git/compat/extr_inet_pton.c_inet_pton6.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_inet_pton.c_inet_pton6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton6.xdigits_l = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@inet_pton6.xdigits_u = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@NS_IN6ADDRSZ = common dso_local global i32 0, align 4
@NS_INT16SZ = common dso_local global i32 0, align 4
@NS_INADDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @inet_pton6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton6(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %25 = call i32 @memset(i8* %23, i8 signext 0, i32 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8* %29, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 58
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 58
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %208

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i8*, i8** %4, align 8
  store i8* %43, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %97, %87, %75, %42
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %134

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_l, i64 0, i64 0), i8** %11, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_l, i64 0, i64 0), i32 %51)
  store i8* %52, i8** %17, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_u, i64 0, i64 0), i8** %11, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_u, i64 0, i64 0), i32 %55)
  store i8* %56, i8** %17, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i8*, i8** %17, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = shl i32 %61, 4
  store i32 %62, i32* %15, align 4
  %63 = load i8*, i8** %17, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = load i32, i32* %15, align 4
  %69 = zext i32 %68 to i64
  %70 = or i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ugt i32 %72, 65535
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %208

75:                                               ; preds = %60
  store i32 1, i32* %14, align 4
  br label %44

76:                                               ; preds = %57
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 58
  br i1 %78, label %79, label %113

79:                                               ; preds = %76
  %80 = load i8*, i8** %4, align 8
  store i8* %80, i8** %12, align 8
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %208

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  store i8* %88, i8** %10, align 8
  br label %44

89:                                               ; preds = %79
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* @NS_INT16SZ, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ugt i8* %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %208

97:                                               ; preds = %89
  %98 = load i32, i32* %15, align 4
  %99 = lshr i32 %98, 8
  %100 = trunc i32 %99 to i8
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, 255
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %8, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i32, i32* %15, align 4
  %107 = trunc i32 %106 to i8
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 255
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %8, align 8
  store i8 %110, i8* %111, align 1
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %44

113:                                              ; preds = %76
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, 46
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* @NS_INADDRSZ, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8*, i8** %9, align 8
  %122 = icmp ule i8* %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = load i8*, i8** %12, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = call i64 @inet_pton4(i8* %124, i8* %125)
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, i32* @NS_INADDRSZ, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %8, align 8
  store i32 0, i32* %14, align 4
  br label %134

133:                                              ; preds = %123, %116, %113
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %208

134:                                              ; preds = %128, %44
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %134
  %138 = load i8*, i8** %8, align 8
  %139 = load i32, i32* @NS_INT16SZ, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8*, i8** %9, align 8
  %143 = icmp ugt i8* %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %208

145:                                              ; preds = %137
  %146 = load i32, i32* %15, align 4
  %147 = lshr i32 %146, 8
  %148 = trunc i32 %147 to i8
  %149 = zext i8 %148 to i32
  %150 = and i32 %149, 255
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %8, align 8
  store i8 %151, i8* %152, align 1
  %154 = load i32, i32* %15, align 4
  %155 = trunc i32 %154 to i8
  %156 = zext i8 %155 to i32
  %157 = and i32 %156, 255
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %8, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %8, align 8
  store i8 %158, i8* %159, align 1
  br label %161

161:                                              ; preds = %145, %134
  %162 = load i8*, i8** %10, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %199

164:                                              ; preds = %161
  %165 = load i8*, i8** %8, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %171

171:                                              ; preds = %194, %164
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %18, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %175, label %197

175:                                              ; preds = %171
  %176 = load i8*, i8** %10, align 8
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %19, align 4
  %179 = sub nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %176, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = load i8*, i8** %9, align 8
  %184 = load i32, i32* %19, align 4
  %185 = sub nsw i32 0, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  store i8 %182, i8* %187, align 1
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %19, align 4
  %191 = sub nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %188, i64 %192
  store i8 0, i8* %193, align 1
  br label %194

194:                                              ; preds = %175
  %195 = load i32, i32* %19, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %19, align 4
  br label %171

197:                                              ; preds = %171
  %198 = load i8*, i8** %9, align 8
  store i8* %198, i8** %8, align 8
  br label %199

199:                                              ; preds = %197, %161
  %200 = load i8*, i8** %8, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = icmp ne i8* %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %208

204:                                              ; preds = %199
  %205 = load i8*, i8** %5, align 8
  %206 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %207 = call i32 @memcpy(i8* %205, i8* %23, i32 %206)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %208

208:                                              ; preds = %204, %203, %144, %133, %96, %86, %74, %40
  %209 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %209)
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i64 @inet_pton4(i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
