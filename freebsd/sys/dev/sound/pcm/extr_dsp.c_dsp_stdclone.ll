; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_stdclone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_stdclone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENODEV = common dso_local global i32 0, align 4
@dsp_umax = common dso_local global i32 0, align 4
@dsp_cmax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32*, i32*)* @dsp_stdclone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_stdclone(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %14, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i64, i64* %14, align 8
  %20 = call i64 @bcmp(i8* %17, i8* %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @ENODEV, align 4
  store i32 %23, i32* %7, align 4
  br label %164

24:                                               ; preds = %6
  %25 = load i64, i64* %14, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isdigit(i8 signext %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @ENODEV, align 4
  store i32 %33, i32* %7, align 4
  br label %164

34:                                               ; preds = %24
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %14, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 48
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i64 @bcmp(i8* %49, i8* %50, i64 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENODEV, align 4
  store i32 %55, i32* %7, align 4
  br label %164

56:                                               ; preds = %47, %41, %34
  %57 = load i32*, i32** %12, align 8
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %81, %56
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isdigit(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 10
  store i32 %66, i32* %64, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = sub nsw i32 %69, 48
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @dsp_umax, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i32, i32* @ENODEV, align 4
  store i32 %79, i32* %7, align 4
  br label %164

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  br label %58

84:                                               ; preds = %58
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @ENODEV, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = phi i32 [ 0, %92 ], [ %94, %93 ]
  store i32 %96, i32* %7, align 4
  br label %164

97:                                               ; preds = %84
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i64, i64* %14, align 8
  %101 = call i64 @bcmp(i8* %98, i8* %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %97
  %104 = load i8*, i8** %8, align 8
  %105 = load i64, i64* %14, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @isdigit(i8 signext %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103, %97
  %111 = load i32, i32* @ENODEV, align 4
  store i32 %111, i32* %7, align 4
  br label %164

112:                                              ; preds = %103
  %113 = load i64, i64* %14, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 %113
  store i8* %115, i8** %8, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 48
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @ENODEV, align 4
  store i32 %127, i32* %7, align 4
  br label %164

128:                                              ; preds = %120, %112
  %129 = load i32*, i32** %13, align 8
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %153, %128
  %131 = load i8*, i8** %8, align 8
  %132 = load i8, i8* %131, align 1
  %133 = call i64 @isdigit(i8 signext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %130
  %136 = load i32*, i32** %13, align 8
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %137, 10
  store i32 %138, i32* %136, align 4
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = sub nsw i32 %141, 48
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %142
  store i32 %145, i32* %143, align 4
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @dsp_cmax, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %135
  %151 = load i32, i32* @ENODEV, align 4
  store i32 %151, i32* %7, align 4
  br label %164

152:                                              ; preds = %135
  br label %153

153:                                              ; preds = %152
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %8, align 8
  br label %130

156:                                              ; preds = %130
  %157 = load i8*, i8** %8, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* @ENODEV, align 4
  store i32 %162, i32* %7, align 4
  br label %164

163:                                              ; preds = %156
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %163, %161, %150, %126, %110, %95, %78, %54, %32, %22
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @bcmp(i8*, i8*, i64) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
