; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_put_unlocked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_put_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i32, %struct.sfxge_tx_dpl }
%struct.sfxge_tx_dpl = type { i64, i32 }
%struct.mbuf = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"mbuf->m_nextpkt != NULL\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_txq*, %struct.mbuf*)* @sfxge_tx_qdpl_put_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_tx_qdpl_put_unlocked(%struct.sfxge_txq* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_txq*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.sfxge_tx_dpl*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %19 = call i32 @SFXGE_TXQ_LOCK_ASSERT_NOTOWNED(%struct.sfxge_txq* %18)
  %20 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %21 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %20, i32 0, i32 1
  store %struct.sfxge_tx_dpl* %21, %struct.sfxge_tx_dpl** %6, align 8
  %22 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %6, align 8
  %23 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %22, i32 0, i32 0
  store i64* %23, i64** %7, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = ptrtoint %struct.mbuf* %24 to i64
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %61, %2
  %27 = load i64*, i64** %7, align 8
  %28 = load volatile i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = inttoptr i64 %32 to %struct.mbuf*
  store %struct.mbuf* %33, %struct.mbuf** %11, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  br label %39

38:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %6, align 8
  %42 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %47 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %46, i32 0, i32 0
  %48 = call i32 @atomic_add_long(i32* %47, i32 1)
  %49 = load i32, i32* @ENOBUFS, align 4
  store i32 %49, i32* %3, align 4
  br label %68

50:                                               ; preds = %39
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  %53 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i64*, i64** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @atomic_cmpset_ptr(i64* %62, i64 %63, i64 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %26, label %67

67:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SFXGE_TXQ_LOCK_ASSERT_NOTOWNED(%struct.sfxge_txq*) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i64 @atomic_cmpset_ptr(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
