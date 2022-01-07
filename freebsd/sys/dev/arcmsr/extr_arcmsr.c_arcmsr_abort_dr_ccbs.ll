; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_abort_dr_ccbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_abort_dr_ccbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, %struct.CommandControlBlock** }
%struct.CommandControlBlock = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ARCMSR_MAX_FREESRB_NUM = common dso_local global i32 0, align 4
@ARCMSR_SRB_START = common dso_local global i64 0, align 8
@ARCMSR_SRB_ABORTED = common dso_local global i64 0, align 8
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"arcmsr%d: abort scsi id %d lun %d srb=%p \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, i32, i32)* @arcmsr_abort_dr_ccbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_abort_dr_ccbs(%struct.AdapterControlBlock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.AdapterControlBlock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.CommandControlBlock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %11 = call i32 @arcmsr_disable_allintr(%struct.AdapterControlBlock* %10)
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %70, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @ARCMSR_MAX_FREESRB_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %12
  %17 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %18 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %17, i32 0, i32 1
  %19 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %19, i64 %21
  %23 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %22, align 8
  store %struct.CommandControlBlock* %23, %struct.CommandControlBlock** %7, align 8
  %24 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %25 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ARCMSR_SRB_START, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %69

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %32 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %30, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %41 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %39, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %38
  %48 = load i64, i64* @ARCMSR_SRB_ABORTED, align 8
  %49 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %50 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %52 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %53 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %51
  store i32 %58, i32* %56, align 4
  %59 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %60 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %59, i32 1)
  %61 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %62 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %65, %struct.CommandControlBlock* %66)
  br label %68

68:                                               ; preds = %47, %38, %29
  br label %69

69:                                               ; preds = %68, %16
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %12

73:                                               ; preds = %12
  %74 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @arcmsr_enable_allintr(%struct.AdapterControlBlock* %74, i32 %75)
  ret void
}

declare dso_local i32 @arcmsr_disable_allintr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_srb_complete(%struct.CommandControlBlock*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, %struct.CommandControlBlock*) #1

declare dso_local i32 @arcmsr_enable_allintr(%struct.AdapterControlBlock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
