; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_hd.c_hd_ack_received.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_hd.c_hd_ack_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cc_var*, i64)*, i32 (%struct.cc_var*, i32)* }
%struct.cc_var = type { i32 }
%struct.ertt = type { i32, i32, i32 }

@CC_ACK = common dso_local global i64 0, align 8
@osd = common dso_local global i32 0, align 4
@ertt_id = common dso_local global i32 0, align 4
@V_hd_qthresh = common dso_local global i64 0, align 8
@V_hd_qmin = common dso_local global i32 0, align 4
@t_flags = common dso_local global i32 0, align 4
@newreno_cc_algo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CC_ECN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*, i64)* @hd_ack_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hd_ack_received(%struct.cc_var* %0, i64 %1) #0 {
  %3 = alloca %struct.cc_var*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ertt*, align 8
  %6 = alloca i32, align 4
  store %struct.cc_var* %0, %struct.cc_var** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @CC_ACK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %64

10:                                               ; preds = %2
  %11 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %12 = load i32, i32* @osd, align 4
  %13 = call i32 @CCV(%struct.cc_var* %11, i32 %12)
  %14 = load i32, i32* @ertt_id, align 4
  %15 = call %struct.ertt* @khelp_get_osd(i32 %13, i32 %14)
  store %struct.ertt* %15, %struct.ertt** %5, align 8
  %16 = load %struct.ertt*, %struct.ertt** %5, align 8
  %17 = getelementptr inbounds %struct.ertt, %struct.ertt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %10
  %21 = load %struct.ertt*, %struct.ertt** %5, align 8
  %22 = getelementptr inbounds %struct.ertt, %struct.ertt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  %26 = load i64, i64* @V_hd_qthresh, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %25
  %29 = load %struct.ertt*, %struct.ertt** %5, align 8
  %30 = getelementptr inbounds %struct.ertt, %struct.ertt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ertt*, %struct.ertt** %5, align 8
  %33 = getelementptr inbounds %struct.ertt, %struct.ertt* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @V_hd_qmin, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %28
  %40 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %41 = load i32, i32* @t_flags, align 4
  %42 = call i32 @CCV(%struct.cc_var* %40, i32 %41)
  %43 = call i32 @IN_RECOVERY(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ertt*, %struct.ertt** %5, align 8
  %48 = getelementptr inbounds %struct.ertt, %struct.ertt* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ertt*, %struct.ertt** %5, align 8
  %51 = getelementptr inbounds %struct.ertt, %struct.ertt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  %54 = call i64 @should_backoff(i32 %46, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load i32 (%struct.cc_var*, i32)*, i32 (%struct.cc_var*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @newreno_cc_algo, i32 0, i32 1), align 8
  %58 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %59 = load i32, i32* @CC_ECN, align 4
  %60 = call i32 %57(%struct.cc_var* %58, i32 %59)
  br label %69

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61, %39, %28
  br label %63

63:                                               ; preds = %62, %25, %20, %10
  br label %64

64:                                               ; preds = %63, %2
  %65 = load i32 (%struct.cc_var*, i64)*, i32 (%struct.cc_var*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @newreno_cc_algo, i32 0, i32 0), align 8
  %66 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i32 %65(%struct.cc_var* %66, i64 %67)
  br label %69

69:                                               ; preds = %64, %56
  ret void
}

declare dso_local %struct.ertt* @khelp_get_osd(i32, i32) #1

declare dso_local i32 @CCV(%struct.cc_var*, i32) #1

declare dso_local i32 @IN_RECOVERY(i32) #1

declare dso_local i64 @should_backoff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
