; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_htcp.c_htcp_record_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_htcp.c_htcp_record_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.htcp* }
%struct.htcp = type { i64, i64 }

@t_srtt = common dso_local global i32 0, align 4
@TCPTV_SRTTBASE = common dso_local global i64 0, align 8
@t_rttupdated = common dso_local global i32 0, align 4
@HTCP_MIN_RTT_SAMPLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*)* @htcp_record_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcp_record_rtt(%struct.cc_var* %0) #0 {
  %2 = alloca %struct.cc_var*, align 8
  %3 = alloca %struct.htcp*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %2, align 8
  %4 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %5 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %4, i32 0, i32 0
  %6 = load %struct.htcp*, %struct.htcp** %5, align 8
  store %struct.htcp* %6, %struct.htcp** %3, align 8
  %7 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %8 = load i32, i32* @t_srtt, align 4
  %9 = call i64 @CCV(%struct.cc_var* %7, i32 %8)
  %10 = load %struct.htcp*, %struct.htcp** %3, align 8
  %11 = getelementptr inbounds %struct.htcp, %struct.htcp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.htcp*, %struct.htcp** %3, align 8
  %16 = getelementptr inbounds %struct.htcp, %struct.htcp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TCPTV_SRTTBASE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14, %1
  %21 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %22 = load i32, i32* @t_rttupdated, align 4
  %23 = call i64 @CCV(%struct.cc_var* %21, i32 %22)
  %24 = load i64, i64* @HTCP_MIN_RTT_SAMPLES, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %28 = load i32, i32* @t_srtt, align 4
  %29 = call i64 @CCV(%struct.cc_var* %27, i32 %28)
  %30 = load %struct.htcp*, %struct.htcp** %3, align 8
  %31 = getelementptr inbounds %struct.htcp, %struct.htcp* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %20, %14
  %33 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %34 = load i32, i32* @t_srtt, align 4
  %35 = call i64 @CCV(%struct.cc_var* %33, i32 %34)
  %36 = load %struct.htcp*, %struct.htcp** %3, align 8
  %37 = getelementptr inbounds %struct.htcp, %struct.htcp* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %42 = load i32, i32* @t_rttupdated, align 4
  %43 = call i64 @CCV(%struct.cc_var* %41, i32 %42)
  %44 = load i64, i64* @HTCP_MIN_RTT_SAMPLES, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %48 = load i32, i32* @t_srtt, align 4
  %49 = call i64 @CCV(%struct.cc_var* %47, i32 %48)
  %50 = load %struct.htcp*, %struct.htcp** %3, align 8
  %51 = getelementptr inbounds %struct.htcp, %struct.htcp* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %40, %32
  ret void
}

declare dso_local i64 @CCV(%struct.cc_var*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
