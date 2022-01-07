; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_rearm_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_rearm_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32, %struct.fsl_sata_slot*, i32 }
%struct.fsl_sata_slot = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@FSL_SATA_MAX_SLOTS = common dso_local global i32 0, align 4
@FSL_SATA_SLOT_RUNNING = common dso_local global i64 0, align 8
@SBT_1MS = common dso_local global i32 0, align 4
@fsl_sata_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_channel*)* @fsl_sata_rearm_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_rearm_timeout(%struct.fsl_sata_channel* %0) #0 {
  %2 = alloca %struct.fsl_sata_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_sata_slot*, align 8
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %2, align 8
  %5 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %5, i32 0, i32 2
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* %6, i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %51, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %15 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %14, i32 0, i32 1
  %16 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %16, i64 %18
  store %struct.fsl_sata_slot* %19, %struct.fsl_sata_slot** %4, align 8
  %20 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %4, align 8
  %21 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FSL_SATA_SLOT_RUNNING, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %51

26:                                               ; preds = %13
  %27 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %28 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %51

35:                                               ; preds = %26
  %36 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %4, align 8
  %37 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %36, i32 0, i32 2
  %38 = load i32, i32* @SBT_1MS, align 4
  %39 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %4, align 8
  %40 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %38, %44
  %46 = sdiv i32 %45, 2
  %47 = load i64, i64* @fsl_sata_timeout, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %4, align 8
  %50 = call i32 @callout_reset_sbt(i32* %37, i32 %46, i32 0, i32* %48, %struct.fsl_sata_slot* %49, i32 0)
  br label %51

51:                                               ; preds = %35, %34, %25
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %9

54:                                               ; preds = %9
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32*, %struct.fsl_sata_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
