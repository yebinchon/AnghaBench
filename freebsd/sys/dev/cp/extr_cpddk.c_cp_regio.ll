; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_regio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_regio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cp_regio(%struct.TYPE_8__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %102 [
    i32 0, label %10
    i32 1, label %17
    i32 2, label %22
    i32 3, label %27
    i32 4, label %30
    i32 9, label %45
    i32 5, label %60
    i32 6, label %69
    i32 7, label %74
    i32 8, label %91
  ]

10:                                               ; preds = %4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = trunc i32 %14 to i8
  %16 = call i64 @u(i32 %13, i8 zeroext %15)
  store i64 %16, i64* %8, align 8
  br label %102

17:                                               ; preds = %4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = trunc i32 %19 to i8
  %21 = call i64 @l57(%struct.TYPE_8__* %18, i8 zeroext %20)
  store i64 %21, i64* %8, align 8
  br label %102

22:                                               ; preds = %4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = trunc i32 %24 to i8
  %26 = call i64 @l90(%struct.TYPE_8__* %23, i8 zeroext %25, i32 255)
  store i64 %26, i64* %8, align 8
  br label %102

27:                                               ; preds = %4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = call i64 @l603(%struct.TYPE_8__* %28, i32 16)
  store i64 %29, i64* %8, align 8
  br label %102

30:                                               ; preds = %4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = trunc i32 %34 to i8
  %36 = call i64 @u(i32 %33, i8 zeroext %35)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = trunc i32 %40 to i8
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i8
  %44 = call i32 @l(i32 %39, i8 zeroext %41, i8 zeroext %43)
  br label %102

45:                                               ; preds = %4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i64, i64* %8, align 8
  %52 = trunc i64 %51 to i8
  %53 = call i32 @l(i32 %48, i8 zeroext %50, i8 zeroext %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = trunc i32 %57 to i8
  %59 = call i64 @u(i32 %56, i8 zeroext %58)
  store i64 %59, i64* %8, align 8
  br label %102

60:                                               ; preds = %4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i64, i64* %8, align 8
  %67 = trunc i64 %66 to i8
  %68 = call i32 @l(i32 %63, i8 zeroext %65, i8 zeroext %67)
  br label %102

69:                                               ; preds = %4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = load i64, i64* %8, align 8
  %72 = trunc i64 %71 to i8
  %73 = call i32 @l106(%struct.TYPE_8__* %70, i32 16, i8 zeroext %72)
  br label %102

74:                                               ; preds = %4
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i64*
  store i64 %75, i64* %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %8, align 8
  br label %102

91:                                               ; preds = %4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i64, i64* %8, align 8
  %96 = trunc i64 %95 to i8
  %97 = call i32 @i(%struct.TYPE_8__* %92, i8 zeroext %94, i8 zeroext %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = trunc i32 %99 to i8
  %101 = call i64 @l57(%struct.TYPE_8__* %98, i8 zeroext %100)
  store i64 %101, i64* %8, align 8
  br label %102

102:                                              ; preds = %4, %91, %74, %69, %60, %45, %30, %27, %22, %17, %10
  %103 = load i64, i64* %8, align 8
  ret i64 %103
}

declare dso_local i64 @u(i32, i8 zeroext) #1

declare dso_local i64 @l57(%struct.TYPE_8__*, i8 zeroext) #1

declare dso_local i64 @l90(%struct.TYPE_8__*, i8 zeroext, i32) #1

declare dso_local i64 @l603(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @l(i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @l106(%struct.TYPE_8__*, i32, i8 zeroext) #1

declare dso_local i32 @i(%struct.TYPE_8__*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
