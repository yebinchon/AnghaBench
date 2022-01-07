; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_set_prsctp_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_set_prsctp_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_stream_queue_pending = type { i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.timeval = type { i32, i32 }

@SCTP_PR_SCTP_TTL = common dso_local global i32 0, align 4
@SCTP_DEBUG_USRREQ1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown PR_SCTP policy %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_stream_queue_pending*)* @sctp_set_prsctp_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_set_prsctp_policy(%struct.sctp_stream_queue_pending* %0) #0 {
  %2 = alloca %struct.sctp_stream_queue_pending*, align 8
  %3 = alloca %struct.timeval, align 4
  store %struct.sctp_stream_queue_pending* %0, %struct.sctp_stream_queue_pending** %2, align 8
  %4 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %5 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @PR_SCTP_ENABLED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %11 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @PR_SCTP_POLICY(i32 %12)
  %14 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %15 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  br label %39

18:                                               ; preds = %1
  %19 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %20 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load i32, i32* @SCTP_PR_SCTP_TTL, align 4
  %25 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %26 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %30 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PR_SCTP_POLICY(i32 %31)
  %33 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %34 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %38

37:                                               ; preds = %18
  br label %91

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %9
  %40 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %41 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PR_SCTP_POLICY(i32 %42)
  switch i32 %43, label %84 [
    i32 130, label %44
    i32 128, label %54
    i32 129, label %74
  ]

44:                                               ; preds = %39
  %45 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %46 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %49 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %52 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  br label %91

54:                                               ; preds = %39
  %55 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %56 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %55, i32 0, i32 3
  %57 = call i32 @SCTP_GETTIME_TIMEVAL(%struct.TYPE_3__* %56)
  %58 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %59 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sdiv i64 %60, 1000
  %62 = trunc i64 %61 to i32
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %65 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = mul nsw i64 %66, 1000
  %68 = srem i64 %67, 1000000
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %72 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %71, i32 0, i32 3
  %73 = call i32 @timevaladd(%struct.TYPE_3__* %72, %struct.timeval* %3)
  br label %91

74:                                               ; preds = %39
  %75 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %76 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %79 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %82 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 0, i32* %83, align 8
  br label %91

84:                                               ; preds = %39
  %85 = load i32, i32* @SCTP_DEBUG_USRREQ1, align 4
  %86 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %2, align 8
  %87 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @PR_SCTP_POLICY(i32 %88)
  %90 = call i32 @SCTPDBG(i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %37, %84, %74, %54, %44
  ret void
}

declare dso_local i64 @PR_SCTP_ENABLED(i32) #1

declare dso_local i32 @PR_SCTP_POLICY(i32) #1

declare dso_local i32 @SCTP_GETTIME_TIMEVAL(%struct.TYPE_3__*) #1

declare dso_local i32 @timevaladd(%struct.TYPE_3__*, %struct.timeval*) #1

declare dso_local i32 @SCTPDBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
