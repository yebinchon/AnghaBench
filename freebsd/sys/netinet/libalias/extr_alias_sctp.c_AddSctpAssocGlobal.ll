; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_AddSctpAssocGlobal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_AddSctpAssocGlobal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32, i32, i32, i32* }
%struct.sctp_nat_assoc = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SN_GLOBAL_TBL = common dso_local global i32 0, align 4
@SN_ADD_CLASH = common dso_local global i32 0, align 4
@list_G = common dso_local global i32 0, align 4
@SN_BOTH_TBL = common dso_local global i32 0, align 4
@PKT_ALIAS_LOG = common dso_local global i32 0, align 4
@SN_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1
@SN_ADD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.sctp_nat_assoc*)* @AddSctpAssocGlobal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddSctpAssocGlobal(%struct.libalias* %0, %struct.sctp_nat_assoc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.sctp_nat_assoc*, align 8
  %6 = alloca %struct.sctp_nat_assoc*, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.sctp_nat_assoc* %1, %struct.sctp_nat_assoc** %5, align 8
  %7 = load %struct.libalias*, %struct.libalias** %4, align 8
  %8 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %7)
  %9 = load %struct.libalias*, %struct.libalias** %4, align 8
  %10 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %5, align 8
  %11 = call %struct.sctp_nat_assoc* @FindSctpGlobalClash(%struct.libalias* %9, %struct.sctp_nat_assoc* %10)
  store %struct.sctp_nat_assoc* %11, %struct.sctp_nat_assoc** %6, align 8
  %12 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %6, align 8
  %13 = icmp ne %struct.sctp_nat_assoc* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %2
  %15 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %6, align 8
  %16 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SN_GLOBAL_TBL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %6, align 8
  %22 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %5, align 8
  %26 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %20
  %31 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %6, align 8
  %32 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %5, align 8
  %35 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.libalias*, %struct.libalias** %4, align 8
  %40 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %6, align 8
  %41 = call i32 @RmSctpAssoc(%struct.libalias* %39, %struct.sctp_nat_assoc* %40)
  %42 = load %struct.libalias*, %struct.libalias** %4, align 8
  %43 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %6, align 8
  %44 = call i32 @sctp_RmTimeOut(%struct.libalias* %42, %struct.sctp_nat_assoc* %43)
  %45 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %6, align 8
  %46 = call i32 @freeGlobalAddressList(%struct.sctp_nat_assoc* %45)
  %47 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %6, align 8
  %48 = call i32 @sn_free(%struct.sctp_nat_assoc* %47)
  br label %51

49:                                               ; preds = %30, %20, %14
  %50 = load i32, i32* @SN_ADD_CLASH, align 4
  store i32 %50, i32* %3, align 4
  br label %101

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.libalias*, %struct.libalias** %4, align 8
  %54 = getelementptr inbounds %struct.libalias, %struct.libalias* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %5, align 8
  %57 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %5, align 8
  %60 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.libalias*, %struct.libalias** %4, align 8
  %63 = getelementptr inbounds %struct.libalias, %struct.libalias* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @SN_TABLE_HASH(i32 %58, i32 %61, i32 %64)
  %66 = getelementptr inbounds i32, i32* %55, i64 %65
  %67 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %5, align 8
  %68 = load i32, i32* @list_G, align 4
  %69 = call i32 @LIST_INSERT_HEAD(i32* %66, %struct.sctp_nat_assoc* %67, i32 %68)
  %70 = load i32, i32* @SN_GLOBAL_TBL, align 4
  %71 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %5, align 8
  %72 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.libalias*, %struct.libalias** %4, align 8
  %76 = getelementptr inbounds %struct.libalias, %struct.libalias* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %5, align 8
  %80 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SN_BOTH_TBL, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %52
  %85 = load %struct.libalias*, %struct.libalias** %4, align 8
  %86 = getelementptr inbounds %struct.libalias, %struct.libalias* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PKT_ALIAS_LOG, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.libalias*, %struct.libalias** %4, align 8
  %93 = call i32 @SctpShowAliasStats(%struct.libalias* %92)
  br label %94

94:                                               ; preds = %91, %84
  %95 = load i32, i32* @SN_LOG_INFO, align 4
  %96 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %5, align 8
  %97 = call i32 @logsctpassoc(%struct.sctp_nat_assoc* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %98 = call i32 @SN_LOG(i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %94, %52
  %100 = load i32, i32* @SN_ADD_OK, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %49
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.sctp_nat_assoc* @FindSctpGlobalClash(%struct.libalias*, %struct.sctp_nat_assoc*) #1

declare dso_local i32 @RmSctpAssoc(%struct.libalias*, %struct.sctp_nat_assoc*) #1

declare dso_local i32 @sctp_RmTimeOut(%struct.libalias*, %struct.sctp_nat_assoc*) #1

declare dso_local i32 @freeGlobalAddressList(%struct.sctp_nat_assoc*) #1

declare dso_local i32 @sn_free(%struct.sctp_nat_assoc*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.sctp_nat_assoc*, i32) #1

declare dso_local i64 @SN_TABLE_HASH(i32, i32, i32) #1

declare dso_local i32 @SctpShowAliasStats(%struct.libalias*) #1

declare dso_local i32 @SN_LOG(i32, i32) #1

declare dso_local i32 @logsctpassoc(%struct.sctp_nat_assoc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
