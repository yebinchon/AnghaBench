; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_tdma.c_ath_tdma_timer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_tdma.c_ath_tdma_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.if_ath_alq_tdma_timer_set = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [130 x i8] c"[%u.%06u] [%llu] TIMERSET: bt_intval=%d nexttbtt=%d nextdba=%d nextswba=%d nextatim=%d flags=0x%x tdmadbaprep=%d tdmaswbaprep=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_tdma_timer_set(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.if_ath_alq_tdma_timer_set, align 4
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.if_ath_alq_tdma_timer_set* %3, i32* %5, i32 32)
  %7 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %8 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @be32toh(i32 %10)
  %12 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %13 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be32toh(i32 %15)
  %17 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %18 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @be64toh(i32 %20)
  %22 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32toh(i32 %23)
  %25 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32toh(i32 %26)
  %28 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32toh(i32 %29)
  %31 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be32toh(i32 %32)
  %34 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32toh(i32 %35)
  %37 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be32toh(i32 %38)
  %40 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32toh(i32 %41)
  %43 = getelementptr inbounds %struct.if_ath_alq_tdma_timer_set, %struct.if_ath_alq_tdma_timer_set* %3, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be32toh(i32 %44)
  %46 = call i32 @printf(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %16, i64 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45)
  ret void
}

declare dso_local i32 @memcpy(%struct.if_ath_alq_tdma_timer_set*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i64 @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
