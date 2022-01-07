; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleAlignmentAssumption.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleAlignmentAssumption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CAlignmentAssumptionData = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@LOCATION_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"UBSan: Undefined Behavior in %s, alignment assumption of %#lx for pointer %#lx (offset %#lx), asumption made in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"UBSan: Undefined Behavior in %s, alignment assumption of %#lx for pointer %#lx (offset %#lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.CAlignmentAssumptionData*, i64, i64, i64)* @HandleAlignmentAssumption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleAlignmentAssumption(i32 %0, %struct.CAlignmentAssumptionData* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.CAlignmentAssumptionData*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.CAlignmentAssumptionData* %1, %struct.CAlignmentAssumptionData** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @LOCATION_MAXLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @LOCATION_MAXLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = load %struct.CAlignmentAssumptionData*, %struct.CAlignmentAssumptionData** %7, align 8
  %24 = call i32 @ASSERT(%struct.CAlignmentAssumptionData* %23)
  %25 = load %struct.CAlignmentAssumptionData*, %struct.CAlignmentAssumptionData** %7, align 8
  %26 = getelementptr inbounds %struct.CAlignmentAssumptionData, %struct.CAlignmentAssumptionData* %25, i32 0, i32 1
  %27 = call i64 @isAlreadyReported(%struct.TYPE_3__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  br label %60

30:                                               ; preds = %5
  %31 = load i32, i32* @LOCATION_MAXLEN, align 4
  %32 = load %struct.CAlignmentAssumptionData*, %struct.CAlignmentAssumptionData** %7, align 8
  %33 = getelementptr inbounds %struct.CAlignmentAssumptionData, %struct.CAlignmentAssumptionData* %32, i32 0, i32 1
  %34 = call i32 @DeserializeLocation(i8* %19, i32 %31, %struct.TYPE_3__* %33)
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %14, align 8
  %38 = load %struct.CAlignmentAssumptionData*, %struct.CAlignmentAssumptionData** %7, align 8
  %39 = getelementptr inbounds %struct.CAlignmentAssumptionData, %struct.CAlignmentAssumptionData* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %30
  %44 = load i32, i32* @LOCATION_MAXLEN, align 4
  %45 = load %struct.CAlignmentAssumptionData*, %struct.CAlignmentAssumptionData** %7, align 8
  %46 = getelementptr inbounds %struct.CAlignmentAssumptionData, %struct.CAlignmentAssumptionData* %45, i32 0, i32 0
  %47 = call i32 @DeserializeLocation(i8* %22, i32 %44, %struct.TYPE_3__* %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 (i32, i8*, i8*, i64, i64, i64, ...) @Report(i32 %48, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i8* %19, i64 %49, i64 %50, i64 %51, i8* %22)
  br label %59

53:                                               ; preds = %30
  %54 = load i32, i32* %6, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 (i32, i8*, i8*, i64, i64, i64, ...) @Report(i32 %54, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i8* %19, i64 %55, i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %53, %43
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %59, %29
  %61 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %15, align 4
  switch i32 %62, label %64 [
    i32 0, label %63
    i32 1, label %63
  ]

63:                                               ; preds = %60, %60
  ret void

64:                                               ; preds = %60
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(%struct.CAlignmentAssumptionData*) #2

declare dso_local i64 @isAlreadyReported(%struct.TYPE_3__*) #2

declare dso_local i32 @DeserializeLocation(i8*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @Report(i32, i8*, i8*, i64, i64, i64, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
