; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_sbuf_print_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_sbuf_print_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%4d | \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i64*, i32, i32, i32)* @ixl_sbuf_print_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_sbuf_print_bytes(%struct.sbuf* %0, i64* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i64*, i64** %7, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %5
  br label %153

25:                                               ; preds = %21
  store i32 16, i32* %16, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %16, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %16, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %17, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %17, align 4
  br label %37

37:                                               ; preds = %34, %25
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %150, %37
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %153

42:                                               ; preds = %38
  %43 = load i32, i32* %18, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %17, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %18, align 4
  br label %54

52:                                               ; preds = %45, %42
  %53 = load i32, i32* %16, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %14, align 4
  %56 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %16, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %57, %60
  %62 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %79, %54
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %16, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %69, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %63

82:                                               ; preds = %63
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %96, %86
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %14, align 4
  %91 = sub nsw i32 %89, %90
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %95 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %87

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %82
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %105 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %150

106:                                              ; preds = %100
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %146, %106
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %149

111:                                              ; preds = %107
  %112 = load i64*, i64** %7, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %16, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %112, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i8
  store i8 %121, i8* %15, align 1
  %122 = load i8, i8* %15, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp slt i32 %123, 32
  br i1 %124, label %129, label %125

125:                                              ; preds = %111
  %126 = load i8, i8* %15, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sgt i32 %127, 126
  br i1 %128, label %129, label %132

129:                                              ; preds = %125, %111
  %130 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %131 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %137

132:                                              ; preds = %125
  %133 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %134 = load i8, i8* %15, align 1
  %135 = sext i8 %134 to i32
  %136 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %14, align 4
  %140 = sub nsw i32 %139, 1
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %144 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %137
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %107

149:                                              ; preds = %107
  br label %150

150:                                              ; preds = %149, %103
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %38

153:                                              ; preds = %24, %38
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
