; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleNegateOverflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleNegateOverflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.COverflowData = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@LOCATION_MAXLEN = common dso_local global i32 0, align 4
@NUMBER_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"UBSan: Undefined Behavior in %s, negation of %s cannot be represented in type %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.COverflowData*, i64)* @HandleNegateOverflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleNegateOverflow(i32 %0, %struct.COverflowData* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.COverflowData*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.COverflowData* %1, %struct.COverflowData** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @LOCATION_MAXLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @NUMBER_MAXLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %18 = load %struct.COverflowData*, %struct.COverflowData** %5, align 8
  %19 = call i32 @ASSERT(%struct.COverflowData* %18)
  %20 = load %struct.COverflowData*, %struct.COverflowData** %5, align 8
  %21 = getelementptr inbounds %struct.COverflowData, %struct.COverflowData* %20, i32 0, i32 1
  %22 = call i64 @isAlreadyReported(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %43

25:                                               ; preds = %3
  %26 = load i32, i32* @LOCATION_MAXLEN, align 4
  %27 = load %struct.COverflowData*, %struct.COverflowData** %5, align 8
  %28 = getelementptr inbounds %struct.COverflowData, %struct.COverflowData* %27, i32 0, i32 1
  %29 = call i32 @DeserializeLocation(i8* %14, i32 %26, i32* %28)
  %30 = load i32, i32* @NUMBER_MAXLEN, align 4
  %31 = load %struct.COverflowData*, %struct.COverflowData** %5, align 8
  %32 = getelementptr inbounds %struct.COverflowData, %struct.COverflowData* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @DeserializeNumber(i8* %14, i8* %17, i32 %30, %struct.TYPE_2__* %33, i64 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.COverflowData*, %struct.COverflowData** %5, align 8
  %38 = getelementptr inbounds %struct.COverflowData, %struct.COverflowData* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @Report(i32 %36, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %17, i32 %41)
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %25, %24
  %44 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %10, align 4
  switch i32 %45, label %47 [
    i32 0, label %46
    i32 1, label %46
  ]

46:                                               ; preds = %43, %43
  ret void

47:                                               ; preds = %43
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(%struct.COverflowData*) #2

declare dso_local i64 @isAlreadyReported(i32*) #2

declare dso_local i32 @DeserializeLocation(i8*, i32, i32*) #2

declare dso_local i32 @DeserializeNumber(i8*, i8*, i32, %struct.TYPE_2__*, i64) #2

declare dso_local i32 @Report(i32, i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
