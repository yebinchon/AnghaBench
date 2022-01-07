; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_flush_batch_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_flush_batch_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_algo = type { i64, i32 (%struct.ip_fw_chain.0*, %struct.tentry_info*, i32*)* }
%struct.ip_fw_chain.0 = type opaque
%struct.tentry_info = type { i32* }

@M_IPFW = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.table_algo*, %struct.tentry_info*, i32, i32, i32*, i32*)* @flush_batch_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_batch_buffer(%struct.ip_fw_chain* %0, %struct.table_algo* %1, %struct.tentry_info* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.ip_fw_chain*, align 8
  %9 = alloca %struct.table_algo*, align 8
  %10 = alloca %struct.tentry_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.tentry_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %8, align 8
  store %struct.table_algo* %1, %struct.table_algo** %9, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load %struct.table_algo*, %struct.table_algo** %9, align 8
  %20 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %17, align 8
  %22 = load i32*, i32** %13, align 8
  store i32* %22, i32** %15, align 8
  store i32 0, i32* %18, align 4
  br label %23

23:                                               ; preds = %53, %7
  %24 = load i32, i32* %18, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load %struct.tentry_info*, %struct.tentry_info** %10, align 8
  %29 = load i32, i32* %18, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %28, i64 %30
  store %struct.tentry_info* %31, %struct.tentry_info** %16, align 8
  %32 = load %struct.table_algo*, %struct.table_algo** %9, align 8
  %33 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %32, i32 0, i32 1
  %34 = load i32 (%struct.ip_fw_chain.0*, %struct.tentry_info*, i32*)*, i32 (%struct.ip_fw_chain.0*, %struct.tentry_info*, i32*)** %33, align 8
  %35 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %36 = bitcast %struct.ip_fw_chain* %35 to %struct.ip_fw_chain.0*
  %37 = load %struct.tentry_info*, %struct.tentry_info** %16, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 %34(%struct.ip_fw_chain.0* %36, %struct.tentry_info* %37, i32* %38)
  %40 = load %struct.tentry_info*, %struct.tentry_info** %16, align 8
  %41 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %27
  %45 = load %struct.tentry_info*, %struct.tentry_info** %16, align 8
  %46 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @M_IPFW, align 4
  %49 = call i32 @free(i32* %47, i32 %48)
  %50 = load %struct.tentry_info*, %struct.tentry_info** %16, align 8
  %51 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %44, %27
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %18, align 4
  %56 = load i64, i64* %17, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 %56
  store i32* %58, i32** %15, align 8
  br label %23

59:                                               ; preds = %23
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %17, align 8
  %67 = mul i64 %65, %66
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32* %68, i32** %15, align 8
  store i32 0, i32* %18, align 4
  br label %69

69:                                               ; preds = %85, %62
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load %struct.table_algo*, %struct.table_algo** %9, align 8
  %75 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %74, i32 0, i32 1
  %76 = load i32 (%struct.ip_fw_chain.0*, %struct.tentry_info*, i32*)*, i32 (%struct.ip_fw_chain.0*, %struct.tentry_info*, i32*)** %75, align 8
  %77 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %78 = bitcast %struct.ip_fw_chain* %77 to %struct.ip_fw_chain.0*
  %79 = load %struct.tentry_info*, %struct.tentry_info** %10, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %79, i64 %81
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 %76(%struct.ip_fw_chain.0* %78, %struct.tentry_info* %82, i32* %83)
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %18, align 4
  %88 = load i64, i64* %17, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 %88
  store i32* %90, i32** %15, align 8
  br label %69

91:                                               ; preds = %69
  br label %92

92:                                               ; preds = %91, %59
  %93 = load i32*, i32** %13, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = icmp ne i32* %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* @M_TEMP, align 4
  %99 = call i32 @free(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %92
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
