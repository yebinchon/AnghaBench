; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_htcp_param_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_htcp_param_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_nets = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_nets*)* @htcp_param_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcp_param_update(%struct.sctp_nets* %0) #0 {
  %2 = alloca %struct.sctp_nets*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sctp_nets* %0, %struct.sctp_nets** %2, align 8
  %5 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %11 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %16 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @htcp_beta_update(%struct.TYPE_5__* %17, i64 %18, i64 %19)
  %21 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %22 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @htcp_alpha_update(%struct.TYPE_5__* %23)
  %25 = load i64, i64* %3, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %1
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = sub nsw i64 %33, %34
  %36 = mul nsw i64 %35, 95
  %37 = sdiv i64 %36, 100
  %38 = add nsw i64 %32, %37
  %39 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %40 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %31, %27, %1
  ret void
}

declare dso_local i32 @htcp_beta_update(%struct.TYPE_5__*, i64, i64) #1

declare dso_local i32 @htcp_alpha_update(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
