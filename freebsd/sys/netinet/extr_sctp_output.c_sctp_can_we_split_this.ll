; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_can_we_split_this.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_can_we_split_this.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@sctp_min_residual = common dso_local global i32 0, align 4
@sctp_min_split_point = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sctp_tcb*, i64, i64, i64, i32)* @sctp_can_we_split_this to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sctp_can_we_split_this(%struct.sctp_tcb* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_tcb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %20 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %6, align 8
  br label %62

26:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %62

27:                                               ; preds = %14
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %6, align 8
  br label %62

29:                                               ; preds = %5
  %30 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %31 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @SCTP_SB_LIMIT_SND(i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %6, align 8
  br label %62

38:                                               ; preds = %29
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load i32, i32* @sctp_min_residual, align 4
  %47 = call i64 @SCTP_BASE_SYSCTL(i32 %46)
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %38
  store i64 0, i64* %6, align 8
  br label %62

50:                                               ; preds = %42
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @sctp_min_split_point, align 4
  %53 = call i64 @SCTP_BASE_SYSCTL(i32 %52)
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @min(i64 %53, i64 %54)
  %56 = icmp sge i64 %51, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @min(i64 %58, i64 %59)
  store i64 %60, i64* %6, align 8
  br label %62

61:                                               ; preds = %50
  store i64 0, i64* %6, align 8
  br label %62

62:                                               ; preds = %61, %57, %49, %36, %27, %26, %24
  %63 = load i64, i64* %6, align 8
  ret i64 %63
}

declare dso_local i64 @SCTP_SB_LIMIT_SND(i32) #1

declare dso_local i64 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
