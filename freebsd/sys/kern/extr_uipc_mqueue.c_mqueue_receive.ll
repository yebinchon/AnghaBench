; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.mqueue = type { i64 }
%struct.timespec = type { i32, i64 }
%struct.mqueue_msg = type { i64 }
%struct.timeval = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqueue_receive(%struct.mqueue* %0, i8* %1, i64 %2, i32* %3, i32 %4, %struct.timespec* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mqueue*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timespec*, align 8
  %14 = alloca %struct.mqueue_msg*, align 8
  %15 = alloca %struct.timespec, align 8
  %16 = alloca %struct.timespec, align 8
  %17 = alloca %struct.timeval, align 4
  %18 = alloca i32, align 4
  store %struct.mqueue* %0, %struct.mqueue** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.timespec* %5, %struct.timespec** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.mqueue*, %struct.mqueue** %8, align 8
  %21 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @EMSGSIZE, align 4
  store i32 %25, i32* %7, align 4
  br label %131

26:                                               ; preds = %6
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load %struct.mqueue*, %struct.mqueue** %8, align 8
  %31 = call i32 @_mqueue_recv(%struct.mqueue* %30, %struct.mqueue_msg** %14, i32 -1)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %7, align 4
  br label %131

36:                                               ; preds = %29
  br label %108

37:                                               ; preds = %26
  %38 = load %struct.timespec*, %struct.timespec** %13, align 8
  %39 = icmp eq %struct.timespec* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.mqueue*, %struct.mqueue** %8, align 8
  %42 = call i32 @_mqueue_recv(%struct.mqueue* %41, %struct.mqueue_msg** %14, i32 0)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %7, align 4
  br label %131

47:                                               ; preds = %40
  br label %108

48:                                               ; preds = %37
  %49 = load %struct.mqueue*, %struct.mqueue** %8, align 8
  %50 = call i32 @_mqueue_recv(%struct.mqueue* %49, %struct.mqueue_msg** %14, i32 -1)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %108

54:                                               ; preds = %48
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %18, align 4
  store i32 %59, i32* %7, align 4
  br label %131

60:                                               ; preds = %54
  %61 = load %struct.timespec*, %struct.timespec** %13, align 8
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 1000000000
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.timespec*, %struct.timespec** %13, align 8
  %67 = getelementptr inbounds %struct.timespec, %struct.timespec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65, %60
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  store i32 %72, i32* %7, align 4
  br label %131

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %106, %73
  %75 = call i32 @getnanotime(%struct.timespec* %15)
  %76 = load %struct.timespec*, %struct.timespec** %13, align 8
  %77 = call i32 @timespecsub(%struct.timespec* %76, %struct.timespec* %15, %struct.timespec* %16)
  %78 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85, %74
  %90 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  store i32 %91, i32* %7, align 4
  br label %131

92:                                               ; preds = %85, %81
  %93 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %17, %struct.timespec* %16)
  %94 = load %struct.mqueue*, %struct.mqueue** %8, align 8
  %95 = call i32 @tvtohz(%struct.timeval* %17)
  %96 = call i32 @_mqueue_recv(%struct.mqueue* %94, %struct.mqueue_msg** %14, i32 %95)
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %18, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %107

100:                                              ; preds = %92
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* @ETIMEDOUT, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %18, align 4
  store i32 %105, i32* %7, align 4
  br label %131

106:                                              ; preds = %100
  br label %74

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %53, %47, %36
  %109 = load %struct.mqueue_msg*, %struct.mqueue_msg** %14, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @mqueue_savemsg(%struct.mqueue_msg* %109, i8* %110, i32* %111)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load %struct.mqueue_msg*, %struct.mqueue_msg** %14, align 8
  %117 = getelementptr inbounds %struct.mqueue_msg, %struct.mqueue_msg* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  store i64 %118, i64* %122, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 1
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %115, %108
  %128 = load %struct.mqueue_msg*, %struct.mqueue_msg** %14, align 8
  %129 = call i32 @mqueue_freemsg(%struct.mqueue_msg* %128)
  %130 = load i32, i32* %18, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %127, %104, %89, %70, %58, %45, %34, %24
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @_mqueue_recv(%struct.mqueue*, %struct.mqueue_msg**, i32) #1

declare dso_local i32 @getnanotime(%struct.timespec*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @mqueue_savemsg(%struct.mqueue_msg*, i8*, i32*) #1

declare dso_local i32 @mqueue_freemsg(%struct.mqueue_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
