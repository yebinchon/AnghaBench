; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_hdlc.c_hdlc_Detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_hdlc.c_hdlc_Detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frameheader = type { i32, i32* }

@FrameHeaders = common dso_local global %struct.frameheader* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdlc_Detect(i32** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.frameheader*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %12

12:                                               ; preds = %76, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %82

15:                                               ; preds = %12
  %16 = load %struct.frameheader*, %struct.frameheader** @FrameHeaders, align 8
  store %struct.frameheader* %16, %struct.frameheader** %8, align 8
  br label %17

17:                                               ; preds = %73, %15
  %18 = load %struct.frameheader*, %struct.frameheader** %8, align 8
  %19 = getelementptr inbounds %struct.frameheader, %struct.frameheader* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.frameheader*, %struct.frameheader** %8, align 8
  %27 = getelementptr inbounds %struct.frameheader, %struct.frameheader* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.frameheader*, %struct.frameheader** %8, align 8
  %32 = getelementptr inbounds %struct.frameheader, %struct.frameheader* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i32* [ %29, %25 ], [ %33, %30 ]
  store i32* %35, i32** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.frameheader*, %struct.frameheader** %8, align 8
  %40 = getelementptr inbounds %struct.frameheader, %struct.frameheader* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  br label %47

43:                                               ; preds = %34
  %44 = load %struct.frameheader*, %struct.frameheader** %8, align 8
  %45 = getelementptr inbounds %struct.frameheader, %struct.frameheader* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i32 [ %42, %38 ], [ %46, %43 ]
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %10, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* %10, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* %10, align 8
  br label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i64 [ %55, %54 ], [ %58, %56 ]
  store i64 %60, i64* %11, align 8
  %61 = load i32**, i32*** %5, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @memcmp(i32* %62, i32* %63, i64 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %83

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.frameheader*, %struct.frameheader** %8, align 8
  %75 = getelementptr inbounds %struct.frameheader, %struct.frameheader* %74, i32 1
  store %struct.frameheader* %75, %struct.frameheader** %8, align 8
  br label %17

76:                                               ; preds = %17
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %6, align 4
  %79 = load i32**, i32*** %5, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %79, align 8
  br label %12

82:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %67
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
