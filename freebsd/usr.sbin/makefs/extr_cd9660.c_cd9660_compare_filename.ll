; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_compare_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_compare_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISO_FILENAME_MAXLENGTH_BEFORE_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cd9660_compare_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_compare_filename(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %77, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ISO_FILENAME_MAXLENGTH_BEFORE_VERSION, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ISO_FILENAME_MAXLENGTH_BEFORE_VERSION, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp slt i32 %16, %18
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ false, %10 ], [ %19, %15 ]
  br i1 %21, label %22, label %78

22:                                               ; preds = %20
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %8, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %9, align 1
  %33 = load i8, i8* %8, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load i8, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %78

41:                                               ; preds = %36, %22
  %42 = load i8, i8* %8, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  store i8 32, i8* %8, align 1
  br label %61

48:                                               ; preds = %41
  %49 = load i8, i8* %9, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  store i8 32, i8* %9, align 1
  br label %60

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %55, %52
  br label %61

61:                                               ; preds = %60, %45
  br label %62

62:                                               ; preds = %61
  %63 = load i8, i8* %8, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* %9, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %169

69:                                               ; preds = %62
  %70 = load i8, i8* %8, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* %9, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sgt i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %169

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76
  br label %10

78:                                               ; preds = %40, %20
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %168

86:                                               ; preds = %78
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 46
  br i1 %93, label %94, label %168

94:                                               ; preds = %86
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %166, %94
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @ISO_FILENAME_MAXLENGTH_BEFORE_VERSION, align 4
  %102 = sub nsw i32 %101, 1
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @ISO_FILENAME_MAXLENGTH_BEFORE_VERSION, align 4
  %107 = sub nsw i32 %106, 1
  %108 = icmp slt i32 %105, %107
  br label %109

109:                                              ; preds = %104, %99
  %110 = phi i1 [ false, %99 ], [ %108, %104 ]
  br i1 %110, label %111, label %167

111:                                              ; preds = %109
  %112 = load i8*, i8** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  store i8 %116, i8* %8, align 1
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  store i8 %121, i8* %9, align 1
  %122 = load i8, i8* %8, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 59
  br i1 %124, label %125, label %130

125:                                              ; preds = %111
  %126 = load i8, i8* %9, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 59
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %167

130:                                              ; preds = %125, %111
  %131 = load i8, i8* %8, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 59
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  store i8 32, i8* %8, align 1
  br label %150

137:                                              ; preds = %130
  %138 = load i8, i8* %9, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 59
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  store i8 32, i8* %9, align 1
  br label %149

144:                                              ; preds = %137
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %144, %141
  br label %150

150:                                              ; preds = %149, %134
  br label %151

151:                                              ; preds = %150
  %152 = load i8, i8* %8, align 1
  %153 = sext i8 %152 to i32
  %154 = load i8, i8* %9, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 -1, i32* %3, align 4
  br label %169

158:                                              ; preds = %151
  %159 = load i8, i8* %8, align 1
  %160 = sext i8 %159 to i32
  %161 = load i8, i8* %9, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp sgt i32 %160, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  store i32 1, i32* %3, align 4
  br label %169

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %165
  br label %99

167:                                              ; preds = %129, %109
  br label %168

168:                                              ; preds = %167, %86, %78
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %164, %157, %75, %68
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
