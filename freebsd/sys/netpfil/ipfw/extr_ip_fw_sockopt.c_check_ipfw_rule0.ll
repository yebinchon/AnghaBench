; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_check_ipfw_rule0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_check_ipfw_rule0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_rule0 = type { i32, i32, i32, i32 }
%struct.rule_check_info = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ipfw: rule too short\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ipfw: size mismatch (have %d want %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ipfw: bogus action offset (%u > %u)\0A\00", align 1
@IPFW_DEFAULT_RULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_rule0*, i32, %struct.rule_check_info*)* @check_ipfw_rule0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ipfw_rule0(%struct.ip_fw_rule0* %0, i32 %1, %struct.rule_check_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_rule0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rule_check_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ip_fw_rule0* %0, %struct.ip_fw_rule0** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rule_check_info* %2, %struct.rule_check_info** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %68

15:                                               ; preds = %3
  %16 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %17 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = add i64 16, %20
  %22 = sub i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %68

32:                                               ; preds = %15
  %33 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %34 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %37 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %42 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %45 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %4, align 4
  br label %68

50:                                               ; preds = %32
  %51 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %52 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IPFW_DEFAULT_RULE, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %4, align 4
  br label %68

59:                                               ; preds = %50
  %60 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %61 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ip_fw_rule0*, %struct.ip_fw_rule0** %5, align 8
  %64 = getelementptr inbounds %struct.ip_fw_rule0, %struct.ip_fw_rule0* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rule_check_info*, %struct.rule_check_info** %7, align 8
  %67 = call i32 @check_ipfw_rule_body(i32 %62, i32 %65, %struct.rule_check_info* %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %59, %57, %40, %27, %12
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @check_ipfw_rule_body(i32, i32, %struct.rule_check_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
