; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c__mqueue_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c__mqueue_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue = type { i64, i32, i32, i32, i32*, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mqueue_msg = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mqrecv\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@msg_link = common dso_local global i32 0, align 4
@MQ_WSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mqueue*, %struct.mqueue_msg**, i32)* @_mqueue_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mqueue_recv(%struct.mqueue* %0, %struct.mqueue_msg** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mqueue*, align 8
  %6 = alloca %struct.mqueue_msg**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mqueue* %0, %struct.mqueue** %5, align 8
  store %struct.mqueue_msg** %1, %struct.mqueue_msg*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %10 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %9, i32 0, i32 2
  %11 = call i32 @mtx_lock(i32* %10)
  br label %12

12:                                               ; preds = %52, %3
  %13 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %14 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %13, i32 0, i32 3
  %15 = call %struct.mqueue_msg* @TAILQ_FIRST(i32* %14)
  %16 = load %struct.mqueue_msg**, %struct.mqueue_msg*** %6, align 8
  store %struct.mqueue_msg* %15, %struct.mqueue_msg** %16, align 8
  %17 = icmp eq %struct.mqueue_msg* %15, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ false, %12 ], [ %20, %18 ]
  br i1 %22, label %23, label %53

23:                                               ; preds = %21
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %28 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %27, i32 0, i32 2
  %29 = call i32 @mtx_unlock(i32* %28)
  %30 = load i32, i32* @EAGAIN, align 4
  store i32 %30, i32* %4, align 4
  br label %131

31:                                               ; preds = %23
  %32 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %33 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %37 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %36, i32 0, i32 0
  %38 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %39 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %38, i32 0, i32 2
  %40 = load i32, i32* @PCATCH, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @msleep(i64* %37, i32* %39, i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %44 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %31
  %51 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %31
  br label %12

53:                                               ; preds = %21
  %54 = load %struct.mqueue_msg**, %struct.mqueue_msg*** %6, align 8
  %55 = load %struct.mqueue_msg*, %struct.mqueue_msg** %54, align 8
  %56 = icmp ne %struct.mqueue_msg* %55, null
  br i1 %56, label %57, label %108

57:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  %58 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %59 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %58, i32 0, i32 3
  %60 = load %struct.mqueue_msg**, %struct.mqueue_msg*** %6, align 8
  %61 = load %struct.mqueue_msg*, %struct.mqueue_msg** %60, align 8
  %62 = load i32, i32* @msg_link, align 4
  %63 = call i32 @TAILQ_REMOVE(i32* %59, %struct.mqueue_msg* %61, i32 %62)
  %64 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %65 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.mqueue_msg**, %struct.mqueue_msg*** %6, align 8
  %69 = load %struct.mqueue_msg*, %struct.mqueue_msg** %68, align 8
  %70 = getelementptr inbounds %struct.mqueue_msg, %struct.mqueue_msg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %73 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  %78 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %79 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %57
  %83 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %84 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %83, i32 0, i32 6
  %85 = call i32 @wakeup_one(i64* %84)
  br label %86

86:                                               ; preds = %82, %57
  %87 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %88 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MQ_WSEL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = load i32, i32* @MQ_WSEL, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %97 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %101 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %100, i32 0, i32 5
  %102 = call i32 @selwakeup(%struct.TYPE_2__* %101)
  br label %103

103:                                              ; preds = %93, %86
  %104 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %105 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @KNOTE_LOCKED(i32* %106, i32 0)
  br label %108

108:                                              ; preds = %103, %53
  %109 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %110 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %115 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %120 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %119, i32 0, i32 3
  %121 = call i32 @TAILQ_EMPTY(i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %125 = call i32 @mqueue_send_notification(%struct.mqueue* %124)
  br label %126

126:                                              ; preds = %123, %118, %113, %108
  %127 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %128 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %127, i32 0, i32 2
  %129 = call i32 @mtx_unlock(i32* %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %126, %26
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mqueue_msg* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mqueue_msg*, i32) #1

declare dso_local i32 @wakeup_one(i64*) #1

declare dso_local i32 @selwakeup(%struct.TYPE_2__*) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mqueue_send_notification(%struct.mqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
