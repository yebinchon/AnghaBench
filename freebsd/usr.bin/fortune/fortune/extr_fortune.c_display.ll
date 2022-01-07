; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i8 }

@BUFSIZ = common dso_local global i32 0, align 4
@Seekpts = common dso_local global i32* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@Fort_len = common dso_local global i64 0, align 8
@STR_ROTATED = common dso_local global i32 0, align 4
@STR_COMMENTS = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load i32, i32* @BUFSIZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = call i32 @open_fp(%struct.TYPE_5__* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @Seekpts, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SEEK_SET, align 4
  %20 = call i32 @fseeko(i32 %15, i32 %18, i32 %19)
  store i64 0, i64* @Fort_len, align 8
  br label %21

21:                                               ; preds = %121, %1
  %22 = trunc i64 %8 to i32
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @fgets(i8* %10, i32 %22, i32 %25)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = bitcast %struct.TYPE_6__* %30 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = call i32 @STR_ENDSTRING(i8* %10, i64 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %28, %21
  %37 = phi i1 [ false, %21 ], [ %35, %28 ]
  br i1 %37, label %38, label %124

38:                                               ; preds = %36
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @STR_ROTATED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %38
  store i8* %10, i8** %3, align 8
  br label %47

47:                                               ; preds = %85, %46
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %4, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %47
  %53 = load i8, i8* %4, align 1
  %54 = call i64 @isascii(i8 zeroext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %52
  %57 = load i8, i8* %4, align 1
  %58 = call i64 @isupper(i8 zeroext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i8, i8* %4, align 1
  %62 = zext i8 %61 to i32
  %63 = sub nsw i32 %62, 65
  %64 = add nsw i32 %63, 13
  %65 = srem i32 %64, 26
  %66 = add nsw i32 65, %65
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %3, align 8
  store i8 %67, i8* %68, align 1
  br label %83

69:                                               ; preds = %56
  %70 = load i8, i8* %4, align 1
  %71 = call i64 @islower(i8 zeroext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i8, i8* %4, align 1
  %75 = zext i8 %74 to i32
  %76 = sub nsw i32 %75, 97
  %77 = add nsw i32 %76, 13
  %78 = srem i32 %77, 26
  %79 = add nsw i32 97, %78
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %3, align 8
  store i8 %80, i8* %81, align 1
  br label %82

82:                                               ; preds = %73, %69
  br label %83

83:                                               ; preds = %82, %60
  br label %84

84:                                               ; preds = %83, %52
  br label %85

85:                                               ; preds = %84
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %3, align 8
  br label %47

88:                                               ; preds = %47
  br label %89

89:                                               ; preds = %88, %38
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @STR_COMMENTS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %89
  %98 = getelementptr inbounds i8, i8* %10, i64 0
  %99 = load i8, i8* %98, align 16
  %100 = sext i8 %99 to i32
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i8, i8* %103, align 4
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %100, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %97
  %108 = getelementptr inbounds i8, i8* %10, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i8, i8* %113, align 4
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %110, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %121

118:                                              ; preds = %107, %97, %89
  %119 = load i32, i32* @stdout, align 4
  %120 = call i32 @fputs(i8* %10, i32 %119)
  br label %121

121:                                              ; preds = %118, %117
  %122 = load i64, i64* @Fort_len, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* @Fort_len, align 8
  br label %21

124:                                              ; preds = %36
  %125 = load i32, i32* @stdout, align 4
  %126 = call i32 @fflush(i32 %125)
  %127 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %127)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open_fp(%struct.TYPE_5__*) #2

declare dso_local i32 @fseeko(i32, i32, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i32 @STR_ENDSTRING(i8*, i64) #2

declare dso_local i64 @isascii(i8 zeroext) #2

declare dso_local i64 @isupper(i8 zeroext) #2

declare dso_local i64 @islower(i8 zeroext) #2

declare dso_local i32 @fputs(i8*, i32) #2

declare dso_local i32 @fflush(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
