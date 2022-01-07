; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_reset_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_reset_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i32, i32, i32 }

@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATA_S_DRQ = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"MVS reset: device ready after %dms\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"MVS reset: device not ready after 31000ms\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mvs_reset_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_reset_to(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mvs_channel*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.mvs_channel* @device_get_softc(i8* %7)
  store %struct.mvs_channel* %8, %struct.mvs_channel** %4, align 8
  %9 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %10 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %16 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @ATA_S_BUSY, align 4
  %21 = load i32, i32* @ATA_S_DRQ, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @mvs_wait(i8* %19, i32 0, i32 %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %14
  %26 = load i64, i64* @bootverbose, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %31 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 310, %32
  %34 = mul nsw i32 %33, 100
  %35 = call i32 (i8*, i8*, ...) @device_printf(i8* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %28, %25
  %37 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %38 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %40 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @xpt_release_simq(i32 %41, i32 %42)
  br label %63

44:                                               ; preds = %14
  %45 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %46 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 (i8*, i8*, ...) @device_printf(i8* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %53 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @xpt_release_simq(i32 %54, i32 %55)
  br label %63

57:                                               ; preds = %44
  %58 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %59 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %58, i32 0, i32 1
  %60 = load i32, i32* @hz, align 4
  %61 = sdiv i32 %60, 10
  %62 = call i32 @callout_schedule(i32* %59, i32 %61)
  br label %63

63:                                               ; preds = %57, %49, %36, %13
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i8*) #1

declare dso_local i32 @mvs_wait(i8*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
