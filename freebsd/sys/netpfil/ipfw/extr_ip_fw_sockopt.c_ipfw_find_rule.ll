; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_find_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_find_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, %struct.ip_fw** }
%struct.ip_fw = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_find_rule(%struct.ip_fw_chain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_fw*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %12 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %60, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %20, %21
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %25 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %24, i32 0, i32 1
  %26 = load %struct.ip_fw**, %struct.ip_fw*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %26, i64 %28
  %30 = load %struct.ip_fw*, %struct.ip_fw** %29, align 8
  store %struct.ip_fw* %30, %struct.ip_fw** %10, align 8
  %31 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %32 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %60

39:                                               ; preds = %19
  %40 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %41 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %9, align 4
  br label %59

47:                                               ; preds = %39
  %48 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %49 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %53
  br label %59

59:                                               ; preds = %58, %45
  br label %60

60:                                               ; preds = %59, %36
  br label %15

61:                                               ; preds = %15
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
