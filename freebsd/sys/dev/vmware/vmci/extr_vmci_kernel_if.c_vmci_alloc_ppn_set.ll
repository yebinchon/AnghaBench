; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_kernel_if.c_vmci_alloc_ppn_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_kernel_if.c_vmci_alloc_ppn_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppn_set = type { i32, i32, i32, i64*, i64* }
%struct.vmci_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_ERROR_ALREADY_EXISTS = common dso_local global i32 0, align 4
@VMCI_MEMORY_NORMAL = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VMCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_alloc_ppn_set(i8* %0, i32 %1, i8* %2, i32 %3, %struct.ppn_set* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ppn_set*, align 8
  %12 = alloca %struct.vmci_queue*, align 8
  %13 = alloca %struct.vmci_queue*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ppn_set* %4, %struct.ppn_set** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.vmci_queue*
  store %struct.vmci_queue* %20, %struct.vmci_queue** %12, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.vmci_queue*
  store %struct.vmci_queue* %22, %struct.vmci_queue** %13, align 8
  %23 = load %struct.vmci_queue*, %struct.vmci_queue** %13, align 8
  %24 = icmp ne %struct.vmci_queue* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.vmci_queue*, %struct.vmci_queue** %12, align 8
  %30 = icmp ne %struct.vmci_queue* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %36 = icmp ne %struct.ppn_set* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %31, %28, %25, %5
  %38 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %38, i32* %6, align 4
  br label %154

39:                                               ; preds = %34
  %40 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %41 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @VMCI_ERROR_ALREADY_EXISTS, align 4
  store i32 %45, i32* %6, align 4
  br label %154

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @VMCI_MEMORY_NORMAL, align 4
  %52 = call i64* @vmci_alloc_kernel_mem(i32 %50, i32 %51)
  store i64* %52, i64** %15, align 8
  %53 = load i64*, i64** %15, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %56, i32* %6, align 4
  br label %154

57:                                               ; preds = %46
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @VMCI_MEMORY_NORMAL, align 4
  %63 = call i64* @vmci_alloc_kernel_mem(i32 %61, i32 %62)
  store i64* %63, i64** %14, align 8
  %64 = load i64*, i64** %14, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %57
  %67 = load i64*, i64** %15, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @vmci_free_kernel_mem(i64* %67, i32 %71)
  %73 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %73, i32* %6, align 4
  br label %154

74:                                               ; preds = %57
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %96, %74
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = load %struct.vmci_queue*, %struct.vmci_queue** %13, align 8
  %81 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PAGE_SHIFT, align 8
  %91 = lshr i64 %89, %90
  store i64 %91, i64* %17, align 8
  %92 = load i64*, i64** %15, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %91, i64* %95, align 8
  br label %96

96:                                               ; preds = %79
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %75

99:                                               ; preds = %75
  store i32 0, i32* %16, align 4
  br label %100

100:                                              ; preds = %121, %99
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %100
  %105 = load %struct.vmci_queue*, %struct.vmci_queue** %12, align 8
  %106 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @PAGE_SHIFT, align 8
  %116 = lshr i64 %114, %115
  store i64 %116, i64* %18, align 8
  %117 = load i64*, i64** %14, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 %116, i64* %120, align 8
  br label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %100

124:                                              ; preds = %100
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %127 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %130 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load i64*, i64** %15, align 8
  %132 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %133 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %132, i32 0, i32 3
  store i64* %131, i64** %133, align 8
  %134 = load i64*, i64** %14, align 8
  %135 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %136 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %135, i32 0, i32 4
  store i64* %134, i64** %136, align 8
  %137 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %138 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %139, i32* %6, align 4
  br label %154

140:                                              ; No predecessors!
  %141 = load i64*, i64** %15, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @vmci_free_kernel_mem(i64* %141, i32 %145)
  %147 = load i64*, i64** %14, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @vmci_free_kernel_mem(i64* %147, i32 %151)
  %153 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %140, %124, %66, %55, %44, %37
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i64* @vmci_alloc_kernel_mem(i32, i32) #1

declare dso_local i32 @vmci_free_kernel_mem(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
