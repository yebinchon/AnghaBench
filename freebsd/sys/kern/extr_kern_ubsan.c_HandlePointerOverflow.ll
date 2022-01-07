; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandlePointerOverflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandlePointerOverflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPointerOverflowData = type { i32 }

@LOCATION_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"UBSan: Undefined Behavior in %s, pointer expression with base %#lx overflowed to %#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.CPointerOverflowData*, i64, i64)* @HandlePointerOverflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandlePointerOverflow(i32 %0, %struct.CPointerOverflowData* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.CPointerOverflowData*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.CPointerOverflowData* %1, %struct.CPointerOverflowData** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @LOCATION_MAXLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.CPointerOverflowData*, %struct.CPointerOverflowData** %6, align 8
  %17 = call i32 @ASSERT(%struct.CPointerOverflowData* %16)
  %18 = load %struct.CPointerOverflowData*, %struct.CPointerOverflowData** %6, align 8
  %19 = getelementptr inbounds %struct.CPointerOverflowData, %struct.CPointerOverflowData* %18, i32 0, i32 0
  %20 = call i64 @isAlreadyReported(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %32

23:                                               ; preds = %4
  %24 = load i32, i32* @LOCATION_MAXLEN, align 4
  %25 = load %struct.CPointerOverflowData*, %struct.CPointerOverflowData** %6, align 8
  %26 = getelementptr inbounds %struct.CPointerOverflowData, %struct.CPointerOverflowData* %25, i32 0, i32 0
  %27 = call i32 @DeserializeLocation(i8* %15, i32 %24, i32* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @Report(i32 %28, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i8* %15, i64 %29, i64 %30)
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %23, %22
  %33 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %33)
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %36 [
    i32 0, label %35
    i32 1, label %35
  ]

35:                                               ; preds = %32, %32
  ret void

36:                                               ; preds = %32
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(%struct.CPointerOverflowData*) #2

declare dso_local i64 @isAlreadyReported(i32*) #2

declare dso_local i32 @DeserializeLocation(i8*, i32, i32*) #2

declare dso_local i32 @Report(i32, i8*, i8*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
