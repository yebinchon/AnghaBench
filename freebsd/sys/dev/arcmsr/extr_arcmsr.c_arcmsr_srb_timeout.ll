; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_srb_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_srb_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandControlBlock = type { i64, %struct.TYPE_4__*, %struct.AdapterControlBlock* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.AdapterControlBlock = type { i32, i32 }

@ARCMSR_SRB_START = common dso_local global i64 0, align 8
@ARCMSR_SRB_TIMEOUT = common dso_local global i64 0, align 8
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"arcmsr%d: scsi id %d lun %d cmd=0x%x srb='%p' ccb command time out!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @arcmsr_srb_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_srb_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.CommandControlBlock*, align 8
  %4 = alloca %struct.AdapterControlBlock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.CommandControlBlock*
  store %struct.CommandControlBlock* %9, %struct.CommandControlBlock** %3, align 8
  %10 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %11 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %17 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %23 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %22, i32 0, i32 2
  %24 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %23, align 8
  store %struct.AdapterControlBlock* %24, %struct.AdapterControlBlock** %4, align 8
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %26 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %25, i32 0, i32 1
  %27 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %26)
  %28 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %29 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ARCMSR_SRB_START, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %1
  %34 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %35 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i32* @scsiio_cdb_ptr(i32* %37)
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i64, i64* @ARCMSR_SRB_TIMEOUT, align 8
  %42 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %43 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %45 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %46 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %44
  store i32 %51, i32* %49, align 4
  %52 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %53 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %52, i32 1)
  %54 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %55 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59, %struct.CommandControlBlock* %60)
  br label %62

62:                                               ; preds = %33, %1
  %63 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %64 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %63, i32 0, i32 1
  %65 = call i32 @ARCMSR_LOCK_RELEASE(i32* %64)
  ret void
}

declare dso_local i32 @ARCMSR_LOCK_ACQUIRE(i32*) #1

declare dso_local i32* @scsiio_cdb_ptr(i32*) #1

declare dso_local i32 @arcmsr_srb_complete(%struct.CommandControlBlock*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, %struct.CommandControlBlock*) #1

declare dso_local i32 @ARCMSR_LOCK_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
