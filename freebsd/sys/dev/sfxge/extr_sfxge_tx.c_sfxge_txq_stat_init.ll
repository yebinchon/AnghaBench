; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_txq_stat_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_txq_stat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.sfxge_txq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Tx queue statistics\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@sfxge_tx_stats = common dso_local global %struct.TYPE_5__* null, align 8
@CTLFLAG_STATS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_txq*, %struct.sysctl_oid*)* @sfxge_txq_stat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_txq_stat_init(%struct.sfxge_txq* %0, %struct.sysctl_oid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_txq*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca i32, align 4
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %4, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %5, align 8
  %9 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %10 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %13)
  store %struct.sysctl_ctx_list* %14, %struct.sysctl_ctx_list** %6, align 8
  %15 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %16 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %17 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RD, align 4
  %20 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %15, i32 %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %20, %struct.sysctl_oid** %7, align 8
  %21 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %22 = icmp eq %struct.sysctl_oid* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %56, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sfxge_tx_stats, align 8
  %29 = call i32 @nitems(%struct.TYPE_5__* %28)
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %33 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %34 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %33)
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sfxge_tx_stats, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CTLFLAG_RD, align 4
  %43 = load i32, i32* @CTLFLAG_STATS, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.sfxge_txq*, %struct.sfxge_txq** %4, align 8
  %46 = ptrtoint %struct.sfxge_txq* %45 to i64
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sfxge_tx_stats, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %46, %52
  %54 = inttoptr i64 %53 to i64*
  %55 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %32, i32 %34, i32 %35, i32 %41, i32 %44, i64* %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %31
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %26

59:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list*, i32, i32, i32, i32, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
