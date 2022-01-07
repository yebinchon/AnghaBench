; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleOverflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleOverflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.COverflowData = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@LOCATION_MAXLEN = common dso_local global i32 0, align 4
@NUMBER_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"UBSan: Undefined Behavior in %s, %s integer overflow: %s %s %s cannot be represented in type %s\0A\00", align 1
@NUMBER_SIGNED_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.COverflowData*, i64, i64, i8*)* @HandleOverflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleOverflow(i32 %0, %struct.COverflowData* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.COverflowData*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.COverflowData* %1, %struct.COverflowData** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load i32, i32* @LOCATION_MAXLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @NUMBER_MAXLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = load i32, i32* @NUMBER_MAXLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %26 = load %struct.COverflowData*, %struct.COverflowData** %7, align 8
  %27 = call i32 @ASSERT(%struct.COverflowData* %26)
  %28 = load %struct.COverflowData*, %struct.COverflowData** %7, align 8
  %29 = getelementptr inbounds %struct.COverflowData, %struct.COverflowData* %28, i32 0, i32 1
  %30 = call i64 @isAlreadyReported(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  br label %68

33:                                               ; preds = %5
  %34 = load i32, i32* @LOCATION_MAXLEN, align 4
  %35 = load %struct.COverflowData*, %struct.COverflowData** %7, align 8
  %36 = getelementptr inbounds %struct.COverflowData, %struct.COverflowData* %35, i32 0, i32 1
  %37 = call i32 @DeserializeLocation(i8* %19, i32 %34, i32* %36)
  %38 = load i32, i32* @NUMBER_MAXLEN, align 4
  %39 = load %struct.COverflowData*, %struct.COverflowData** %7, align 8
  %40 = getelementptr inbounds %struct.COverflowData, %struct.COverflowData* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @DeserializeNumber(i8* %19, i8* %22, i32 %38, %struct.TYPE_2__* %41, i64 %42)
  %44 = load i32, i32* @NUMBER_MAXLEN, align 4
  %45 = load %struct.COverflowData*, %struct.COverflowData** %7, align 8
  %46 = getelementptr inbounds %struct.COverflowData, %struct.COverflowData* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @DeserializeNumber(i8* %19, i8* %25, i32 %44, %struct.TYPE_2__* %47, i64 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.COverflowData*, %struct.COverflowData** %7, align 8
  %52 = getelementptr inbounds %struct.COverflowData, %struct.COverflowData* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NUMBER_SIGNED_BIT, align 4
  %57 = call i64 @ISSET(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.COverflowData*, %struct.COverflowData** %7, align 8
  %63 = getelementptr inbounds %struct.COverflowData, %struct.COverflowData* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @Report(i32 %50, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %60, i8* %22, i8* %61, i8* %25, i32 %66)
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %33, %32
  %69 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %15, align 4
  switch i32 %70, label %72 [
    i32 0, label %71
    i32 1, label %71
  ]

71:                                               ; preds = %68, %68
  ret void

72:                                               ; preds = %68
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(%struct.COverflowData*) #2

declare dso_local i64 @isAlreadyReported(i32*) #2

declare dso_local i32 @DeserializeLocation(i8*, i32, i32*) #2

declare dso_local i32 @DeserializeNumber(i8*, i8*, i32, %struct.TYPE_2__*, i64) #2

declare dso_local i32 @Report(i32, i8*, i8*, i8*, i8*, i8*, i8*, i32) #2

declare dso_local i64 @ISSET(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
