; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_allocate_vfdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_allocate_vfdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__*, %struct.ecore_pf_iov* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_pf_iov = type { i32, i8*, i32, i8*, i32, i8*, i64, i64, i64 }

@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ecore_iov_allocate_vfdb for %d VFs\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [118 x i8] c"PF's Requests mailbox [%p virt 0x%llx phys],  Response mailbox [%p virt 0x%llx phys] Bulletins [%p virt 0x%llx phys]\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_iov_allocate_vfdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_allocate_vfdb(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_pf_iov*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 1
  %9 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %8, align 8
  store %struct.ecore_pf_iov* %9, %struct.ecore_pf_iov** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = load i32, i32* @ECORE_MSG_IOV, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (%struct.ecore_hwfn*, i32, i8*, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %17, i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %28 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %30 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %29, i32 0, i32 1
  store i8** %30, i8*** %5, align 8
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %35 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %34, i32 0, i32 8
  %36 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %37 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @OSAL_DMA_ALLOC_COHERENT(%struct.TYPE_4__* %33, i64* %35, i32 %38)
  %40 = load i8**, i8*** %5, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %45, i32* %2, align 4
  br label %117

46:                                               ; preds = %1
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = trunc i64 %49 to i32
  %51 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %52 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %54 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %53, i32 0, i32 3
  store i8** %54, i8*** %5, align 8
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %56 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %59 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %58, i32 0, i32 7
  %60 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %61 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @OSAL_DMA_ALLOC_COHERENT(%struct.TYPE_4__* %57, i64* %59, i32 %62)
  %64 = load i8**, i8*** %5, align 8
  store i8* %63, i8** %64, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %46
  %69 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %69, i32* %2, align 4
  br label %117

70:                                               ; preds = %46
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %76 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %78 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %77, i32 0, i32 5
  store i8** %78, i8*** %5, align 8
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %80 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %83 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %82, i32 0, i32 6
  %84 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %85 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @OSAL_DMA_ALLOC_COHERENT(%struct.TYPE_4__* %81, i64* %83, i32 %86)
  %88 = load i8**, i8*** %5, align 8
  store i8* %87, i8** %88, align 8
  %89 = load i8**, i8*** %5, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %70
  %93 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %93, i32* %2, align 4
  br label %117

94:                                               ; preds = %70
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %96 = load i32, i32* @ECORE_MSG_IOV, align 4
  %97 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %98 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %101 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %104 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %107 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %106, i32 0, i32 7
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %110 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %109, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %113 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (%struct.ecore_hwfn*, i32, i8*, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %95, i32 %96, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.1, i64 0, i64 0), i8* %99, i64 %102, i8* %105, i64 %108, i8* %111, i64 %114)
  %116 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %94, %92, %68, %44
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i8*, ...) #1

declare dso_local i8* @OSAL_DMA_ALLOC_COHERENT(%struct.TYPE_4__*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
