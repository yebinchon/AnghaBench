; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_unref_table_value_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_unref_table_value_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flush_args = type { %struct.ip_fw_chain*, i32, i32, %struct.TYPE_6__, %struct.table_algo* }
%struct.ip_fw_chain = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.table_algo = type { i32 (i32, i32, i8*, %struct.TYPE_6__*)* }
%struct.table_value = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @unref_table_value_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unref_table_value_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.flush_args*, align 8
  %7 = alloca %struct.ip_fw_chain*, align 8
  %8 = alloca %struct.table_algo*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.flush_args*
  store %struct.flush_args* %12, %struct.flush_args** %6, align 8
  %13 = load %struct.flush_args*, %struct.flush_args** %6, align 8
  %14 = getelementptr inbounds %struct.flush_args, %struct.flush_args* %13, i32 0, i32 4
  %15 = load %struct.table_algo*, %struct.table_algo** %14, align 8
  store %struct.table_algo* %15, %struct.table_algo** %8, align 8
  %16 = load %struct.flush_args*, %struct.flush_args** %6, align 8
  %17 = getelementptr inbounds %struct.flush_args, %struct.flush_args* %16, i32 0, i32 3
  %18 = call i32 @memset(%struct.TYPE_6__* %17, i32 0, i32 4)
  %19 = load %struct.flush_args*, %struct.flush_args** %6, align 8
  %20 = getelementptr inbounds %struct.flush_args, %struct.flush_args* %19, i32 0, i32 3
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %9, align 8
  %21 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %22 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %21, i32 0, i32 0
  %23 = load i32 (i32, i32, i8*, %struct.TYPE_6__*)*, i32 (i32, i32, i8*, %struct.TYPE_6__*)** %22, align 8
  %24 = load %struct.flush_args*, %struct.flush_args** %6, align 8
  %25 = getelementptr inbounds %struct.flush_args, %struct.flush_args* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.flush_args*, %struct.flush_args** %6, align 8
  %28 = getelementptr inbounds %struct.flush_args, %struct.flush_args* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = call i32 %23(i32 %26, i32 %29, i8* %30, %struct.TYPE_6__* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %2
  %38 = load %struct.flush_args*, %struct.flush_args** %6, align 8
  %39 = getelementptr inbounds %struct.flush_args, %struct.flush_args* %38, i32 0, i32 0
  %40 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %39, align 8
  store %struct.ip_fw_chain* %40, %struct.ip_fw_chain** %7, align 8
  %41 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %42 = call i32 @CHAIN_TO_VI(%struct.ip_fw_chain* %41)
  %43 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %44 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.table_value*
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @unref_table_value(i32 %42, %struct.table_value* %46, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %37, %35
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @unref_table_value(i32, %struct.table_value*, i32) #1

declare dso_local i32 @CHAIN_TO_VI(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
