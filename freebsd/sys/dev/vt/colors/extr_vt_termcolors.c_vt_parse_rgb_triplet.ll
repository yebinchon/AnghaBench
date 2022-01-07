; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/colors/extr_vt_termcolors.c_vt_parse_rgb_triplet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/colors/extr_vt_termcolors.c_vt_parse_rgb_triplet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @vt_parse_rgb_triplet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_parse_rgb_triplet(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 35
  br i1 %17, label %18, label %47

18:                                               ; preds = %4
  %19 = load i8*, i8** %11, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = icmp ne i32 %20, 7
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %143

23:                                               ; preds = %18
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = call i64 @strtoul(i8* %25, i8** %12, i32 16)
  store i64 %26, i64* %10, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %143

32:                                               ; preds = %23
  %33 = load i64, i64* %10, align 8
  %34 = lshr i64 %33, 16
  %35 = and i64 %34, 255
  %36 = trunc i64 %35 to i8
  %37 = load i8*, i8** %7, align 8
  store i8 %36, i8* %37, align 1
  %38 = load i64, i64* %10, align 8
  %39 = lshr i64 %38, 8
  %40 = and i64 %39, 255
  %41 = trunc i64 %40 to i8
  %42 = load i8*, i8** %8, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i64, i64* %10, align 8
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i8
  %46 = load i8*, i8** %9, align 8
  store i8 %45, i8* %46, align 1
  store i32 0, i32* %5, align 4
  br label %143

47:                                               ; preds = %4
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @strtoul(i8* %48, i8** %12, i32 10)
  store i64 %49, i64* %10, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  br label %143

54:                                               ; preds = %47
  %55 = load i64, i64* %10, align 8
  %56 = icmp ugt i64 %55, 255
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %143

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = and i64 %59, 255
  %61 = trunc i64 %60 to i8
  %62 = load i8*, i8** %7, align 8
  store i8 %61, i8* %62, align 1
  %63 = load i8*, i8** %12, align 8
  store i8* %63, i8** %11, align 8
  br label %64

64:                                               ; preds = %76, %58
  %65 = load i8*, i8** %11, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 44
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 32
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i1 [ true, %64 ], [ %73, %69 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %11, align 8
  br label %64

79:                                               ; preds = %74
  %80 = load i8*, i8** %11, align 8
  %81 = call i64 @strtoul(i8* %80, i8** %12, i32 10)
  store i64 %81, i64* %10, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 -1, i32* %5, align 4
  br label %143

86:                                               ; preds = %79
  %87 = load i64, i64* %10, align 8
  %88 = icmp ugt i64 %87, 255
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 -1, i32* %5, align 4
  br label %143

90:                                               ; preds = %86
  %91 = load i64, i64* %10, align 8
  %92 = and i64 %91, 255
  %93 = trunc i64 %92 to i8
  %94 = load i8*, i8** %8, align 8
  store i8 %93, i8* %94, align 1
  %95 = load i8*, i8** %12, align 8
  store i8* %95, i8** %11, align 8
  br label %96

96:                                               ; preds = %108, %90
  %97 = load i8*, i8** %11, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 44
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i8*, i8** %11, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 32
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ true, %96 ], [ %105, %101 ]
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %11, align 8
  br label %96

111:                                              ; preds = %106
  %112 = load i8*, i8** %11, align 8
  %113 = call i64 @strtoul(i8* %112, i8** %12, i32 10)
  store i64 %113, i64* %10, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = icmp eq i8* %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 -1, i32* %5, align 4
  br label %143

118:                                              ; preds = %111
  %119 = load i64, i64* %10, align 8
  %120 = icmp ugt i64 %119, 255
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 -1, i32* %5, align 4
  br label %143

122:                                              ; preds = %118
  %123 = load i64, i64* %10, align 8
  %124 = and i64 %123, 255
  %125 = trunc i64 %124 to i8
  %126 = load i8*, i8** %9, align 8
  store i8 %125, i8* %126, align 1
  %127 = load i8*, i8** %12, align 8
  store i8* %127, i8** %11, align 8
  br label %128

128:                                              ; preds = %133, %122
  %129 = load i8*, i8** %11, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 32
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i8*, i8** %11, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %11, align 8
  br label %128

136:                                              ; preds = %128
  %137 = load i8*, i8** %11, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 -1, i32* %5, align 4
  br label %143

142:                                              ; preds = %136
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %142, %141, %121, %117, %89, %85, %57, %53, %32, %31, %22
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
