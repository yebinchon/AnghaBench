; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_process_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_process_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_channel = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@SIIS_MAX_SLOTS = common dso_local global i32 0, align 4
@SIIS_SLOT_RUNNING = common dso_local global i64 0, align 8
@SIIS_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @siis_process_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_process_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siis_channel*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.siis_channel* @device_get_softc(i32 %5)
  store %struct.siis_channel* %6, %struct.siis_channel** %3, align 8
  %7 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %8 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %7, i32 0, i32 5
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %12 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %1
  %16 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %17 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %22 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %25 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @xpt_freeze_simq(i32 %23, i32 %26)
  %28 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %29 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %20, %15, %1
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %37 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SIIS_SLOT_RUNNING, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %56

47:                                               ; preds = %35
  %48 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %49 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = load i32, i32* @SIIS_ERR_TIMEOUT, align 4
  %55 = call i32 @siis_end_transaction(%struct.TYPE_2__* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %46
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %31

59:                                               ; preds = %31
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @siis_end_transaction(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
