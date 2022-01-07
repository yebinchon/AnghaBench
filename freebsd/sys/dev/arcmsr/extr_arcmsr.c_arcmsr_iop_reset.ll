; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64, i32, i64, i64, i64, i64, %struct.CommandControlBlock** }
%struct.CommandControlBlock = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@ARCMSR_MAX_FREESRB_NUM = common dso_local global i64 0, align 8
@ARCMSR_SRB_START = common dso_local global i64 0, align 8
@ARCMSR_SRB_ABORTED = common dso_local global i64 0, align 8
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"arcmsr%d: scsi id=%d lun=%jx srb='%p' aborted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_iop_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_iop_reset(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca %struct.CommandControlBlock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %7 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %73

10:                                               ; preds = %1
  %11 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %12 = call i64 @arcmsr_disable_allintr(%struct.AdapterControlBlock* %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %14 = call i32 @arcmsr_done4abort_postqueue(%struct.AdapterControlBlock* %13)
  %15 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %16 = call i32 @arcmsr_abort_allcmd(%struct.AdapterControlBlock* %15)
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %66, %10
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @ARCMSR_MAX_FREESRB_NUM, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %17
  %22 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %23 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %22, i32 0, i32 6
  %24 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %24, i64 %25
  %27 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %26, align 8
  store %struct.CommandControlBlock* %27, %struct.CommandControlBlock** %3, align 8
  %28 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %29 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ARCMSR_SRB_START, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %21
  %34 = load i64, i64* @ARCMSR_SRB_ABORTED, align 8
  %35 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %36 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %38 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %39 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %37
  store i32 %44, i32* %42, align 8
  %45 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %46 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %45, i32 1)
  %47 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %48 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %51 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %57 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %64 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %55, i32 %62, %struct.CommandControlBlock* %63)
  br label %65

65:                                               ; preds = %33, %21
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %17

69:                                               ; preds = %17
  %70 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @arcmsr_enable_allintr(%struct.AdapterControlBlock* %70, i64 %71)
  br label %73

73:                                               ; preds = %69, %1
  %74 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %75 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %77 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %79 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %81 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %83 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  ret void
}

declare dso_local i64 @arcmsr_disable_allintr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_done4abort_postqueue(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_abort_allcmd(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_srb_complete(%struct.CommandControlBlock*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, %struct.CommandControlBlock*) #1

declare dso_local i32 @arcmsr_enable_allintr(%struct.AdapterControlBlock*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
