; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_seek_cmd2abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_seek_cmd2abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.CommandControlBlock = type { i64, %union.ccb* }
%struct.AdapterControlBlock = type { i64, i32, %struct.CommandControlBlock**, i32 }

@ARCMSR_MAX_FREESRB_NUM = common dso_local global i32 0, align 4
@ARCMSR_SRB_START = common dso_local global i64 0, align 8
@ARCMSR_SRB_ABORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"arcmsr%d:scsi id=%d lun=%jx abort srb '%p'outstanding command \0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ccb*)* @arcmsr_seek_cmd2abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_seek_cmd2abort(%union.ccb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.CommandControlBlock*, align 8
  %5 = alloca %struct.AdapterControlBlock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %3, align 8
  %8 = load %union.ccb*, %union.ccb** %3, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %12, %struct.AdapterControlBlock** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %14 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %18 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %81

21:                                               ; preds = %1
  %22 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %23 = call i32 @arcmsr_disable_allintr(%struct.AdapterControlBlock* %22)
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %74, %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ARCMSR_MAX_FREESRB_NUM, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %24
  %29 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %30 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %29, i32 0, i32 2
  %31 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %31, i64 %33
  %35 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %34, align 8
  store %struct.CommandControlBlock* %35, %struct.CommandControlBlock** %4, align 8
  %36 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %37 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ARCMSR_SRB_START, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %28
  %42 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %43 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %42, i32 0, i32 1
  %44 = load %union.ccb*, %union.ccb** %43, align 8
  %45 = load %union.ccb*, %union.ccb** %3, align 8
  %46 = icmp eq %union.ccb* %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %41
  %48 = load i64, i64* @ARCMSR_SRB_ABORTED, align 8
  %49 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %50 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %52 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %union.ccb*, %union.ccb** %3, align 8
  %55 = bitcast %union.ccb* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %union.ccb*, %union.ccb** %3, align 8
  %59 = bitcast %union.ccb* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %64 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %57, i32 %62, %struct.CommandControlBlock* %63)
  %65 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %66 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %4, align 8
  %67 = call i32 @arcmsr_polling_srbdone(%struct.AdapterControlBlock* %65, %struct.CommandControlBlock* %66)
  %68 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @arcmsr_enable_allintr(%struct.AdapterControlBlock* %68, i32 %69)
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %2, align 4
  br label %83

72:                                               ; preds = %41
  br label %73

73:                                               ; preds = %72, %28
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %24

77:                                               ; preds = %24
  %78 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @arcmsr_enable_allintr(%struct.AdapterControlBlock* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %1
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %47
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @arcmsr_disable_allintr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, %struct.CommandControlBlock*) #1

declare dso_local i32 @arcmsr_polling_srbdone(%struct.AdapterControlBlock*, %struct.CommandControlBlock*) #1

declare dso_local i32 @arcmsr_enable_allintr(%struct.AdapterControlBlock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
