; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleShiftOutOfBounds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleShiftOutOfBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CShiftOutOfBoundsData = type { %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@LOCATION_MAXLEN = common dso_local global i32 0, align 4
@NUMBER_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"UBSan: Undefined Behavior in %s, shift exponent %s is negative\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"UBSan: Undefined Behavior in %s, shift exponent %s is too large for %zu-bit type %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"UBSan: Undefined Behavior in %s, left shift of negative value %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [97 x i8] c"UBSan: Undefined Behavior in %s, left shift of %s by %s places cannot be represented in type %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.CShiftOutOfBoundsData*, i64, i64)* @HandleShiftOutOfBounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleShiftOutOfBounds(i32 %0, %struct.CShiftOutOfBoundsData* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.CShiftOutOfBoundsData*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.CShiftOutOfBoundsData* %1, %struct.CShiftOutOfBoundsData** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* @LOCATION_MAXLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @NUMBER_MAXLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i32, i32* @NUMBER_MAXLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %25 = call i32 @ASSERT(%struct.CShiftOutOfBoundsData* %24)
  %26 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %27 = getelementptr inbounds %struct.CShiftOutOfBoundsData, %struct.CShiftOutOfBoundsData* %26, i32 0, i32 2
  %28 = call i64 @isAlreadyReported(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  br label %101

31:                                               ; preds = %4
  %32 = load i32, i32* @LOCATION_MAXLEN, align 4
  %33 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %34 = getelementptr inbounds %struct.CShiftOutOfBoundsData, %struct.CShiftOutOfBoundsData* %33, i32 0, i32 2
  %35 = call i32 @DeserializeLocation(i8* %17, i32 %32, i32* %34)
  %36 = load i32, i32* @NUMBER_MAXLEN, align 4
  %37 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %38 = getelementptr inbounds %struct.CShiftOutOfBoundsData, %struct.CShiftOutOfBoundsData* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @DeserializeNumber(i8* %17, i8* %20, i32 %36, %struct.TYPE_5__* %39, i64 %40)
  %42 = load i32, i32* @NUMBER_MAXLEN, align 4
  %43 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %44 = getelementptr inbounds %struct.CShiftOutOfBoundsData, %struct.CShiftOutOfBoundsData* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @DeserializeNumber(i8* %17, i8* %23, i32 %42, %struct.TYPE_5__* %45, i64 %46)
  %48 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %49 = getelementptr inbounds %struct.CShiftOutOfBoundsData, %struct.CShiftOutOfBoundsData* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @isNegativeNumber(i8* %17, %struct.TYPE_5__* %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %31
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i32, i8*, i8*, i8*, ...) @Report(i32 %55, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %23)
  br label %100

57:                                               ; preds = %31
  %58 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %59 = getelementptr inbounds %struct.CShiftOutOfBoundsData, %struct.CShiftOutOfBoundsData* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %63 = getelementptr inbounds %struct.CShiftOutOfBoundsData, %struct.CShiftOutOfBoundsData* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = call i8* @zDeserializeTypeWidth(%struct.TYPE_5__* %64)
  %66 = call i64 @isShiftExponentTooLarge(i8* %17, %struct.TYPE_5__* %60, i64 %61, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %57
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %71 = getelementptr inbounds %struct.CShiftOutOfBoundsData, %struct.CShiftOutOfBoundsData* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i8* @zDeserializeTypeWidth(%struct.TYPE_5__* %72)
  %74 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %75 = getelementptr inbounds %struct.CShiftOutOfBoundsData, %struct.CShiftOutOfBoundsData* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, i8*, i8*, ...) @Report(i32 %69, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %23, i8* %73, i32 %78)
  br label %99

80:                                               ; preds = %57
  %81 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %82 = getelementptr inbounds %struct.CShiftOutOfBoundsData, %struct.CShiftOutOfBoundsData* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i64 @isNegativeNumber(i8* %17, %struct.TYPE_5__* %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (i32, i8*, i8*, i8*, ...) @Report(i32 %88, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %17, i8* %20)
  br label %98

90:                                               ; preds = %80
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.CShiftOutOfBoundsData*, %struct.CShiftOutOfBoundsData** %6, align 8
  %93 = getelementptr inbounds %struct.CShiftOutOfBoundsData, %struct.CShiftOutOfBoundsData* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, i8*, i8*, ...) @Report(i32 %91, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i64 0, i64 0), i8* %17, i8* %20, i8* %23, i32 %96)
  br label %98

98:                                               ; preds = %90, %87
  br label %99

99:                                               ; preds = %98, %68
  br label %100

100:                                              ; preds = %99, %54
  store i32 0, i32* %13, align 4
  br label %101

101:                                              ; preds = %100, %30
  %102 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %13, align 4
  switch i32 %103, label %105 [
    i32 0, label %104
    i32 1, label %104
  ]

104:                                              ; preds = %101, %101
  ret void

105:                                              ; preds = %101
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(%struct.CShiftOutOfBoundsData*) #2

declare dso_local i64 @isAlreadyReported(i32*) #2

declare dso_local i32 @DeserializeLocation(i8*, i32, i32*) #2

declare dso_local i32 @DeserializeNumber(i8*, i8*, i32, %struct.TYPE_5__*, i64) #2

declare dso_local i64 @isNegativeNumber(i8*, %struct.TYPE_5__*, i64) #2

declare dso_local i32 @Report(i32, i8*, i8*, i8*, ...) #2

declare dso_local i64 @isShiftExponentTooLarge(i8*, %struct.TYPE_5__*, i64, i8*) #2

declare dso_local i8* @zDeserializeTypeWidth(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
