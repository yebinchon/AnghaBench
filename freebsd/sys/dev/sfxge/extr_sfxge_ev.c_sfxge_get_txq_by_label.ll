; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_get_txq_by_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_get_txq_by_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i32 }
%struct.sfxge_evq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sfxge_txq**, i64 }

@SFXGE_TXQ_NTYPES = common dso_local global i32 0, align 4
@SFXGE_TXQ_IP_TCP_UDP_CKSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unexpected txq label\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sfxge_txq* (%struct.sfxge_evq*, i32)* @sfxge_get_txq_by_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sfxge_txq* @sfxge_get_txq_by_label(%struct.sfxge_evq* %0, i32 %1) #0 {
  %3 = alloca %struct.sfxge_evq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sfxge_evq* %0, %struct.sfxge_evq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %7 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %18 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SFXGE_TXQ_NTYPES, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SFXGE_TXQ_IP_TCP_UDP_CKSUM, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %29, %12
  %33 = phi i32 [ %15, %12 ], [ %31, %29 ]
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %36 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  br label %51

41:                                               ; preds = %32
  %42 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %43 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %47 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @SFXGE_EVQ0_N_TXQ(%struct.TYPE_2__* %48)
  %50 = add nsw i32 %45, %49
  br label %51

51:                                               ; preds = %41, %39
  %52 = phi i32 [ %40, %39 ], [ %50, %41 ]
  store i32 %52, i32* %5, align 4
  %53 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %54 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sfxge_txq*, %struct.sfxge_txq** %57, i64 %59
  %61 = load %struct.sfxge_txq*, %struct.sfxge_txq** %60, align 8
  ret %struct.sfxge_txq* %61
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SFXGE_EVQ0_N_TXQ(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
