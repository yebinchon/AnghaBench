; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_check_ipfw_rule1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_check_ipfw_rule1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_rule = type { i32, i32, i32, i32 }
%struct.rule_check_info = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ipfw: rule too short\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ipfw: size mismatch (have %d want %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ipfw: bogus action offset (%u > %u)\0A\00", align 1
@IPFW_DEFAULT_RULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_rule*, i32, %struct.rule_check_info*)* @check_ipfw_rule1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ipfw_rule1(%struct.ip_fw_rule* %0, i32 %1, %struct.rule_check_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_rule*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rule_check_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ip_fw_rule* %0, %struct.ip_fw_rule** %5, align 8
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
  br label %63

15:                                               ; preds = %3
  %16 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %5, align 8
  %17 = call i32 @RULESIZE(%struct.ip_fw_rule* %16)
  %18 = call i32 @roundup2(i32 %17, i32 4)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %63

27:                                               ; preds = %15
  %28 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %5, align 8
  %29 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %5, align 8
  %32 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %5, align 8
  %37 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %5, align 8
  %40 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %63

45:                                               ; preds = %27
  %46 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %5, align 8
  %47 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IPFW_DEFAULT_RULE, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %4, align 4
  br label %63

54:                                               ; preds = %45
  %55 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %5, align 8
  %56 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %5, align 8
  %59 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rule_check_info*, %struct.rule_check_info** %7, align 8
  %62 = call i32 @check_ipfw_rule_body(i32 %57, i32 %60, %struct.rule_check_info* %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %54, %52, %35, %22, %12
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @RULESIZE(%struct.ip_fw_rule*) #1

declare dso_local i32 @check_ipfw_rule_body(i32, i32, %struct.rule_check_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
