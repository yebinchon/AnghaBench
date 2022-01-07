; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds_tdma.c_ar5416_alq_payload.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds_tdma.c_ar5416_alq_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"[%d] [%lld] op: %d; len %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416_alq_payload(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %3 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %4 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @be16toh(i32 %6)
  switch i32 %7, label %32 [
    i32 133, label %8
    i32 135, label %11
    i32 134, label %14
    i32 132, label %17
    i32 130, label %20
    i32 131, label %23
    i32 128, label %26
    i32 129, label %29
  ]

8:                                                ; preds = %1
  %9 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %10 = call i32 @ar5416_decode_txstatus(%struct.if_ath_alq_payload* %9)
  br label %54

11:                                               ; preds = %1
  %12 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %13 = call i32 @ar5416_decode_rxstatus(%struct.if_ath_alq_payload* %12)
  br label %54

14:                                               ; preds = %1
  %15 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %16 = call i32 @ar5416_decode_txdesc(%struct.if_ath_alq_payload* %15)
  br label %54

17:                                               ; preds = %1
  %18 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %19 = call i32 @ath_tdma_beacon_state(%struct.if_ath_alq_payload* %18)
  br label %54

20:                                               ; preds = %1
  %21 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %22 = call i32 @ath_tdma_timer_config(%struct.if_ath_alq_payload* %21)
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %25 = call i32 @ath_tdma_slot_calc(%struct.if_ath_alq_payload* %24)
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %28 = call i32 @ath_tdma_tsf_adjust(%struct.if_ath_alq_payload* %27)
  br label %54

29:                                               ; preds = %1
  %30 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %31 = call i32 @ath_tdma_timer_set(%struct.if_ath_alq_payload* %30)
  br label %54

32:                                               ; preds = %1
  %33 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %34 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be32toh(i32 %36)
  %38 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %39 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be64toh(i32 %41)
  %43 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %44 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be16toh(i32 %46)
  %48 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %49 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be16toh(i32 %51)
  %53 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42, i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %32, %29, %26, %23, %20, %17, %14, %11, %8
  ret void
}

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @ar5416_decode_txstatus(%struct.if_ath_alq_payload*) #1

declare dso_local i32 @ar5416_decode_rxstatus(%struct.if_ath_alq_payload*) #1

declare dso_local i32 @ar5416_decode_txdesc(%struct.if_ath_alq_payload*) #1

declare dso_local i32 @ath_tdma_beacon_state(%struct.if_ath_alq_payload*) #1

declare dso_local i32 @ath_tdma_timer_config(%struct.if_ath_alq_payload*) #1

declare dso_local i32 @ath_tdma_slot_calc(%struct.if_ath_alq_payload*) #1

declare dso_local i32 @ath_tdma_tsf_adjust(%struct.if_ath_alq_payload*) #1

declare dso_local i32 @ath_tdma_timer_set(%struct.if_ath_alq_payload*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
