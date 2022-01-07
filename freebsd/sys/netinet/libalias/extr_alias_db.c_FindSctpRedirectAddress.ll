; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindSctpRedirectAddress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindSctpRedirectAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.sctp_nat_msg = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.in_addr = type { i64 }
%struct.alias_link = type { %struct.in_addr }

@LINK_SCTP = common dso_local global i32 0, align 4
@NO_DEST_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FindSctpRedirectAddress(%struct.libalias* %0, %struct.sctp_nat_msg* %1) #0 {
  %3 = alloca %struct.in_addr, align 8
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.sctp_nat_msg*, align 8
  %6 = alloca %struct.alias_link*, align 8
  %7 = alloca %struct.in_addr, align 8
  %8 = alloca %struct.in_addr, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.sctp_nat_msg* %1, %struct.sctp_nat_msg** %5, align 8
  %9 = load %struct.libalias*, %struct.libalias** %4, align 8
  %10 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %9)
  %11 = load %struct.libalias*, %struct.libalias** %4, align 8
  %12 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %5, align 8
  %13 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %5, align 8
  %23 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %5, align 8
  %28 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LINK_SCTP, align 4
  %33 = call %struct.alias_link* @FindLinkIn(%struct.libalias* %11, i32 %16, i32 %21, i32 %26, i32 %31, i32 %32, i32 1)
  store %struct.alias_link* %33, %struct.alias_link** %6, align 8
  %34 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %35 = icmp ne %struct.alias_link* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %38 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %37, i32 0, i32 0
  %39 = bitcast %struct.in_addr* %3 to i8*
  %40 = bitcast %struct.in_addr* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 8, i1 false)
  br label %93

41:                                               ; preds = %2
  %42 = load %struct.libalias*, %struct.libalias** %4, align 8
  %43 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %5, align 8
  %44 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @FindOriginalAddress(%struct.libalias* %42, i32 %47)
  %49 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = bitcast %struct.in_addr* %7 to i8*
  %51 = bitcast %struct.in_addr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 8, i1 false)
  %52 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.libalias*, %struct.libalias** %4, align 8
  %55 = getelementptr inbounds %struct.libalias, %struct.libalias* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.libalias*, %struct.libalias** %4, align 8
  %63 = getelementptr inbounds %struct.libalias, %struct.libalias* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %61, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %59, %41
  %68 = load %struct.libalias*, %struct.libalias** %4, align 8
  %69 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %5, align 8
  %70 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sctp_nat_msg*, %struct.sctp_nat_msg** %5, align 8
  %75 = getelementptr inbounds %struct.sctp_nat_msg, %struct.sctp_nat_msg* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NO_DEST_PORT, align 4
  %80 = load i32, i32* @LINK_SCTP, align 4
  %81 = call %struct.alias_link* @FindLinkIn(%struct.libalias* %68, i32 %73, i32 %78, i32 %79, i32 0, i32 %80, i32 1)
  store %struct.alias_link* %81, %struct.alias_link** %6, align 8
  %82 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %83 = icmp ne %struct.alias_link* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %86 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %85, i32 0, i32 0
  %87 = bitcast %struct.in_addr* %3 to i8*
  %88 = bitcast %struct.in_addr* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 8, i1 false)
  br label %93

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89, %59
  %91 = bitcast %struct.in_addr* %3 to i8*
  %92 = bitcast %struct.in_addr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 8, i1 false)
  br label %93

93:                                               ; preds = %90, %84, %36
  %94 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  ret i64 %95
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local %struct.alias_link* @FindLinkIn(%struct.libalias*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @FindOriginalAddress(%struct.libalias*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
