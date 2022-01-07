; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_source_address_selection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_source_address_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ifa = type { i32 }
%struct.sctp_inpcb = type { i32, i32 }
%struct.sctp_tcb = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.sctp_nets = type { i32 }
%struct.sockaddr = type { i32 }

@SCTP_DEBUG_OUTPUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Select source addr for:\00", align 1
@SCTP_PCB_FLAGS_BOUNDALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ifa* @sctp_source_address_selection(%struct.sctp_inpcb* %0, %struct.sctp_tcb* %1, %struct.TYPE_10__* %2, %struct.sctp_nets* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sctp_ifa*, align 8
  %8 = alloca %struct.sctp_inpcb*, align 8
  %9 = alloca %struct.sctp_tcb*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.sctp_nets*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sctp_ifa*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %8, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store %struct.sctp_nets* %3, %struct.sctp_nets** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %26 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SCTP_RTALLOC(%struct.TYPE_10__* %23, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %22, %6
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store %struct.sctp_ifa* null, %struct.sctp_ifa** %7, align 8
  br label %94

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %40 = load i32, i32* %17, align 4
  switch i32 %40, label %41 [
  ]

41:                                               ; preds = %35
  %42 = load i32, i32* @SCTP_DEBUG_OUTPUT2, align 4
  %43 = call i32 @SCTPDBG(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @SCTP_DEBUG_OUTPUT2, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = bitcast %struct.TYPE_9__* %46 to %struct.sockaddr*
  %48 = call i32 @SCTPDBG_ADDR(i32 %44, %struct.sockaddr* %47)
  %49 = call i32 (...) @SCTP_IPI_ADDR_RLOCK()
  %50 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %51 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SCTP_PCB_FLAGS_BOUNDALL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %41
  %57 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %58 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %59 = load %struct.sctp_nets*, %struct.sctp_nets** %11, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call %struct.sctp_ifa* @sctp_choose_boundall(%struct.sctp_inpcb* %57, %struct.sctp_tcb* %58, %struct.sctp_nets* %59, %struct.TYPE_10__* %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  store %struct.sctp_ifa* %66, %struct.sctp_ifa** %14, align 8
  %67 = call i32 (...) @SCTP_IPI_ADDR_RUNLOCK()
  %68 = load %struct.sctp_ifa*, %struct.sctp_ifa** %14, align 8
  store %struct.sctp_ifa* %68, %struct.sctp_ifa** %7, align 8
  br label %94

69:                                               ; preds = %41
  %70 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %71 = icmp ne %struct.sctp_tcb* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %74 = load %struct.sctp_tcb*, %struct.sctp_tcb** %9, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call %struct.sctp_ifa* @sctp_choose_boundspecific_stcb(%struct.sctp_inpcb* %73, %struct.sctp_tcb* %74, %struct.TYPE_10__* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  store %struct.sctp_ifa* %81, %struct.sctp_ifa** %14, align 8
  br label %91

82:                                               ; preds = %69
  %83 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call %struct.sctp_ifa* @sctp_choose_boundspecific_inp(%struct.sctp_inpcb* %83, %struct.TYPE_10__* %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  store %struct.sctp_ifa* %90, %struct.sctp_ifa** %14, align 8
  br label %91

91:                                               ; preds = %82, %72
  %92 = call i32 (...) @SCTP_IPI_ADDR_RUNLOCK()
  %93 = load %struct.sctp_ifa*, %struct.sctp_ifa** %14, align 8
  store %struct.sctp_ifa* %93, %struct.sctp_ifa** %7, align 8
  br label %94

94:                                               ; preds = %91, %56, %34
  %95 = load %struct.sctp_ifa*, %struct.sctp_ifa** %7, align 8
  ret %struct.sctp_ifa* %95
}

declare dso_local i32 @SCTP_RTALLOC(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @SCTPDBG(i32, i8*) #1

declare dso_local i32 @SCTPDBG_ADDR(i32, %struct.sockaddr*) #1

declare dso_local i32 @SCTP_IPI_ADDR_RLOCK(...) #1

declare dso_local %struct.sctp_ifa* @sctp_choose_boundall(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*, %struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCTP_IPI_ADDR_RUNLOCK(...) #1

declare dso_local %struct.sctp_ifa* @sctp_choose_boundspecific_stcb(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.sctp_ifa* @sctp_choose_boundspecific_inp(%struct.sctp_inpcb*, %struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
