; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_htcp.c_htcp_cb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_htcp.c_htcp_cb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.htcp* }
%struct.htcp = type { i32, i64, i8*, i8*, i32, i32 }

@M_HTCP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HTCP_INIT_ALPHA = common dso_local global i32 0, align 4
@HTCP_MINBETA = common dso_local global i32 0, align 4
@TCPTV_SRTTBASE = common dso_local global i8* null, align 8
@ticks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_var*)* @htcp_cb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcp_cb_init(%struct.cc_var* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_var*, align 8
  %4 = alloca %struct.htcp*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %3, align 8
  %5 = load i32, i32* @M_HTCP, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = call %struct.htcp* @malloc(i32 40, i32 %5, i32 %6)
  store %struct.htcp* %7, %struct.htcp** %4, align 8
  %8 = load %struct.htcp*, %struct.htcp** %4, align 8
  %9 = icmp eq %struct.htcp* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* @HTCP_INIT_ALPHA, align 4
  %14 = load %struct.htcp*, %struct.htcp** %4, align 8
  %15 = getelementptr inbounds %struct.htcp, %struct.htcp* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @HTCP_MINBETA, align 4
  %17 = load %struct.htcp*, %struct.htcp** %4, align 8
  %18 = getelementptr inbounds %struct.htcp, %struct.htcp* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** @TCPTV_SRTTBASE, align 8
  %20 = load %struct.htcp*, %struct.htcp** %4, align 8
  %21 = getelementptr inbounds %struct.htcp, %struct.htcp* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @TCPTV_SRTTBASE, align 8
  %23 = load %struct.htcp*, %struct.htcp** %4, align 8
  %24 = getelementptr inbounds %struct.htcp, %struct.htcp* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.htcp*, %struct.htcp** %4, align 8
  %26 = getelementptr inbounds %struct.htcp, %struct.htcp* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @ticks, align 4
  %28 = load %struct.htcp*, %struct.htcp** %4, align 8
  %29 = getelementptr inbounds %struct.htcp, %struct.htcp* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.htcp*, %struct.htcp** %4, align 8
  %31 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %32 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %31, i32 0, i32 0
  store %struct.htcp* %30, %struct.htcp** %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %12, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.htcp* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
