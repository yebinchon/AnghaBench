; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2o_single_reply = type { i64, i32, i64 }
%struct.i2o_util_event_reply_message = type { i32, i32* }
%struct.i2o_fault_reply = type { i32 }

@I2O_UTIL_EVENT_REGISTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"pstiop: EVENT!! idx=%08x data=%08x\0A\00", align 1
@I2O_MESSAGE_FLAGS_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iop_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iop_softc*, align 8
  %4 = alloca %struct.i2o_single_reply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2o_util_event_reply_message*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.iop_softc*
  store %struct.iop_softc* %8, %struct.iop_softc** %3, align 8
  %9 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %10 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %9, i32 0, i32 2
  %11 = call i32 @mtx_lock(i32* %10)
  br label %12

12:                                               ; preds = %1, %71
  %13 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %14 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %21 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %79

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %12
  %29 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %30 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %34 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = add nsw i32 %31, %36
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.i2o_single_reply*
  store %struct.i2o_single_reply* %39, %struct.i2o_single_reply** %4, align 8
  %40 = load %struct.i2o_single_reply*, %struct.i2o_single_reply** %4, align 8
  %41 = getelementptr inbounds %struct.i2o_single_reply, %struct.i2o_single_reply* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @I2O_UTIL_EVENT_REGISTER, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %28
  %46 = load %struct.i2o_single_reply*, %struct.i2o_single_reply** %4, align 8
  %47 = bitcast %struct.i2o_single_reply* %46 to %struct.i2o_util_event_reply_message*
  store %struct.i2o_util_event_reply_message* %47, %struct.i2o_util_event_reply_message** %6, align 8
  %48 = load %struct.i2o_util_event_reply_message*, %struct.i2o_util_event_reply_message** %6, align 8
  %49 = getelementptr inbounds %struct.i2o_util_event_reply_message, %struct.i2o_util_event_reply_message* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.i2o_util_event_reply_message*, %struct.i2o_util_event_reply_message** %6, align 8
  %52 = getelementptr inbounds %struct.i2o_util_event_reply_message, %struct.i2o_util_event_reply_message* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %55)
  br label %79

57:                                               ; preds = %28
  %58 = load %struct.i2o_single_reply*, %struct.i2o_single_reply** %4, align 8
  %59 = getelementptr inbounds %struct.i2o_single_reply, %struct.i2o_single_reply* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @I2O_MESSAGE_FLAGS_FAIL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %66 = load %struct.i2o_single_reply*, %struct.i2o_single_reply** %4, align 8
  %67 = bitcast %struct.i2o_single_reply* %66 to %struct.i2o_fault_reply*
  %68 = getelementptr inbounds %struct.i2o_fault_reply, %struct.i2o_fault_reply* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @iop_free_mfa(%struct.iop_softc* %65, i32 %69)
  br label %71

71:                                               ; preds = %64, %57
  %72 = load %struct.i2o_single_reply*, %struct.i2o_single_reply** %4, align 8
  %73 = getelementptr inbounds %struct.i2o_single_reply, %struct.i2o_single_reply* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to void (%struct.iop_softc*, i32, %struct.i2o_single_reply*)*
  %76 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.i2o_single_reply*, %struct.i2o_single_reply** %4, align 8
  call void %75(%struct.iop_softc* %76, i32 %77, %struct.i2o_single_reply* %78)
  br label %12

79:                                               ; preds = %45, %26
  %80 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %81 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %80, i32 0, i32 2
  %82 = call i32 @mtx_unlock(i32* %81)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @iop_free_mfa(%struct.iop_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
