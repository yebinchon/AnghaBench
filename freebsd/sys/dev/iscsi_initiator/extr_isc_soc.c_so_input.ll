; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_soc.c_so_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_soc.c_so_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"out of pdus, wait\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @so_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @so_input(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = call i32 @debug_called(i32 8)
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = call i32 @so_getbhs(%struct.TYPE_17__* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = call %struct.TYPE_16__* @pdu_alloc(i32 %13, i32 %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %3, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = icmp eq %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = call i32 @debug(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call %struct.TYPE_16__* @pdu_alloc(i32 %22, i32 %23)
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %3, align 8
  br label %25

25:                                               ; preds = %18, %10
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i32 4, i32* %34, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = call i32 @so_recv(%struct.TYPE_17__* %35, %struct.TYPE_16__* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 2048
  store i32 %42, i32* %4, align 4
  br label %56

43:                                               ; preds = %25
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = call i32 @getbintime(i32* %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = call i32 @ism_recv(%struct.TYPE_17__* %53, %struct.TYPE_16__* %54)
  br label %56

56:                                               ; preds = %43, %40
  br label %57

57:                                               ; preds = %56, %1
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @so_getbhs(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @pdu_alloc(i32, i32) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i32 @so_recv(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @getbintime(i32*) #1

declare dso_local i32 @ism_recv(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
