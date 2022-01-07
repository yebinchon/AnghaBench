; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pcfclock.c_pcfclock_write_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pcfclock.c_pcfclock_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pcfclock_data* }
%struct.pcfclock_data = type { i32 }

@AFC_HI = common dso_local global i32 0, align 4
@AFC_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdev*, i8)* @pcfclock_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcfclock_write_cmd(%struct.cdev* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.pcfclock_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  store i8 %1, i8* %4, align 1
  %10 = load %struct.cdev*, %struct.cdev** %3, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load %struct.pcfclock_data*, %struct.pcfclock_data** %11, align 8
  store %struct.pcfclock_data* %12, %struct.pcfclock_data** %5, align 8
  %13 = load %struct.pcfclock_data*, %struct.pcfclock_data** %5, align 8
  %14 = getelementptr inbounds %struct.pcfclock_data, %struct.pcfclock_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @device_get_parent(i32 %16)
  store i32 %17, i32* %7, align 4
  store i8 14, i8* %8, align 1
  store i8 0, i8* %9, align 1
  br label %18

18:                                               ; preds = %38, %2
  %19 = load i8, i8* %9, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sle i32 %20, 7
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i8, i8* %9, align 1
  %25 = call i32 @ppb_wdtr(i32 %23, i8 zeroext %24)
  %26 = load i8, i8* %9, align 1
  %27 = sext i8 %26 to i32
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @AFC_HI, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @AFC_LO, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 @AUTOFEED_CLOCK(i32 %35)
  %37 = call i32 @DELAY(i32 3000)
  br label %38

38:                                               ; preds = %34
  %39 = load i8, i8* %9, align 1
  %40 = add i8 %39, 1
  store i8 %40, i8* %9, align 1
  br label %18

41:                                               ; preds = %18
  %42 = load i32, i32* %7, align 4
  %43 = load i8, i8* %4, align 1
  %44 = call i32 @ppb_wdtr(i32 %42, i8 zeroext %43)
  %45 = load i32, i32* @AFC_LO, align 4
  %46 = call i32 @AUTOFEED_CLOCK(i32 %45)
  %47 = call i32 @DELAY(i32 3000)
  %48 = load i32, i32* @AFC_HI, align 4
  %49 = call i32 @AUTOFEED_CLOCK(i32 %48)
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_wdtr(i32, i8 zeroext) #1

declare dso_local i32 @AUTOFEED_CLOCK(i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
