; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32 }

@LIO_CN23XX_SLI_SCRATCH2 = common dso_local global i32 0, align 4
@LIO_MAX_CORES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"ERROR: Octeon core %d crashed or got stuck! See oct-fwdump for details.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lio_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca [12 x i32], align 16
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.octeon_device*
  store %struct.octeon_device* %10, %struct.octeon_device** %5, align 8
  %11 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 0
  %12 = call i32 @bzero(i32* %11, i32 48)
  br label %13

13:                                               ; preds = %1, %64
  %14 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kproc_suspend_check(i32 %16)
  %18 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %19 = load i32, i32* @LIO_CN23XX_SLI_SCRATCH2, align 4
  %20 = call i64 @lio_read_csr64(%struct.octeon_device* %18, i32 %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %13
  %25 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %28 = call %struct.octeon_device* @lio_get_other_octeon_device(%struct.octeon_device* %27)
  store %struct.octeon_device* %28, %struct.octeon_device** %7, align 8
  %29 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %30 = icmp ne %struct.octeon_device* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %33 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %24
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @LIO_MAX_CORES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = ashr i32 %40, %41
  %43 = and i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @lio_dev_err(%struct.octeon_device* %53, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 %57
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %46, %39
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %35

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %13
  %65 = call i32 @lio_ms_to_ticks(i32 2000)
  %66 = call i32 @pause(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %13
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @kproc_suspend_check(i32) #1

declare dso_local i64 @lio_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local %struct.octeon_device* @lio_get_other_octeon_device(%struct.octeon_device*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @lio_ms_to_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
