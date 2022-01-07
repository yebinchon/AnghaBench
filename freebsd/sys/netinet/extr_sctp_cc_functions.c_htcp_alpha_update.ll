; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_htcp_alpha_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_htcp_alpha_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htcp = type { i32, i32, i32 }

@hz = common dso_local global i32 0, align 4
@use_rtt_scaling = common dso_local global i64 0, align 8
@ALPHA_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htcp*)* @htcp_alpha_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcp_alpha_update(%struct.htcp* %0) #0 {
  %2 = alloca %struct.htcp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.htcp* %0, %struct.htcp** %2, align 8
  %7 = load %struct.htcp*, %struct.htcp** %2, align 8
  %8 = getelementptr inbounds %struct.htcp, %struct.htcp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %10 = load %struct.htcp*, %struct.htcp** %2, align 8
  %11 = call i32 @htcp_cong_time(%struct.htcp* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @hz, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load i32, i32* @hz, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 10, %19
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 2
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 2
  %25 = mul nsw i32 %22, %24
  %26 = load i32, i32* @hz, align 4
  %27 = sdiv i32 %25, %26
  %28 = add nsw i32 %20, %27
  %29 = load i32, i32* @hz, align 4
  %30 = sdiv i32 %28, %29
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %15, %1
  %33 = load i64, i64* @use_rtt_scaling, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i32, i32* @hz, align 4
  %40 = shl i32 %39, 3
  %41 = load i32, i32* %3, align 4
  %42 = mul nsw i32 10, %41
  %43 = sdiv i32 %40, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @max(i32 %44, i32 4)
  %46 = call i32 @min(i32 %45, i32 80)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %47, 3
  %49 = load i32, i32* %6, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %38
  br label %55

55:                                               ; preds = %54, %35, %32
  %56 = load i32, i32* %4, align 4
  %57 = mul nsw i32 2, %56
  %58 = load %struct.htcp*, %struct.htcp** %2, align 8
  %59 = getelementptr inbounds %struct.htcp, %struct.htcp* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 128, %60
  %62 = mul nsw i32 %57, %61
  %63 = load %struct.htcp*, %struct.htcp** %2, align 8
  %64 = getelementptr inbounds %struct.htcp, %struct.htcp* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.htcp*, %struct.htcp** %2, align 8
  %66 = getelementptr inbounds %struct.htcp, %struct.htcp* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %55
  %70 = load i32, i32* @ALPHA_BASE, align 4
  %71 = load %struct.htcp*, %struct.htcp** %2, align 8
  %72 = getelementptr inbounds %struct.htcp, %struct.htcp* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %55
  ret void
}

declare dso_local i32 @htcp_cong_time(%struct.htcp*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
