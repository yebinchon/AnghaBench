; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_flush_iotlb_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_flush_iotlb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, %struct.dmar_unit* }
%struct.dmar_unit = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"dmar%d: sync iotlb flush call\00", align 1
@DMAR_CAP_PSI = common dso_local global i32 0, align 4
@DMAR_IOTLB_IIRG_DOM = common dso_local global i32 0, align 4
@DMAR_IOTLB_IAIG_MASK = common dso_local global i32 0, align 4
@DMAR_IOTLB_IAIG_INVLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"dmar%d: invalidation failed %jx\00", align 1
@DMAR_IOTLB_IIRG_PAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"dmar%d: PSI invalidation failed iotlbr 0x%jx base 0x%jx size 0x%jx am %d\00", align 1
@DMAR_IOTLB_IAIG_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @domain_flush_iotlb_sync(%struct.dmar_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmar_unit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %13 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %12, i32 0, i32 1
  %14 = load %struct.dmar_unit*, %struct.dmar_unit** %13, align 8
  store %struct.dmar_unit* %14, %struct.dmar_unit** %7, align 8
  %15 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %16 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %22 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %20, i8* %25)
  %27 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %28 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DMAR_ECAP_IRO(i32 %29)
  %31 = mul nsw i32 %30, 16
  store i32 %31, i32* %11, align 4
  %32 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %33 = call i32 @DMAR_LOCK(%struct.dmar_unit* %32)
  %34 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %35 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DMAR_CAP_PSI, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 2097152
  br i1 %42, label %43, label %66

43:                                               ; preds = %40, %3
  %44 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %45 = load i32, i32* @DMAR_IOTLB_IIRG_DOM, align 4
  %46 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %47 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DMAR_IOTLB_DID(i32 %48)
  %50 = or i32 %45, %49
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @domain_wait_iotlb_flush(%struct.dmar_unit* %44, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @DMAR_IOTLB_IAIG_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @DMAR_IOTLB_IAIG_INVLD, align 4
  %57 = icmp ne i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %60 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @KASSERT(i32 %58, i8* %64)
  br label %121

66:                                               ; preds = %40
  br label %67

67:                                               ; preds = %113, %66
  %68 = load i32, i32* %6, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %120

70:                                               ; preds = %67
  %71 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @calc_am(%struct.dmar_unit* %71, i32 %72, i32 %73, i32* %8)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @dmar_write8(%struct.dmar_unit* %75, i32 %76, i32 %79)
  %81 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %82 = load i32, i32* @DMAR_IOTLB_IIRG_PAGE, align 4
  %83 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %84 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @DMAR_IOTLB_DID(i32 %85)
  %87 = or i32 %82, %86
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @domain_wait_iotlb_flush(%struct.dmar_unit* %81, i32 %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @DMAR_IOTLB_IAIG_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @DMAR_IOTLB_IAIG_INVLD, align 4
  %94 = icmp ne i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %97 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @KASSERT(i32 %95, i8* %104)
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @DMAR_IOTLB_IAIG_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @DMAR_IOTLB_IAIG_PAGE, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %70
  br label %120

112:                                              ; preds = %70
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %67

120:                                              ; preds = %111, %67
  br label %121

121:                                              ; preds = %120, %43
  %122 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %123 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %122)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_ECAP_IRO(i32) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @domain_wait_iotlb_flush(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @DMAR_IOTLB_DID(i32) #1

declare dso_local i32 @calc_am(%struct.dmar_unit*, i32, i32, i32*) #1

declare dso_local i32 @dmar_write8(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
