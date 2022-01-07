; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_MR_GetSpanBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_MR_GetSpanBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MR_GetSpanBlock(i64 %0, i64 %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call %struct.TYPE_8__* @MR_LdSpanInfoGet(i64 %19, i32* %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %12, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call %struct.TYPE_10__* @MR_LdRaidGet(i64 %22, i32* %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %14, align 8
  store i64 0, i64* %15, align 8
  br label %25

25:                                               ; preds = %108, %5
  %26 = load i64, i64* %15, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %113

31:                                               ; preds = %25
  store i64 0, i64* %16, align 8
  br label %32

32:                                               ; preds = %104, %31
  %33 = load i64, i64* %16, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %107

39:                                               ; preds = %32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %44
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %13, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32*, i32** %11, align 8
  store i32 1, i32* %51, align 4
  %52 = load i64, i64* %15, align 8
  store i64 %52, i64* %6, align 8
  br label %115

53:                                               ; preds = %39
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %103

59:                                               ; preds = %53
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %60, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %59
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @mega_mod64(i64 %70, i64 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %65
  %77 = load i64*, i64** %9, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @mega_div64_32(i64 %84, i64 %87)
  store i64 %88, i64* %17, align 8
  %89 = load i64, i64* %17, align 8
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = shl i64 %94, %97
  store i64 %98, i64* %17, align 8
  %99 = load i64, i64* %17, align 8
  %100 = load i64*, i64** %9, align 8
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %79, %76
  %102 = load i64, i64* %15, align 8
  store i64 %102, i64* %6, align 8
  br label %115

103:                                              ; preds = %65, %59, %53
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %16, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %16, align 8
  br label %32

107:                                              ; preds = %32
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %15, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %15, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 1
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %12, align 8
  br label %25

113:                                              ; preds = %25
  %114 = load i64, i64* %15, align 8
  store i64 %114, i64* %6, align 8
  br label %115

115:                                              ; preds = %113, %101, %50
  %116 = load i64, i64* %6, align 8
  ret i64 %116
}

declare dso_local %struct.TYPE_8__* @MR_LdSpanInfoGet(i64, i32*) #1

declare dso_local %struct.TYPE_10__* @MR_LdRaidGet(i64, i32*) #1

declare dso_local i64 @mega_mod64(i64, i64) #1

declare dso_local i64 @mega_div64_32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
