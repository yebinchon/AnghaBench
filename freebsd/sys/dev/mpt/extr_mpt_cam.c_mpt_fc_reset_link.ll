; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_fc_reset_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_fc_reset_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_FC_PRIM_SEND_FLAGS_RESET_LINK = common dso_local global i32 0, align 4
@MPI_FUNCTION_FC_PRIMITIVE_SEND = common dso_local global i32 0, align 4
@fc_els_handler_id = common dso_local global i32 0, align 4
@REQ_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i32)* @mpt_fc_reset_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_fc_reset_link(%struct.mpt_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = call %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc* %9, i32 %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = call i32 @memset(%struct.TYPE_9__* %20, i32 0, i32 12)
  %22 = load i32, i32* @MPI_FC_PRIM_SEND_FLAGS_RESET_LINK, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @MPI_FUNCTION_FC_PRIMITIVE_SEND, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @fc_els_handler_id, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @htole32(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = call i32 @mpt_send_cmd(%struct.mpt_softc* %36, %struct.TYPE_8__* %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %16
  %42 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = load i32, i32* @REQ_STATE_DONE, align 4
  %45 = load i32, i32* @REQ_STATE_DONE, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @mpt_wait_req(%struct.mpt_softc* %42, %struct.TYPE_8__* %43, i32 %44, i32 %45, i32 %46, i32 60000)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = call i32 @mpt_free_request(%struct.mpt_softc* %51, %struct.TYPE_8__* %52)
  br label %54

54:                                               ; preds = %50, %41
  br label %55

55:                                               ; preds = %54, %16
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @mpt_send_cmd(%struct.mpt_softc*, %struct.TYPE_8__*) #1

declare dso_local i32 @mpt_wait_req(%struct.mpt_softc*, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
