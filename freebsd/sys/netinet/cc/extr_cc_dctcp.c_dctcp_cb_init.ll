; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_dctcp.c_dctcp_cb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_dctcp.c_dctcp_cb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.dctcp* }
%struct.dctcp = type { i64, i64, i64, i64, i64, i32, i64, i64 }

@M_dctcp = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V_dctcp_alpha = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_var*)* @dctcp_cb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dctcp_cb_init(%struct.cc_var* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_var*, align 8
  %4 = alloca %struct.dctcp*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %3, align 8
  %5 = load i32, i32* @M_dctcp, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.dctcp* @malloc(i32 64, i32 %5, i32 %8)
  store %struct.dctcp* %9, %struct.dctcp** %4, align 8
  %10 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %11 = icmp eq %struct.dctcp* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  store i32 %13, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %16 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %18 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @V_dctcp_alpha, align 4
  %20 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %21 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %23 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %25 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %27 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %29 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %31 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.dctcp*, %struct.dctcp** %4, align 8
  %33 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %34 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %33, i32 0, i32 0
  store %struct.dctcp* %32, %struct.dctcp** %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %14, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.dctcp* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
