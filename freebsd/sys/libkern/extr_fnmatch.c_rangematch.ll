; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_fnmatch.c_rangematch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_fnmatch.c_rangematch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FNM_CASEFOLD = common dso_local global i32 0, align 4
@FNM_NOESCAPE = common dso_local global i32 0, align 4
@EOS = common dso_local global i8 0, align 1
@RANGE_ERROR = common dso_local global i32 0, align 4
@FNM_PATHNAME = common dso_local global i32 0, align 4
@RANGE_NOMATCH = common dso_local global i32 0, align 4
@RANGE_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8, i32, i8**)* @rangematch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rangematch(i8* %0, i8 signext %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 33
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 94
  br label %23

23:                                               ; preds = %18, %4
  %24 = phi i1 [ true, %4 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %10, align 4
  br i1 %24, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FNM_CASEFOLD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8, i8* %7, align 1
  %36 = call signext i8 @tolower(i8 zeroext %35)
  store i8 %36, i8* %7, align 1
  br label %37

37:                                               ; preds = %34, %29
  store i32 0, i32* %11, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = load i8, i8* %38, align 1
  store i8 %40, i8* %12, align 1
  br label %41

41:                                               ; preds = %152, %37
  %42 = load i8, i8* %12, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 92
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @FNM_NOESCAPE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  %53 = load i8, i8* %51, align 1
  store i8 %53, i8* %12, align 1
  br label %54

54:                                               ; preds = %50, %45, %41
  %55 = load i8, i8* %12, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @EOS, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @RANGE_ERROR, align 4
  store i32 %61, i32* %5, align 4
  br label %172

62:                                               ; preds = %54
  %63 = load i8, i8* %12, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 47
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @FNM_PATHNAME, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @RANGE_NOMATCH, align 4
  store i32 %72, i32* %5, align 4
  br label %172

73:                                               ; preds = %66, %62
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @FNM_CASEFOLD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8, i8* %12, align 1
  %80 = call signext i8 @tolower(i8 zeroext %79)
  store i8 %80, i8* %12, align 1
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 45
  br i1 %85, label %86, label %143

86:                                               ; preds = %81
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  store i8 %89, i8* %13, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* @EOS, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %143

94:                                               ; preds = %86
  %95 = load i8, i8* %13, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 93
  br i1 %97, label %98, label %143

98:                                               ; preds = %94
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  store i8* %100, i8** %6, align 8
  %101 = load i8, i8* %13, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 92
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @FNM_NOESCAPE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  %112 = load i8, i8* %110, align 1
  store i8 %112, i8* %13, align 1
  br label %113

113:                                              ; preds = %109, %104, %98
  %114 = load i8, i8* %13, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* @EOS, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @RANGE_ERROR, align 4
  store i32 %120, i32* %5, align 4
  br label %172

121:                                              ; preds = %113
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @FNM_CASEFOLD, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i8, i8* %13, align 1
  %128 = call signext i8 @tolower(i8 zeroext %127)
  store i8 %128, i8* %13, align 1
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i8, i8* %12, align 1
  %131 = sext i8 %130 to i32
  %132 = load i8, i8* %7, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sle i32 %131, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load i8, i8* %7, align 1
  %137 = sext i8 %136 to i32
  %138 = load i8, i8* %13, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp sle i32 %137, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 1, i32* %11, align 4
  br label %142

142:                                              ; preds = %141, %135, %129
  br label %151

143:                                              ; preds = %94, %86, %81
  %144 = load i8, i8* %12, align 1
  %145 = sext i8 %144 to i32
  %146 = load i8, i8* %7, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i32 1, i32* %11, align 4
  br label %150

150:                                              ; preds = %149, %143
  br label %151

151:                                              ; preds = %150, %142
  br label %152

152:                                              ; preds = %151
  %153 = load i8*, i8** %6, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %6, align 8
  %155 = load i8, i8* %153, align 1
  store i8 %155, i8* %12, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 93
  br i1 %157, label %41, label %158

158:                                              ; preds = %152
  %159 = load i8*, i8** %6, align 8
  %160 = ptrtoint i8* %159 to i64
  %161 = inttoptr i64 %160 to i8*
  %162 = load i8**, i8*** %9, align 8
  store i8* %161, i8** %162, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = load i32, i32* @RANGE_NOMATCH, align 4
  br label %170

168:                                              ; preds = %158
  %169 = load i32, i32* @RANGE_MATCH, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %170, %119, %71, %60
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local signext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
