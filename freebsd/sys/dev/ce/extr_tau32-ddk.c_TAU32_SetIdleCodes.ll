; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_SetIdleCodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_SetIdleCodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TAU32_SetIdleCodes(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 2
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 31, i32 63
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %36, %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp sgt i32 %20, 15
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 255
  br i1 %29, label %31, label %30

30:                                               ; preds = %22, %14
  br label %32

31:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %112

32:                                               ; preds = %30
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %7, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %14

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = call i32 @h2LrH3(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 31, i32 63
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %100, %37
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp sle i32 %53, 15
  br i1 %54, label %55, label %77

55:                                               ; preds = %47
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sdiv i32 %59, 32
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = srem i32 %64, 32
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %69, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %55, %47
  br label %96

78:                                               ; preds = %55
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sdiv i32 %87, 32
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = srem i32 %92, 32
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8 %83, i8* %95, align 1
  store i32 1, i32* %6, align 4
  br label %96

96:                                               ; preds = %78, %77
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %7, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %47

101:                                              ; preds = %96
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  br label %108

105:                                              ; preds = %101
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = call i32 @GLE_s4(%struct.TYPE_4__* %106, i32 -1)
  br label %108

108:                                              ; preds = %105, %104
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = call i32 @uYS5N2(i32* %110)
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %31
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @h2LrH3(i32*) #1

declare dso_local i32 @GLE_s4(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @uYS5N2(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
