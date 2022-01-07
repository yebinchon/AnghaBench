; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_enforce_cwnd_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_enforce_cwnd_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i64 }
%struct.sctp_nets = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_association*, %struct.sctp_nets*)* @sctp_enforce_cwnd_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_enforce_cwnd_limit(%struct.sctp_association* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %5 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %6 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %2
  %10 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %14 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %9
  %18 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %19 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %22 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 4
  %26 = icmp ugt i64 %20, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %17
  %28 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %32 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %34 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %37 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 4
  %41 = icmp ult i64 %35, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %44 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = sub i64 %46, 4
  %48 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %49 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %42, %27
  br label %51

51:                                               ; preds = %50, %17, %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
