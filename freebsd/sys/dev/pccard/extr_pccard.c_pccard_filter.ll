; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_function = type { i32 (i32)*, i32, i32 }

@PCCARD_CCR_STATUS = common dso_local global i32 0, align 4
@PCCARD_CCR_STATUS_INTR = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pccard_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_filter(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pccard_function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.pccard_function*
  store %struct.pccard_function* %8, %struct.pccard_function** %4, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %10 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @pccard_mfc(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %16 = load i32, i32* @PCCARD_CCR_STATUS, align 4
  %17 = call i32 @pccard_ccr_read(%struct.pccard_function* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PCCARD_CCR_STATUS_INTR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %24 = load i32, i32* @PCCARD_CCR_STATUS, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PCCARD_CCR_STATUS_INTR, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @pccard_ccr_write(%struct.pccard_function* %23, i32 %24, i32 %28)
  br label %31

30:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %22
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %37 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %36, i32 0, i32 0
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = icmp ne i32 (i32)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %42 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %41, i32 0, i32 0
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = load %struct.pccard_function*, %struct.pccard_function** %4, align 8
  %45 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %43(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %35
  %49 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %32
  %51 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %48, %40
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @pccard_mfc(i32) #1

declare dso_local i32 @pccard_ccr_read(%struct.pccard_function*, i32) #1

declare dso_local i32 @pccard_ccr_write(%struct.pccard_function*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
