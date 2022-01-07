; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_htcp.c_htcp_recalc_beta.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_htcp.c_htcp_recalc_beta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.htcp* }
%struct.htcp = type { i32, i32, i32 }

@V_htcp_adaptive_backoff = common dso_local global i64 0, align 8
@TCPTV_SRTTBASE = common dso_local global i32 0, align 4
@HTCP_MINBETA = common dso_local global i32 0, align 4
@HTCP_SHIFT = common dso_local global i32 0, align 4
@HTCP_MAXBETA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*)* @htcp_recalc_beta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcp_recalc_beta(%struct.cc_var* %0) #0 {
  %2 = alloca %struct.cc_var*, align 8
  %3 = alloca %struct.htcp*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %2, align 8
  %4 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %5 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %4, i32 0, i32 0
  %6 = load %struct.htcp*, %struct.htcp** %5, align 8
  store %struct.htcp* %6, %struct.htcp** %3, align 8
  %7 = load i64, i64* @V_htcp_adaptive_backoff, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.htcp*, %struct.htcp** %3, align 8
  %11 = getelementptr inbounds %struct.htcp, %struct.htcp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TCPTV_SRTTBASE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.htcp*, %struct.htcp** %3, align 8
  %17 = getelementptr inbounds %struct.htcp, %struct.htcp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TCPTV_SRTTBASE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load i32, i32* @HTCP_MINBETA, align 4
  %23 = load %struct.htcp*, %struct.htcp** %3, align 8
  %24 = getelementptr inbounds %struct.htcp, %struct.htcp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HTCP_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load %struct.htcp*, %struct.htcp** %3, align 8
  %29 = getelementptr inbounds %struct.htcp, %struct.htcp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %27, %30
  %32 = call i32 @max(i32 %22, i32 %31)
  %33 = load i32, i32* @HTCP_MAXBETA, align 4
  %34 = call i32 @min(i32 %32, i32 %33)
  %35 = load %struct.htcp*, %struct.htcp** %3, align 8
  %36 = getelementptr inbounds %struct.htcp, %struct.htcp* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %15, %9, %1
  %38 = load i32, i32* @HTCP_MINBETA, align 4
  %39 = load %struct.htcp*, %struct.htcp** %3, align 8
  %40 = getelementptr inbounds %struct.htcp, %struct.htcp* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %21
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
