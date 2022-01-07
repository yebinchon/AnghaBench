; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_AddSctpAssocLocal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_AddSctpAssocLocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32, i32, i32, i32* }
%struct.sctp_nat_assoc = type { i64, i32, i32, i32, i32 }
%struct.in_addr = type { i32 }

@SN_LOCAL_TBL = common dso_local global i32 0, align 4
@SN_ADD_CLASH = common dso_local global i32 0, align 4
@list_L = common dso_local global i32 0, align 4
@SN_BOTH_TBL = common dso_local global i32 0, align 4
@PKT_ALIAS_LOG = common dso_local global i32 0, align 4
@SN_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1
@SN_ADD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.sctp_nat_assoc*, i32)* @AddSctpAssocLocal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddSctpAssocLocal(%struct.libalias* %0, %struct.sctp_nat_assoc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.libalias*, align 8
  %7 = alloca %struct.sctp_nat_assoc*, align 8
  %8 = alloca %struct.sctp_nat_assoc*, align 8
  %9 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.libalias* %0, %struct.libalias** %6, align 8
  store %struct.sctp_nat_assoc* %1, %struct.sctp_nat_assoc** %7, align 8
  %10 = load %struct.libalias*, %struct.libalias** %6, align 8
  %11 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %10)
  %12 = load %struct.libalias*, %struct.libalias** %6, align 8
  %13 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %7, align 8
  %14 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %7, align 8
  %17 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %7, align 8
  %20 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %7, align 8
  %23 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.sctp_nat_assoc* @FindSctpLocal(%struct.libalias* %12, i32 %15, i32 %26, i32 %18, i32 %21, i64 %24)
  store %struct.sctp_nat_assoc* %27, %struct.sctp_nat_assoc** %8, align 8
  %28 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %29 = icmp ne %struct.sctp_nat_assoc* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %3
  %31 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %32 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SN_LOCAL_TBL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %38 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %7, align 8
  %41 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.libalias*, %struct.libalias** %6, align 8
  %46 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %47 = call i32 @RmSctpAssoc(%struct.libalias* %45, %struct.sctp_nat_assoc* %46)
  %48 = load %struct.libalias*, %struct.libalias** %6, align 8
  %49 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %50 = call i32 @sctp_RmTimeOut(%struct.libalias* %48, %struct.sctp_nat_assoc* %49)
  %51 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %52 = call i32 @freeGlobalAddressList(%struct.sctp_nat_assoc* %51)
  %53 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %8, align 8
  %54 = call i32 @sn_free(%struct.sctp_nat_assoc* %53)
  br label %57

55:                                               ; preds = %36, %30
  %56 = load i32, i32* @SN_ADD_CLASH, align 4
  store i32 %56, i32* %4, align 4
  br label %107

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %struct.libalias*, %struct.libalias** %6, align 8
  %60 = getelementptr inbounds %struct.libalias, %struct.libalias* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %7, align 8
  %63 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %7, align 8
  %66 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.libalias*, %struct.libalias** %6, align 8
  %69 = getelementptr inbounds %struct.libalias, %struct.libalias* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @SN_TABLE_HASH(i32 %64, i32 %67, i32 %70)
  %72 = getelementptr inbounds i32, i32* %61, i64 %71
  %73 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %7, align 8
  %74 = load i32, i32* @list_L, align 4
  %75 = call i32 @LIST_INSERT_HEAD(i32* %72, %struct.sctp_nat_assoc* %73, i32 %74)
  %76 = load i32, i32* @SN_LOCAL_TBL, align 4
  %77 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %7, align 8
  %78 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.libalias*, %struct.libalias** %6, align 8
  %82 = getelementptr inbounds %struct.libalias, %struct.libalias* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %7, align 8
  %86 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SN_BOTH_TBL, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %58
  %91 = load %struct.libalias*, %struct.libalias** %6, align 8
  %92 = getelementptr inbounds %struct.libalias, %struct.libalias* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PKT_ALIAS_LOG, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.libalias*, %struct.libalias** %6, align 8
  %99 = call i32 @SctpShowAliasStats(%struct.libalias* %98)
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* @SN_LOG_INFO, align 4
  %102 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %7, align 8
  %103 = call i32 @logsctpassoc(%struct.sctp_nat_assoc* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %104 = call i32 @SN_LOG(i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %100, %58
  %106 = load i32, i32* @SN_ADD_OK, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %55
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.sctp_nat_assoc* @FindSctpLocal(%struct.libalias*, i32, i32, i32, i32, i64) #1

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
