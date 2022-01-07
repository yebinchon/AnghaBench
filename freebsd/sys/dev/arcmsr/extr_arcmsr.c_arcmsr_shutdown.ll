; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandControlBlock = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.AdapterControlBlock = type { i64, i32, i64, i64, i64, i64, %struct.CommandControlBlock**, i32 }

@ACB_F_SCSISTOPADAPTER = common dso_local global i32 0, align 4
@ACB_F_IOP_INITED = common dso_local global i32 0, align 4
@ARCMSR_MAX_FREESRB_NUM = common dso_local global i64 0, align 8
@ARCMSR_SRB_START = common dso_local global i64 0, align 8
@ARCMSR_SRB_ABORTED = common dso_local global i64 0, align 8
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arcmsr_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.CommandControlBlock*, align 8
  %6 = alloca %struct.AdapterControlBlock*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @device_get_softc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %9, %struct.AdapterControlBlock** %6, align 8
  %10 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %11 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %10, i32 0, i32 1
  %12 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %11)
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %14 = call i64 @arcmsr_disable_allintr(%struct.AdapterControlBlock* %13)
  store i64 %14, i64* %4, align 8
  %15 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %16 = call i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock* %15)
  %17 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %18 = call i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock* %17)
  %19 = load i32, i32* @ACB_F_SCSISTOPADAPTER, align 4
  %20 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %21 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @ACB_F_IOP_INITED, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %27 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %31 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %1
  %35 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %36 = call i32 @arcmsr_done4abort_postqueue(%struct.AdapterControlBlock* %35)
  %37 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %38 = call i32 @arcmsr_abort_allcmd(%struct.AdapterControlBlock* %37)
  store i64 0, i64* %3, align 8
  br label %39

39:                                               ; preds = %70, %34
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @ARCMSR_MAX_FREESRB_NUM, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %45 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %44, i32 0, i32 6
  %46 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %46, i64 %47
  %49 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %48, align 8
  store %struct.CommandControlBlock* %49, %struct.CommandControlBlock** %5, align 8
  %50 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %51 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ARCMSR_SRB_START, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %43
  %56 = load i64, i64* @ARCMSR_SRB_ABORTED, align 8
  %57 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %58 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %60 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %61 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %59
  store i32 %66, i32* %64, align 4
  %67 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %68 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %67, i32 1)
  br label %69

69:                                               ; preds = %55, %43
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %3, align 8
  br label %39

73:                                               ; preds = %39
  br label %74

74:                                               ; preds = %73, %1
  %75 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %76 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %78 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %80 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %82 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %84 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %6, align 8
  %86 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %85, i32 0, i32 1
  %87 = call i32 @ARCMSR_LOCK_RELEASE(i32* %86)
  ret i32 0
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @ARCMSR_LOCK_ACQUIRE(i32*) #1

declare dso_local i64 @arcmsr_disable_allintr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_done4abort_postqueue(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_abort_allcmd(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_srb_complete(%struct.CommandControlBlock*, i32) #1

declare dso_local i32 @ARCMSR_LOCK_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
