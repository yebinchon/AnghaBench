; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_jump_fast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_jump_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i64, i32* }
%struct.ip_fw = type { i64, i32, i32 }

@IP_FW_TARG = common dso_local global i32 0, align 4
@skipto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.ip_fw*, i32, i32, i32)* @jump_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jump_fast(%struct.ip_fw_chain* %0, %struct.ip_fw* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca %struct.ip_fw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store %struct.ip_fw* %1, %struct.ip_fw** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @IP_FW_TARG, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %5
  %17 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %18 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %21 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %26 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  br label %77

28:                                               ; preds = %16, %5
  %29 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @skipto, align 4
  %32 = call i32 @IP_FW_ARG_TABLEARG(%struct.ip_fw_chain* %29, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %38 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %43 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %41, %35, %28
  %47 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %48 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %53 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  br label %63

59:                                               ; preds = %46
  %60 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @ipfw_find_rule(%struct.ip_fw_chain* %60, i32 %61, i32 0)
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %51
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @IP_FW_TARG, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %69 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %72 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %75 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %67, %63
  br label %77

77:                                               ; preds = %76, %24
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @IP_FW_ARG_TABLEARG(%struct.ip_fw_chain*, i32, i32) #1

declare dso_local i32 @ipfw_find_rule(%struct.ip_fw_chain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
