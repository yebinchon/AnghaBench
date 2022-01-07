; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pcfclock.c_pcfclock_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pcfclock.c_pcfclock_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pcfclock_data* }
%struct.pcfclock_data = type { i32 }

@CLOCK_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIT_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i8*, i32)* @pcfclock_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcfclock_read_data(%struct.cdev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcfclock_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.cdev*, %struct.cdev** %5, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load %struct.pcfclock_data*, %struct.pcfclock_data** %15, align 8
  store %struct.pcfclock_data* %16, %struct.pcfclock_data** %8, align 8
  %17 = load %struct.pcfclock_data*, %struct.pcfclock_data** %8, align 8
  %18 = getelementptr inbounds %struct.pcfclock_data, %struct.pcfclock_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 3
  %25 = ashr i32 %24, 2
  %26 = add nsw i32 %25, 1
  %27 = call i32 @bzero(i8* %22, i32 %26)
  store i8 100, i8* %12, align 1
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %74, %3
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i32, i32* @CLOCK_OK, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i8, i8* %12, align 1
  %38 = add i8 %37, -1
  store i8 %38, i8* %12, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sgt i32 %39, 0
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ %40, %36 ]
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = call i32 @DELAY(i32 100)
  br label %33

45:                                               ; preds = %41
  %46 = load i8, i8* %12, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @EIO, align 4
  store i32 %49, i32* %4, align 4
  br label %78

50:                                               ; preds = %45
  store i8 100, i8* %12, align 1
  %51 = call i32 @DELAY(i32 500)
  %52 = load i32, i32* %11, align 4
  %53 = ashr i32 %52, 2
  store i32 %53, i32* %13, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = shl i32 %59, 1
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %57, align 1
  %62 = load i64, i64* @BIT_SET, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %50
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = or i32 %70, 1
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %68, align 1
  br label %73

73:                                               ; preds = %64, %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %28

77:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %48
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
