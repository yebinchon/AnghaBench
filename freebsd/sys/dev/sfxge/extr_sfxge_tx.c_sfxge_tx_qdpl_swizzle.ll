; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_swizzle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qdpl_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { %struct.sfxge_tx_dpl }
%struct.sfxge_tx_dpl = type { i64, i32, i32, i32, %struct.mbuf** }
%struct.mbuf = type { %struct.mbuf* }

@.str = private unnamed_addr constant [19 x i8] c"*get_tailp != NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_txq*)* @sfxge_tx_qdpl_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_tx_qdpl_swizzle(%struct.sfxge_txq* %0) #0 {
  %2 = alloca %struct.sfxge_txq*, align 8
  %3 = alloca %struct.sfxge_tx_dpl*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %2, align 8
  %12 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %13 = call i32 @SFXGE_TXQ_LOCK_ASSERT_OWNED(%struct.sfxge_txq* %12)
  %14 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %15 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %14, i32 0, i32 0
  store %struct.sfxge_tx_dpl* %15, %struct.sfxge_tx_dpl** %3, align 8
  %16 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %17 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %16, i32 0, i32 0
  store i64* %17, i64** %7, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = call i64 @atomic_readandclear_ptr(i64* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.mbuf*
  store %struct.mbuf* %22, %struct.mbuf** %4, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %24 = icmp eq %struct.mbuf* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %82

26:                                               ; preds = %1
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  store %struct.mbuf** %28, %struct.mbuf*** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %46, %26
  %30 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %31 = call i64 @sfxge_is_mbuf_non_tcp(%struct.mbuf* %30)
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 0
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  store %struct.mbuf* %38, %struct.mbuf** %11, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  store %struct.mbuf* %39, %struct.mbuf** %41, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %42, %struct.mbuf** %5, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %43, %struct.mbuf** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %29
  %47 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %48 = icmp ne %struct.mbuf* %47, null
  br i1 %48, label %29, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %52 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ugt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %58 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %60, align 8
  %62 = icmp eq %struct.mbuf* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @KASSERT(i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %66 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %67 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %66, i32 0, i32 4
  %68 = load %struct.mbuf**, %struct.mbuf*** %67, align 8
  store %struct.mbuf* %65, %struct.mbuf** %68, align 8
  %69 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %70 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %71 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %70, i32 0, i32 4
  store %struct.mbuf** %69, %struct.mbuf*** %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %74 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %3, align 8
  %79 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = add i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %59, %25
  ret void
}

declare dso_local i32 @SFXGE_TXQ_LOCK_ASSERT_OWNED(%struct.sfxge_txq*) #1

declare dso_local i64 @atomic_readandclear_ptr(i64*) #1

declare dso_local i64 @sfxge_is_mbuf_non_tcp(%struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
