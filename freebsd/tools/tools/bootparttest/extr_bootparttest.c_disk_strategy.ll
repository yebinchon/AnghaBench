; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/bootparttest/extr_bootparttest.c_disk_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/bootparttest/extr_bootparttest.c_disk_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.disk_devdesc = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"read %zu bytes from the block %lld [+%lld]\0A\00", align 1
@disk = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i64, i8*, i64*)* @disk_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_strategy(i8* %0, i32 %1, i32 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.disk_devdesc*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %17, %struct.disk_devdesc** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %52

21:                                               ; preds = %6
  %22 = load i64*, i64** %13, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64*, i64** %13, align 8
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %31 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %29, i64 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @disk, i32 0, i32 1), align 4
  %36 = load i8*, i8** %12, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %40 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @disk, i32 0, i32 0), align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i32 @pread(i32 %35, i8* %36, i64 %37, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %52

51:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %50, %20
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @printf(i8*, i64, i64, i64) #1

declare dso_local i32 @pread(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
