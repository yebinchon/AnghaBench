; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_device.c_pccard_build_cis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_device.c_pccard_build_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_tuple = type { i64, i32 }
%struct.cis_buffer = type { i32, i64* }

@CISTPL_END = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pccard_tuple*, i8*)* @pccard_build_cis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_build_cis(%struct.pccard_tuple* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pccard_tuple*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cis_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pccard_tuple* %0, %struct.pccard_tuple** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cis_buffer*
  store %struct.cis_buffer* %10, %struct.cis_buffer** %6, align 8
  %11 = load %struct.pccard_tuple*, %struct.pccard_tuple** %4, align 8
  %12 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CISTPL_END, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load %struct.cis_buffer*, %struct.cis_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %21, 8
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOSPC, align 4
  store i32 %24, i32* %3, align 4
  br label %102

25:                                               ; preds = %16
  %26 = load %struct.pccard_tuple*, %struct.pccard_tuple** %4, align 8
  %27 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cis_buffer*, %struct.cis_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.cis_buffer*, %struct.cis_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i64, i64* %31, i64 %36
  store i64 %28, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %102

38:                                               ; preds = %2
  %39 = load %struct.cis_buffer*, %struct.cis_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 2
  %43 = load %struct.pccard_tuple*, %struct.pccard_tuple** %4, align 8
  %44 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = icmp ugt i64 %47, 8
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @ENOSPC, align 4
  store i32 %50, i32* %3, align 4
  br label %102

51:                                               ; preds = %38
  %52 = load %struct.pccard_tuple*, %struct.pccard_tuple** %4, align 8
  %53 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.cis_buffer*, %struct.cis_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.cis_buffer*, %struct.cis_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i64, i64* %57, i64 %62
  store i64 %54, i64* %63, align 8
  %64 = load %struct.pccard_tuple*, %struct.pccard_tuple** %4, align 8
  %65 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load %struct.cis_buffer*, %struct.cis_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.cis_buffer*, %struct.cis_buffer** %6, align 8
  %72 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i64, i64* %70, i64 %75
  store i64 %67, i64* %76, align 8
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %98, %51
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.pccard_tuple*, %struct.pccard_tuple** %4, align 8
  %80 = getelementptr inbounds %struct.pccard_tuple, %struct.pccard_tuple* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = load %struct.pccard_tuple*, %struct.pccard_tuple** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @pccard_tuple_read_1(%struct.pccard_tuple* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.cis_buffer*, %struct.cis_buffer** %6, align 8
  %90 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load %struct.cis_buffer*, %struct.cis_buffer** %6, align 8
  %93 = getelementptr inbounds %struct.cis_buffer, %struct.cis_buffer* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i64, i64* %91, i64 %96
  store i64 %88, i64* %97, align 8
  br label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %77

101:                                              ; preds = %77
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %49, %25, %23
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @pccard_tuple_read_1(%struct.pccard_tuple*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
