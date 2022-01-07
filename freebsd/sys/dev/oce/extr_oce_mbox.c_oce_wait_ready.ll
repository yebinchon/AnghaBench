; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_mbox.c_oce_wait_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_mbox.c_oce_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@db = common dso_local global i32 0, align 4
@SLIPORT_STATUS_OFFSET = common dso_local global i32 0, align 4
@SLIPORT_STATUS_RDY_MASK = common dso_local global i64 0, align 8
@SLIPORT_STATUS_ERR_MASK = common dso_local global i64 0, align 8
@SLIPORT_STATUS_RN_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Error detected in the card\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Firmware wait timed out\0A\00", align 1
@SLIPORT_READY_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oce_wait_ready(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @IS_XE201(%struct.TYPE_5__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %50

10:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %42, %10
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %12, 30000
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = load i32, i32* @db, align 4
  %17 = load i32, i32* @SLIPORT_STATUS_OFFSET, align 4
  %18 = call i64 @OCE_READ_REG32(%struct.TYPE_5__* %15, i32 %16, i32 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @SLIPORT_STATUS_RDY_MASK, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %50

24:                                               ; preds = %14
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @SLIPORT_STATUS_ERR_MASK, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @SLIPORT_STATUS_RN_MASK, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %29, %24
  %41 = call i32 @DELAY(i32 1000)
  br label %42

42:                                               ; preds = %40
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %11

45:                                               ; preds = %11
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %34, %23, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @IS_XE201(%struct.TYPE_5__*) #1

declare dso_local i64 @OCE_READ_REG32(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
