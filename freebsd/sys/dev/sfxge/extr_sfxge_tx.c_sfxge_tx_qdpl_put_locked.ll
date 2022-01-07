; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_put_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_put_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i32, i32, %struct.sfxge_tx_dpl }
%struct.sfxge_tx_dpl = type { i64, i64, i64, i64, %struct.mbuf** }
%struct.mbuf = type { %struct.mbuf* }

@.str = private unnamed_addr constant [24 x i8] c"mbuf->m_nextpkt != NULL\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_txq*, %struct.mbuf*)* @sfxge_tx_qdpl_put_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_tx_qdpl_put_locked(%struct.sfxge_txq* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_txq*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.sfxge_tx_dpl*, align 8
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %7 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %8 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %7, i32 0, i32 2
  store %struct.sfxge_tx_dpl* %8, %struct.sfxge_tx_dpl** %6, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 0
  %11 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %12 = icmp eq %struct.mbuf* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %16 = call i32 @SFXGE_TXQ_LOCK_ASSERT_OWNED(%struct.sfxge_txq* %15)
  %17 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %6, align 8
  %18 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %6, align 8
  %21 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %26 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @ENOBUFS, align 4
  store i32 %29, i32* %3, align 4
  br label %66

30:                                               ; preds = %2
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = call i64 @sfxge_is_mbuf_non_tcp(%struct.mbuf* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %6, align 8
  %36 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %6, align 8
  %39 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %44 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @ENOBUFS, align 4
  store i32 %47, i32* %3, align 4
  br label %66

48:                                               ; preds = %34
  %49 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %6, align 8
  %50 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %48, %30
  %54 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %55 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %6, align 8
  %56 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %55, i32 0, i32 4
  %57 = load %struct.mbuf**, %struct.mbuf*** %56, align 8
  store %struct.mbuf* %54, %struct.mbuf** %57, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 0
  %60 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %6, align 8
  %61 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %60, i32 0, i32 4
  store %struct.mbuf** %59, %struct.mbuf*** %61, align 8
  %62 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %6, align 8
  %63 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %53, %42, %24
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SFXGE_TXQ_LOCK_ASSERT_OWNED(%struct.sfxge_txq*) #1

declare dso_local i64 @sfxge_is_mbuf_non_tcp(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
