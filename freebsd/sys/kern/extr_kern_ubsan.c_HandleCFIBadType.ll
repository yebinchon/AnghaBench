; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleCFIBadType.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleCFIBadType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CCFICheckFailData = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@LOCATION_MAXLEN = common dso_local global i32 0, align 4
@CFI_ICALL = common dso_local global i64 0, align 8
@CFI_VMFCALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [114 x i8] c"UBSan: Undefined Behavior in %s, control flow integrity check for type %s failed during %s (vtable address %#lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [184 x i8] c"UBSan: Undefined Behavior in %s, control flow integrity check for type %s failed during %s (vtable address %#lx; %s vtable; from %s handler; Program Counter %#lx; Frame Pointer %#lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"unrecoverable\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"recoverable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.CCFICheckFailData*, i64, i32*, i32*, i64*, i64*)* @HandleCFIBadType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleCFIBadType(i32 %0, %struct.CCFICheckFailData* %1, i64 %2, i32* %3, i32* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.CCFICheckFailData*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.CCFICheckFailData* %1, %struct.CCFICheckFailData** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %18 = load i32, i32* @LOCATION_MAXLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load %struct.CCFICheckFailData*, %struct.CCFICheckFailData** %9, align 8
  %23 = call i32 @ASSERT(%struct.CCFICheckFailData* %22)
  %24 = load %struct.CCFICheckFailData*, %struct.CCFICheckFailData** %9, align 8
  %25 = getelementptr inbounds %struct.CCFICheckFailData, %struct.CCFICheckFailData* %24, i32 0, i32 2
  %26 = call i64 @isAlreadyReported(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  store i32 1, i32* %17, align 4
  br label %93

29:                                               ; preds = %7
  %30 = load i32, i32* @LOCATION_MAXLEN, align 4
  %31 = load %struct.CCFICheckFailData*, %struct.CCFICheckFailData** %9, align 8
  %32 = getelementptr inbounds %struct.CCFICheckFailData, %struct.CCFICheckFailData* %31, i32 0, i32 2
  %33 = call i32 @DeserializeLocation(i8* %21, i32 %30, i32* %32)
  %34 = load %struct.CCFICheckFailData*, %struct.CCFICheckFailData** %9, align 8
  %35 = getelementptr inbounds %struct.CCFICheckFailData, %struct.CCFICheckFailData* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CFI_ICALL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.CCFICheckFailData*, %struct.CCFICheckFailData** %9, align 8
  %41 = getelementptr inbounds %struct.CCFICheckFailData, %struct.CCFICheckFailData* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CFI_VMFCALL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39, %29
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.CCFICheckFailData*, %struct.CCFICheckFailData** %9, align 8
  %48 = getelementptr inbounds %struct.CCFICheckFailData, %struct.CCFICheckFailData* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.CCFICheckFailData*, %struct.CCFICheckFailData** %9, align 8
  %53 = getelementptr inbounds %struct.CCFICheckFailData, %struct.CCFICheckFailData* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @DeserializeCFICheckKind(i64 %54)
  %56 = load i64, i64* %10, align 8
  %57 = call i32 (i32, i8*, i8*, i32, i32, i64, ...) @Report(i32 %46, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %51, i32 %55, i64 %56)
  br label %92

58:                                               ; preds = %39
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** %12, align 8
  %63 = icmp ne i32* %62, null
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ true, %58 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = load %struct.CCFICheckFailData*, %struct.CCFICheckFailData** %9, align 8
  %68 = getelementptr inbounds %struct.CCFICheckFailData, %struct.CCFICheckFailData* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.CCFICheckFailData*, %struct.CCFICheckFailData** %9, align 8
  %73 = getelementptr inbounds %struct.CCFICheckFailData, %struct.CCFICheckFailData* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @DeserializeCFICheckKind(i64 %74)
  %76 = load i64, i64* %10, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)
  %87 = load i64*, i64** %13, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %14, align 8
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i32, i8*, i8*, i32, i32, i64, ...) @Report(i32 %66, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %71, i32 %75, i64 %76, i8* %81, i8* %86, i64 %88, i64 %90)
  br label %92

92:                                               ; preds = %64, %45
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %92, %28
  %94 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %17, align 4
  switch i32 %95, label %97 [
    i32 0, label %96
    i32 1, label %96
  ]

96:                                               ; preds = %93, %93
  ret void

97:                                               ; preds = %93
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(%struct.CCFICheckFailData*) #2

declare dso_local i64 @isAlreadyReported(i32*) #2

declare dso_local i32 @DeserializeLocation(i8*, i32, i32*) #2

declare dso_local i32 @Report(i32, i8*, i8*, i32, i32, i64, ...) #2

declare dso_local i32 @DeserializeCFICheckKind(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
