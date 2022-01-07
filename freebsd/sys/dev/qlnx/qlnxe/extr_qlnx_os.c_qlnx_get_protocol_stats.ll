; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_get_protocol_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_get_protocol_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ecore_mcp_protocol_stats = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ecore_eth_stats = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ecore_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"invalid protocol type 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnx_get_protocol_stats(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ecore_mcp_protocol_stats*, align 8
  %9 = alloca %struct.ecore_eth_stats, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %union.ecore_mcp_protocol_stats*
  store %union.ecore_mcp_protocol_stats* %14, %union.ecore_mcp_protocol_stats** %8, align 8
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %36 [
    i32 128, label %17
  ]

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.ecore_dev*
  %20 = call i32 @ecore_get_vport_stats(%struct.ecore_dev* %19, %struct.ecore_eth_stats* %9)
  %21 = getelementptr inbounds %struct.ecore_eth_stats, %struct.ecore_eth_stats* %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %union.ecore_mcp_protocol_stats*, %union.ecore_mcp_protocol_stats** %8, align 8
  %25 = bitcast %union.ecore_mcp_protocol_stats* %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 4
  %27 = getelementptr inbounds %struct.ecore_eth_stats, %struct.ecore_eth_stats* %9, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %union.ecore_mcp_protocol_stats*, %union.ecore_mcp_protocol_stats** %8, align 8
  %31 = bitcast %union.ecore_mcp_protocol_stats* %30 to %struct.TYPE_6__*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %union.ecore_mcp_protocol_stats*, %union.ecore_mcp_protocol_stats** %8, align 8
  %34 = bitcast %union.ecore_mcp_protocol_stats* %33 to %struct.TYPE_6__*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @QL_DPRINT1(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %36, %17
  ret void
}

declare dso_local i32 @ecore_get_vport_stats(%struct.ecore_dev*, %struct.ecore_eth_stats*) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
