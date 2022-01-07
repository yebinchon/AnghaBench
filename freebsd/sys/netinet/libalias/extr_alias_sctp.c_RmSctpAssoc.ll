; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_RmSctpAssoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_sctp.c_RmSctpAssoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32, i32 }
%struct.sctp_nat_assoc = type { i32 }

@SN_LOG_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ERROR: alias_sctp:RmSctpAssoc(NULL)\0A\00", align 1
@SN_TO_NODIR = common dso_local global i32 0, align 4
@SN_BOTH_TBL = common dso_local global i32 0, align 4
@SN_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@SN_LOCAL_TBL = common dso_local global i32 0, align 4
@list_L = common dso_local global i32 0, align 4
@SN_GLOBAL_TBL = common dso_local global i32 0, align 4
@list_G = common dso_local global i32 0, align 4
@PKT_ALIAS_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*, %struct.sctp_nat_assoc*)* @RmSctpAssoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RmSctpAssoc(%struct.libalias* %0, %struct.sctp_nat_assoc* %1) #0 {
  %3 = alloca %struct.libalias*, align 8
  %4 = alloca %struct.sctp_nat_assoc*, align 8
  store %struct.libalias* %0, %struct.libalias** %3, align 8
  store %struct.sctp_nat_assoc* %1, %struct.sctp_nat_assoc** %4, align 8
  %5 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %6 = icmp eq %struct.sctp_nat_assoc* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* @SN_LOG_LOW, align 4
  %9 = load i32, i32* @SN_TO_NODIR, align 4
  %10 = call i32 @logsctperror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %9)
  %11 = call i32 @SN_LOG(i32 %8, i32 %10)
  br label %75

12:                                               ; preds = %2
  %13 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %14 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SN_BOTH_TBL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32, i32* @SN_LOG_INFO, align 4
  %20 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %21 = call i32 @logsctpassoc(%struct.sctp_nat_assoc* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @SN_LOG(i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.libalias*, %struct.libalias** %3, align 8
  %25 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %24)
  %26 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %27 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SN_LOCAL_TBL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load i32, i32* @SN_LOCAL_TBL, align 4
  %34 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %35 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.libalias*, %struct.libalias** %3, align 8
  %39 = getelementptr inbounds %struct.libalias, %struct.libalias* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %43 = load i32, i32* @list_L, align 4
  %44 = call i32 @LIST_REMOVE(%struct.sctp_nat_assoc* %42, i32 %43)
  br label %45

45:                                               ; preds = %32, %23
  %46 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %47 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SN_GLOBAL_TBL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load i32, i32* @SN_GLOBAL_TBL, align 4
  %54 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %55 = getelementptr inbounds %struct.sctp_nat_assoc, %struct.sctp_nat_assoc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.libalias*, %struct.libalias** %3, align 8
  %59 = getelementptr inbounds %struct.libalias, %struct.libalias* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.sctp_nat_assoc*, %struct.sctp_nat_assoc** %4, align 8
  %63 = load i32, i32* @list_G, align 4
  %64 = call i32 @LIST_REMOVE(%struct.sctp_nat_assoc* %62, i32 %63)
  br label %65

65:                                               ; preds = %52, %45
  %66 = load %struct.libalias*, %struct.libalias** %3, align 8
  %67 = getelementptr inbounds %struct.libalias, %struct.libalias* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PKT_ALIAS_LOG, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.libalias*, %struct.libalias** %3, align 8
  %74 = call i32 @SctpShowAliasStats(%struct.libalias* %73)
  br label %75

75:                                               ; preds = %7, %72, %65
  ret void
}

declare dso_local i32 @SN_LOG(i32, i32) #1

declare dso_local i32 @logsctperror(i8*, i32, i32, i32) #1

declare dso_local i32 @logsctpassoc(%struct.sctp_nat_assoc*, i8*) #1

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @LIST_REMOVE(%struct.sctp_nat_assoc*, i32) #1

declare dso_local i32 @SctpShowAliasStats(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
