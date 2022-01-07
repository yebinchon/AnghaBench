; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txdesc_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txdesc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_txdesc = type { i32, i64, i64, i32, i32, i32* }
%struct.hn_tx_ring = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"txdesc_get: invalid txd avail %d\00", align 1
@link = common dso_local global i32 0, align 4
@HN_NVS_CHIM_IDX_INVALID = common dso_local global i64 0, align 8
@HN_TXD_FLAG_ONLIST = common dso_local global i32 0, align 4
@HN_TXD_FLAG_ONAGG = common dso_local global i32 0, align 4
@HN_TXD_FLAG_DMAMAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"invalid txd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hn_txdesc* (%struct.hn_tx_ring*)* @hn_txdesc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hn_txdesc* @hn_txdesc_get(%struct.hn_tx_ring* %0) #0 {
  %2 = alloca %struct.hn_tx_ring*, align 8
  %3 = alloca %struct.hn_txdesc*, align 8
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %2, align 8
  %4 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %5 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %4, i32 0, i32 2
  %6 = call i32 @mtx_lock_spin(i32* %5)
  %7 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %8 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %7, i32 0, i32 3
  %9 = call %struct.hn_txdesc* @SLIST_FIRST(i32* %8)
  store %struct.hn_txdesc* %9, %struct.hn_txdesc** %3, align 8
  %10 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %11 = icmp ne %struct.hn_txdesc* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %14 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %19 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %17, i8* %21)
  %23 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %24 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %28 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %27, i32 0, i32 3
  %29 = load i32, i32* @link, align 4
  %30 = call i32 @SLIST_REMOVE_HEAD(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %12, %1
  %32 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %33 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %32, i32 0, i32 2
  %34 = call i32 @mtx_unlock_spin(i32* %33)
  %35 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %36 = icmp ne %struct.hn_txdesc* %35, null
  br i1 %36, label %37, label %96

37:                                               ; preds = %31
  %38 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %39 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %84

42:                                               ; preds = %37
  %43 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %44 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %42
  %48 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %49 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %48, i32 0, i32 4
  %50 = call i64 @STAILQ_EMPTY(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %47
  %53 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %54 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HN_NVS_CHIM_IDX_INVALID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  %59 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %60 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %65 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @HN_TXD_FLAG_ONLIST, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %72 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @HN_TXD_FLAG_ONAGG, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %79 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @HN_TXD_FLAG_DMAMAP, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br label %84

84:                                               ; preds = %77, %70, %63, %58, %52, %47, %42, %37
  %85 = phi i1 [ false, %70 ], [ false, %63 ], [ false, %58 ], [ false, %52 ], [ false, %47 ], [ false, %42 ], [ false, %37 ], [ %83, %77 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @KASSERT(i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @HN_TXD_FLAG_ONLIST, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %91 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  %95 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %84, %31
  %97 = load %struct.hn_txdesc*, %struct.hn_txdesc** %3, align 8
  ret %struct.hn_txdesc* %97
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local %struct.hn_txdesc* @SLIST_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
