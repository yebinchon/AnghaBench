; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nghook/extr_main.c_WriteAscii.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nghook/extr_main.c_WriteAscii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%04x:  \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@outfd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @WriteAscii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteAscii(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca [100 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %150, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %153

13:                                               ; preds = %9
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %14, i32 100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %58, %13
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %61

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %33 = call i32 @strlen(i8* %32)
  %34 = sext i32 %33 to i64
  %35 = sub i64 100, %34
  %36 = trunc i64 %35 to i32
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %57

45:                                               ; preds = %20
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %48 = call i32 @strlen(i8* %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %52 = call i32 @strlen(i8* %51)
  %53 = sext i32 %52 to i64
  %54 = sub i64 100, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %45, %26
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %17

61:                                               ; preds = %17
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %64 = call i32 @strlen(i8* %63)
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %68 = call i32 @strlen(i8* %67)
  %69 = sext i32 %68 to i64
  %70 = sub i64 100, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %66, i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %130, %61
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 16
  br i1 %75, label %76, label %133

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %76
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @isprint(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  br label %101

100:                                              ; preds = %82
  br label %101

101:                                              ; preds = %100, %92
  %102 = phi i32 [ %99, %92 ], [ 46, %100 ]
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %5, align 1
  %104 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %105 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %106 = call i32 @strlen(i8* %105)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %110 = call i32 @strlen(i8* %109)
  %111 = sext i32 %110 to i64
  %112 = sub i64 100, %111
  %113 = trunc i64 %112 to i32
  %114 = load i8, i8* %5, align 1
  %115 = sext i8 %114 to i32
  %116 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %108, i32 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  br label %129

117:                                              ; preds = %76
  %118 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %119 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %120 = call i32 @strlen(i8* %119)
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %124 = call i32 @strlen(i8* %123)
  %125 = sext i32 %124 to i64
  %126 = sub i64 100, %125
  %127 = trunc i64 %126 to i32
  %128 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %122, i32 %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %129

129:                                              ; preds = %117, %101
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %73

133:                                              ; preds = %73
  %134 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %135 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %136 = call i32 @strlen(i8* %135)
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %140 = call i32 @strlen(i8* %139)
  %141 = sext i32 %140 to i64
  %142 = sub i64 100, %141
  %143 = trunc i64 %142 to i32
  %144 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %138, i32 %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %145 = load i32, i32* @outfd, align 4
  %146 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %147 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %148 = call i32 @strlen(i8* %147)
  %149 = call i32 @write(i32 %145, i8* %146, i32 %148)
  br label %150

150:                                              ; preds = %133
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 16
  store i32 %152, i32* %8, align 4
  br label %9

153:                                              ; preds = %9
  store i8 10, i8* %5, align 1
  %154 = load i32, i32* @outfd, align 4
  %155 = call i32 @write(i32 %154, i8* %5, i32 1)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
