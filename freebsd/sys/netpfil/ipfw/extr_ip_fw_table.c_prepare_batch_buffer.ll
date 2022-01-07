; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_prepare_batch_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_prepare_batch_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_algo = type { i64, i32 (%struct.ip_fw_chain.0*, %struct.tentry_info*, i64)*, i32 (%struct.ip_fw_chain.1*, %struct.tentry_info*, i64)* }
%struct.ip_fw_chain.0 = type opaque
%struct.ip_fw_chain.1 = type opaque
%struct.tentry_info = type { i32 }

@TA_BUF_SZ = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.table_algo*, %struct.tentry_info*, i32, i32, i64*)* @prepare_batch_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_batch_buffer(%struct.ip_fw_chain* %0, %struct.table_algo* %1, %struct.tentry_info* %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.ip_fw_chain*, align 8
  %8 = alloca %struct.table_algo*, align 8
  %9 = alloca %struct.tentry_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.tentry_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %7, align 8
  store %struct.table_algo* %1, %struct.table_algo** %8, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  store i32 0, i32* %18, align 4
  %20 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %21 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %6
  %26 = load i64*, i64** %12, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @TA_BUF_SZ, align 4
  %29 = call i32 @memset(i64 %27, i32 0, i32 %28)
  %30 = load i64*, i64** %12, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  br label %52

32:                                               ; preds = %6
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %15, align 8
  %36 = mul i64 %34, %35
  store i64 %36, i64* %16, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @OP_ADD, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i64, i64* %16, align 8
  %42 = mul i64 %41, 2
  br label %45

43:                                               ; preds = %32
  %44 = load i64, i64* %16, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i64 [ %42, %40 ], [ %44, %43 ]
  %47 = load i32, i32* @M_TEMP, align 4
  %48 = load i32, i32* @M_WAITOK, align 4
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = call i64 @malloc(i64 %46, i32 %47, i32 %50)
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %45, %25
  %53 = load i64, i64* %13, align 8
  store i64 %53, i64* %14, align 8
  store i32 0, i32* %19, align 4
  br label %54

54:                                               ; preds = %90, %52
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %54
  %59 = load %struct.tentry_info*, %struct.tentry_info** %9, align 8
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %59, i64 %61
  store %struct.tentry_info* %62, %struct.tentry_info** %17, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @OP_ADD, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %68 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %67, i32 0, i32 1
  %69 = load i32 (%struct.ip_fw_chain.0*, %struct.tentry_info*, i64)*, i32 (%struct.ip_fw_chain.0*, %struct.tentry_info*, i64)** %68, align 8
  %70 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %71 = bitcast %struct.ip_fw_chain* %70 to %struct.ip_fw_chain.0*
  %72 = load %struct.tentry_info*, %struct.tentry_info** %17, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32 %69(%struct.ip_fw_chain.0* %71, %struct.tentry_info* %72, i64 %73)
  br label %84

75:                                               ; preds = %58
  %76 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %77 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %76, i32 0, i32 2
  %78 = load i32 (%struct.ip_fw_chain.1*, %struct.tentry_info*, i64)*, i32 (%struct.ip_fw_chain.1*, %struct.tentry_info*, i64)** %77, align 8
  %79 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %80 = bitcast %struct.ip_fw_chain* %79 to %struct.ip_fw_chain.1*
  %81 = load %struct.tentry_info*, %struct.tentry_info** %17, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i32 %78(%struct.ip_fw_chain.1* %80, %struct.tentry_info* %81, i64 %82)
  br label %84

84:                                               ; preds = %75, %66
  %85 = phi i32 [ %74, %66 ], [ %83, %75 ]
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %96

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* %14, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %14, align 8
  br label %54

96:                                               ; preds = %88, %54
  %97 = load i64, i64* %13, align 8
  %98 = load i64*, i64** %12, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i32, i32* %18, align 4
  ret i32 %99
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @malloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
