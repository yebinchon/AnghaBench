; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_inet_pton.c_inet_pton6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_inet_pton.c_inet_pton6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton6.xdigits_l = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@inet_pton6.xdigits_u = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@NS_INADDRSZ = common dso_local global i32 0, align 4
@NS_IN6ADDRSZ = common dso_local global i32 0, align 4
@NS_INT16SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @inet_pton6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton6(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  store i32* %18, i32** %7, align 8
  %19 = call i32 @memset(i32* %18, i8 signext 0, i32 16)
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 16
  store i32* %21, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 58
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %198

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %95, %80, %68, %34
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %126

42:                                               ; preds = %36
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_l, i64 0, i64 0), i8** %10, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_l, i64 0, i64 0), i32 %43)
  store i8* %44, i8** %15, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_u, i64 0, i64 0), i8** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_u, i64 0, i64 0), i32 %47)
  store i8* %48, i8** %15, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i32, i32* %14, align 4
  %54 = shl i32 %53, 4
  store i32 %54, i32* %14, align 4
  %55 = load i8*, i8** %15, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = or i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = icmp sgt i32 %65, 4
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %198

68:                                               ; preds = %52
  br label %36

69:                                               ; preds = %49
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 58
  br i1 %71, label %72, label %105

72:                                               ; preds = %69
  %73 = load i8*, i8** %4, align 8
  store i8* %73, i8** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %198

80:                                               ; preds = %76
  %81 = load i32*, i32** %7, align 8
  store i32* %81, i32** %9, align 8
  br label %36

82:                                               ; preds = %72
  %83 = load i8*, i8** %4, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %198

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32*, i32** %8, align 8
  %93 = icmp ugt i32* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %198

95:                                               ; preds = %89
  %96 = load i32, i32* %14, align 4
  %97 = ashr i32 %96, 8
  %98 = and i32 %97, 255
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  %101 = load i32, i32* %14, align 4
  %102 = and i32 %101, 255
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %36

105:                                              ; preds = %69
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 46
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* @NS_INADDRSZ, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32*, i32** %8, align 8
  %114 = icmp ule i32* %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = load i8*, i8** %11, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = call i64 @inet_pton4(i8* %116, i32* %117)
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load i32, i32* @NS_INADDRSZ, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %7, align 8
  store i32 0, i32* %13, align 4
  br label %126

125:                                              ; preds = %115, %108, %105
  store i32 0, i32* %3, align 4
  br label %198

126:                                              ; preds = %120, %36
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %126
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32*, i32** %8, align 8
  %133 = icmp ugt i32* %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %198

135:                                              ; preds = %129
  %136 = load i32, i32* %14, align 4
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, 255
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  %141 = load i32, i32* %14, align 4
  %142 = and i32 %141, 255
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %7, align 8
  store i32 %142, i32* %143, align 4
  br label %145

145:                                              ; preds = %135, %126
  %146 = load i32*, i32** %9, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %189

148:                                              ; preds = %145
  %149 = load i32*, i32** %7, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = ptrtoint i32* %149 to i64
  %152 = ptrtoint i32* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv exact i64 %153, 4
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %16, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = icmp eq i32* %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  br label %198

160:                                              ; preds = %148
  store i32 1, i32* %17, align 4
  br label %161

161:                                              ; preds = %184, %160
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %187

165:                                              ; preds = %161
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %17, align 4
  %169 = sub nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sub nsw i32 0, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  store i32 %172, i32* %177, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %17, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  store i32 0, i32* %183, align 4
  br label %184

184:                                              ; preds = %165
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %17, align 4
  br label %161

187:                                              ; preds = %161
  %188 = load i32*, i32** %8, align 8
  store i32* %188, i32** %7, align 8
  br label %189

189:                                              ; preds = %187, %145
  %190 = load i32*, i32** %7, align 8
  %191 = load i32*, i32** %8, align 8
  %192 = icmp ne i32* %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %198

194:                                              ; preds = %189
  %195 = load i32*, i32** %5, align 8
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %197 = call i32 @memcpy(i32* %195, i32* %196, i32 16)
  store i32 1, i32* %3, align 4
  br label %198

198:                                              ; preds = %194, %193, %159, %134, %125, %94, %87, %79, %67, %32
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i64 @inet_pton4(i8*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
