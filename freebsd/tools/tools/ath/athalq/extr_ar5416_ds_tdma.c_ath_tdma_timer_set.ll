; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds_tdma.c_ath_tdma_timer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds_tdma.c_ath_tdma_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.if_ath_alq_tdma_timer_set = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [125 x i8] c"[%u] [%llu] TIMERSET: bt_intval=%d nexttbtt=%d nextdba=%d nextswba=%d nextatim=%d flags=0x%x tdmadbaprep=%d tdmaswbaprep=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ath_tdma_timer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tdma_timer_set(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.if_ath_alq_tdma_timer_set, align 4
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.if_ath_alq_tdma_timer_set* %3, i32* %5, i32 32)
  %7 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %8 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @be32toh(i32 %10)
  %12 = trunc i64 %11 to i32
  %13 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %14 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @be64toh(i32 %16)
  %18 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @be32toh(i32 %19)
  %21 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be32toh(i32 %22)
  %24 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @be32toh(i32 %25)
  %27 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @be32toh(i32 %28)
  %30 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @be32toh(i32 %31)
  %33 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @be32toh(i32 %34)
  %36 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @be32toh(i32 %37)
  %39 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @be32toh(i32 %40)
  %42 = call i32 @printf(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str, i64 0, i64 0), i32 %12, i64 %17, i64 %20, i64 %23, i64 %26, i64 %29, i64 %32, i64 %35, i64 %38, i64 %41)
  ret void
}

declare dso_local i32 @memcpy(%struct.if_ath_alq_tdma_timer_set*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @be32toh(i32) #1

declare dso_local i64 @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
