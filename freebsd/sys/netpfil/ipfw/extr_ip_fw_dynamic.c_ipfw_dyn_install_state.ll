; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_ipfw_dyn_install_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_ipfw_dyn_install_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ip_fw = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ip_fw_args = type { i32, i32 }
%struct.ipfw_dyn_info = type { i32 }

@O_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_dyn_install_state(%struct.ip_fw_chain* %0, %struct.ip_fw* %1, %struct.TYPE_5__* %2, %struct.ip_fw_args* %3, i8* %4, i32 %5, %struct.ipfw_dyn_info* %6, i64 %7) #0 {
  %9 = alloca %struct.ip_fw_chain*, align 8
  %10 = alloca %struct.ip_fw*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.ip_fw_args*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ipfw_dyn_info*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %9, align 8
  store %struct.ip_fw* %1, %struct.ip_fw** %10, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %11, align 8
  store %struct.ip_fw_args* %3, %struct.ip_fw_args** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.ipfw_dyn_info* %6, %struct.ipfw_dyn_info** %15, align 8
  store i64 %7, i64* %16, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @O_LIMIT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %8
  %26 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %9, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %17, align 8
  %31 = call i64 @IP_FW_ARG_TABLEARG(%struct.ip_fw_chain* %26, i32 %29, i64 %30)
  store i64 %31, i64* %17, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %18, align 8
  br label %36

35:                                               ; preds = %8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.ip_fw_args*, %struct.ip_fw_args** %12, align 8
  %38 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %37, i32 0, i32 1
  %39 = load %struct.ip_fw_args*, %struct.ip_fw_args** %12, align 8
  %40 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @M_GETFIB(i32 %41)
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.ip_fw*, %struct.ip_fw** %10, align 8
  %46 = load %struct.ipfw_dyn_info*, %struct.ipfw_dyn_info** %15, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %18, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dyn_install_state(i32* %38, i32 0, i32 %42, i8* %43, i32 %44, %struct.ip_fw* %45, %struct.ipfw_dyn_info* %46, i64 %47, i64 %48, i32 %52, i32 %56)
  ret i32 %57
}

declare dso_local i64 @IP_FW_ARG_TABLEARG(%struct.ip_fw_chain*, i32, i64) #1

declare dso_local i32 @dyn_install_state(i32*, i32, i32, i8*, i32, %struct.ip_fw*, %struct.ipfw_dyn_info*, i64, i64, i32, i32) #1

declare dso_local i32 @M_GETFIB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
