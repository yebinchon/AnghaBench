; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar9300_ds.c_ar9300_alq_payload.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar9300_ds.c_ar9300_alq_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"[%d.%06d] [%lld] op: %d; len %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_alq_payload(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %3 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %4 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @be16toh(i32 %6)
  switch i32 %7, label %17 [
    i32 128, label %8
    i32 130, label %11
    i32 129, label %14
  ]

8:                                                ; preds = %1
  %9 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %10 = call i32 @ar9300_decode_txstatus(%struct.if_ath_alq_payload* %9)
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %13 = call i32 @ar9300_decode_rxstatus(%struct.if_ath_alq_payload* %12)
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %16 = call i32 @ar9300_decode_txdesc(%struct.if_ath_alq_payload* %15)
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %19 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be32toh(i32 %21)
  %23 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %24 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32toh(i32 %26)
  %28 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %29 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be64toh(i32 %31)
  %33 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %34 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be16toh(i32 %36)
  %38 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %39 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be16toh(i32 %41)
  %43 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i32 %32, i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %17, %14, %11, %8
  ret void
}

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @ar9300_decode_txstatus(%struct.if_ath_alq_payload*) #1

declare dso_local i32 @ar9300_decode_rxstatus(%struct.if_ath_alq_payload*) #1

declare dso_local i32 @ar9300_decode_txdesc(%struct.if_ath_alq_payload*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
