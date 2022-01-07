; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_qpair.c_vmci_qpair_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_qpair.c_vmci_qpair_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qpair = type { i32, %struct.vmci_handle, i32, i32, i64, i32, i64, i32 }
%struct.vmci_handle = type { i32 }

@VMCI_MAX_GUEST_QP_MEMORY = common dso_local global i64 0, align 8
@VMCI_ERROR_NO_RESOURCES = common dso_local global i32 0, align 4
@VMCI_QPFLAG_NONBLOCK = common dso_local global i32 0, align 4
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_MEMORY_NORMAL = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_qpair_alloc(%struct.vmci_qpair** %0, %struct.vmci_handle* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmci_qpair**, align 8
  %10 = alloca %struct.vmci_handle*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vmci_qpair*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.vmci_qpair** %0, %struct.vmci_qpair*** %9, align 8
  store %struct.vmci_handle* %1, %struct.vmci_handle** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i64 @MAX(i64 %23, i64 %24)
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %7
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @VMCI_MAX_GUEST_QP_MEMORY, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %7
  %34 = load i32, i32* @VMCI_ERROR_NO_RESOURCES, align 4
  store i32 %34, i32* %8, align 4
  br label %102

35:                                               ; preds = %27
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @VMCI_QPFLAG_NONBLOCK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %41, i32* %8, align 4
  br label %102

42:                                               ; preds = %35
  %43 = load i32, i32* @VMCI_MEMORY_NORMAL, align 4
  %44 = call %struct.vmci_qpair* @vmci_alloc_kernel_mem(i32 48, i32 %43)
  store %struct.vmci_qpair* %44, %struct.vmci_qpair** %16, align 8
  %45 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %46 = icmp ne %struct.vmci_qpair* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %48, i32* %8, align 4
  br label %102

49:                                               ; preds = %42
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %52 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %51, i32 0, i32 6
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %55 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %58 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %61 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %64 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  store i8* null, i8** %18, align 8
  store i32* null, i32** %17, align 8
  %65 = load %struct.vmci_handle*, %struct.vmci_handle** %10, align 8
  %66 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %67 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %66, i32 0, i32 7
  %68 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %69 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %72 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %71, i32 0, i32 5
  %73 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %74 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %77 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %80 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %83 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @vmci_queue_pair_alloc(%struct.vmci_handle* %65, i32* %67, i64 %70, i32* %72, i64 %75, i32 %78, i32 %81, i32 %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* @VMCI_SUCCESS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %49
  %90 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %91 = call i32 @vmci_free_kernel_mem(%struct.vmci_qpair* %90, i32 48)
  %92 = load i32, i32* %19, align 4
  store i32 %92, i32* %8, align 4
  br label %102

93:                                               ; preds = %49
  %94 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %95 = load %struct.vmci_qpair**, %struct.vmci_qpair*** %9, align 8
  store %struct.vmci_qpair* %94, %struct.vmci_qpair** %95, align 8
  %96 = load %struct.vmci_qpair*, %struct.vmci_qpair** %16, align 8
  %97 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %96, i32 0, i32 1
  %98 = load %struct.vmci_handle*, %struct.vmci_handle** %10, align 8
  %99 = bitcast %struct.vmci_handle* %97 to i8*
  %100 = bitcast %struct.vmci_handle* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 4, i1 false)
  %101 = load i32, i32* %19, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %93, %89, %47, %40, %33
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local %struct.vmci_qpair* @vmci_alloc_kernel_mem(i32, i32) #1

declare dso_local i32 @vmci_queue_pair_alloc(%struct.vmci_handle*, i32*, i64, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @vmci_free_kernel_mem(%struct.vmci_qpair*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
