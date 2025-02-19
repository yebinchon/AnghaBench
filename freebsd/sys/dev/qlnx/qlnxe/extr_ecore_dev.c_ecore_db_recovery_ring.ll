; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_db_recovery_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_db_recovery_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_db_recovery_entry = type { i64, i64, i32 }

@DB_REC_ONCE = common dso_local global i32 0, align 4
@DB_REC_WIDTH_32B = common dso_local global i64 0, align 8
@ECORE_MSG_SPQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s doorbell address %p data %x\0A\00", align 1
@DB_REC_DRY_RUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"would have rung\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ringing\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s doorbell address %p data %llx\0A\00", align 1
@DB_REC_REAL_DEAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_db_recovery_entry*, i32)* @ecore_db_recovery_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_db_recovery_ring(%struct.ecore_hwfn* %0, %struct.ecore_db_recovery_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_db_recovery_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_db_recovery_entry* %1, %struct.ecore_db_recovery_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DB_REC_ONCE, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %3
  %11 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DB_REC_WIDTH_32B, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %18 = load i32, i32* @ECORE_MSG_SPQ, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DB_REC_DRY_RUN, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %24 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %25 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %28 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %17, i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %26, i64 %31)
  br label %50

33:                                               ; preds = %10
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %35 = load i32, i32* @ECORE_MSG_SPQ, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DB_REC_DRY_RUN, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %41 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %42 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %45 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %34, i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 %43, i64 %48)
  br label %50

50:                                               ; preds = %33, %16
  br label %51

51:                                               ; preds = %50, %3
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %53 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %56 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %59 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ecore_db_rec_sanity(i32 %54, i32 %57, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %51
  br label %110

64:                                               ; preds = %51
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %66 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @OSAL_WMB(i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @DB_REC_REAL_DEAL, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @DB_REC_ONCE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %72, %64
  %77 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %78 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DB_REC_WIDTH_32B, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %84 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %85 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %88 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @DIRECT_REG_WR(%struct.ecore_hwfn* %83, i32 %86, i64 %91)
  br label %104

93:                                               ; preds = %76
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %95 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %96 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ecore_db_recovery_entry*, %struct.ecore_db_recovery_entry** %5, align 8
  %99 = getelementptr inbounds %struct.ecore_db_recovery_entry, %struct.ecore_db_recovery_entry* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @DIRECT_REG_WR64(%struct.ecore_hwfn* %94, i32 %97, i64 %102)
  br label %104

104:                                              ; preds = %93, %82
  br label %105

105:                                              ; preds = %104, %72
  %106 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %107 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @OSAL_WMB(i32 %108)
  br label %110

110:                                              ; preds = %105, %63
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i8*, i32, i64) #1

declare dso_local i32 @ecore_db_rec_sanity(i32, i32, i64) #1

declare dso_local i32 @OSAL_WMB(i32) #1

declare dso_local i32 @DIRECT_REG_WR(%struct.ecore_hwfn*, i32, i64) #1

declare dso_local i32 @DIRECT_REG_WR64(%struct.ecore_hwfn*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
