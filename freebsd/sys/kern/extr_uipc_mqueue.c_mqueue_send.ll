; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue = type { i64 }
%struct.timespec = type { i32, i64 }
%struct.mqueue_msg = type { i32 }
%struct.timeval = type { i32 }

@MQ_PRIO_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqueue_send(%struct.mqueue* %0, i8* %1, i64 %2, i32 %3, i32 %4, %struct.timespec* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mqueue*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
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
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.timespec* %5, %struct.timespec** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @MQ_PRIO_MAX, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %7, align 4
  br label %125

24:                                               ; preds = %6
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.mqueue*, %struct.mqueue** %8, align 8
  %27 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @EMSGSIZE, align 4
  store i32 %31, i32* %7, align 4
  br label %125

32:                                               ; preds = %24
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.mqueue_msg* @mqueue_loadmsg(i8* %33, i64 %34, i32 %35)
  store %struct.mqueue_msg* %36, %struct.mqueue_msg** %14, align 8
  %37 = load %struct.mqueue_msg*, %struct.mqueue_msg** %14, align 8
  %38 = icmp eq %struct.mqueue_msg* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @EFAULT, align 4
  store i32 %40, i32* %7, align 4
  br label %125

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load %struct.mqueue*, %struct.mqueue** %8, align 8
  %46 = load %struct.mqueue_msg*, %struct.mqueue_msg** %14, align 8
  %47 = call i32 @_mqueue_send(%struct.mqueue* %45, %struct.mqueue_msg* %46, i32 -1)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %121

51:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %125

52:                                               ; preds = %41
  %53 = load %struct.timespec*, %struct.timespec** %13, align 8
  %54 = icmp eq %struct.timespec* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.mqueue*, %struct.mqueue** %8, align 8
  %57 = load %struct.mqueue_msg*, %struct.mqueue_msg** %14, align 8
  %58 = call i32 @_mqueue_send(%struct.mqueue* %56, %struct.mqueue_msg* %57, i32 0)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %121

62:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %125

63:                                               ; preds = %52
  %64 = load %struct.mqueue*, %struct.mqueue** %8, align 8
  %65 = load %struct.mqueue_msg*, %struct.mqueue_msg** %14, align 8
  %66 = call i32 @_mqueue_send(%struct.mqueue* %64, %struct.mqueue_msg* %65, i32 -1)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %125

70:                                               ; preds = %63
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %121

75:                                               ; preds = %70
  %76 = load %struct.timespec*, %struct.timespec** %13, align 8
  %77 = getelementptr inbounds %struct.timespec, %struct.timespec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 1000000000
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.timespec*, %struct.timespec** %13, align 8
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80, %75
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %18, align 4
  br label %121

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %115, %87
  %89 = call i32 @getnanotime(%struct.timespec* %15)
  %90 = load %struct.timespec*, %struct.timespec** %13, align 8
  %91 = call i32 @timespecsub(%struct.timespec* %90, %struct.timespec* %15, %struct.timespec* %16)
  %92 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %88
  %104 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %104, i32* %18, align 4
  br label %116

105:                                              ; preds = %99, %95
  %106 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %17, %struct.timespec* %16)
  %107 = load %struct.mqueue*, %struct.mqueue** %8, align 8
  %108 = load %struct.mqueue_msg*, %struct.mqueue_msg** %14, align 8
  %109 = call i32 @tvtohz(%struct.timeval* %17)
  %110 = call i32 @_mqueue_send(%struct.mqueue* %107, %struct.mqueue_msg* %108, i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* @ETIMEDOUT, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %116

115:                                              ; preds = %105
  br label %88

116:                                              ; preds = %114, %103
  %117 = load i32, i32* %18, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  br label %125

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %85, %74, %61, %50
  %122 = load %struct.mqueue_msg*, %struct.mqueue_msg** %14, align 8
  %123 = call i32 @mqueue_freemsg(%struct.mqueue_msg* %122)
  %124 = load i32, i32* %18, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %121, %119, %69, %62, %51, %39, %30, %22
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local %struct.mqueue_msg* @mqueue_loadmsg(i8*, i64, i32) #1

declare dso_local i32 @_mqueue_send(%struct.mqueue*, %struct.mqueue_msg*, i32) #1

declare dso_local i32 @getnanotime(%struct.timespec*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @mqueue_freemsg(%struct.mqueue_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
