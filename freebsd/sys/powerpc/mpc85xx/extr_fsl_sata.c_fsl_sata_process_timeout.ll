; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_process_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_process_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@FSL_SATA_MAX_SLOTS = common dso_local global i32 0, align 4
@FSL_SATA_SLOT_RUNNING = common dso_local global i64 0, align 8
@FSL_SATA_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_channel*)* @fsl_sata_process_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_process_timeout(%struct.fsl_sata_channel* %0) #0 {
  %2 = alloca %struct.fsl_sata_channel*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %2, align 8
  %4 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %4, i32 0, i32 1
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %14 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FSL_SATA_SLOT_RUNNING, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %33

24:                                               ; preds = %12
  %25 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %26 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = load i32, i32* @FSL_SATA_ERR_TIMEOUT, align 4
  %32 = call i32 @fsl_sata_end_transaction(%struct.TYPE_2__* %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %23
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

36:                                               ; preds = %8
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @fsl_sata_end_transaction(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
