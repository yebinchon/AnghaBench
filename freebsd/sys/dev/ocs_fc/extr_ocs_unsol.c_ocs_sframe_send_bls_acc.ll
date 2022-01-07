; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_sframe_send_bls_acc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_sframe_send_bls_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i8*, i32 }

@UINT16_MAX = common dso_local global i8* null, align 8
@FC_RCTL_BLS = common dso_local global i32 0, align 4
@FC_RCTL_INFO_UNSOL_DATA = common dso_local global i32 0, align 4
@FC_FCTL_EXCHANGE_RESPONDER = common dso_local global i32 0, align 4
@FC_FCTL_LAST_SEQUENCE = common dso_local global i32 0, align 4
@FC_FCTL_END_SEQUENCE = common dso_local global i32 0, align 4
@FC_TYPE_BASIC_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_sframe_send_bls_acc(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %5, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ocs_be16toh(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ocs_be16toh(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 40, i1 false)
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @ocs_htobe16(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @ocs_htobe16(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** @UINT16_MAX, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** @UINT16_MAX, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = load i32, i32* @FC_RCTL_BLS, align 4
  %37 = load i32, i32* @FC_RCTL_INFO_UNSOL_DATA, align 4
  %38 = load i32, i32* @FC_FCTL_EXCHANGE_RESPONDER, align 4
  %39 = load i32, i32* @FC_FCTL_LAST_SEQUENCE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FC_FCTL_END_SEQUENCE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FC_TYPE_BASIC_LINK, align 4
  %44 = call i32 @ocs_sframe_common_send(i32* %34, %struct.TYPE_11__* %35, i32 %36, i32 %37, i32 %42, i32 %43, %struct.TYPE_13__* %8, i32 40)
  ret i32 %44
}

declare dso_local i32 @ocs_be16toh(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @ocs_htobe16(i32) #1

declare dso_local i32 @ocs_sframe_common_send(i32*, %struct.TYPE_11__*, i32, i32, i32, i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
