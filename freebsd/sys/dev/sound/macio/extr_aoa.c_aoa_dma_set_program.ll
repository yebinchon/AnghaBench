; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_aoa.c_aoa_dma_set_program.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_aoa.c_aoa_dma_set_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoa_dma = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"bad size\00", align 1
@DBDMA_OUTPUT_MORE = common dso_local global i32 0, align 4
@DBDMA_ALWAYS = common dso_local global i32 0, align 4
@DBDMA_COND_TRUE = common dso_local global i32 0, align 4
@DBDMA_NEVER = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoa_dma*)* @aoa_dma_set_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aoa_dma_set_program(%struct.aoa_dma* %0) #0 {
  %2 = alloca %struct.aoa_dma*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.aoa_dma* %0, %struct.aoa_dma** %2, align 8
  %5 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %6 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @sndbuf_getbufaddr(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %10 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %13 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sndbuf_getsize(i32 %14)
  %16 = icmp eq i32 %11, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %20 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %23 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %21, %24
  %26 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %27 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %58, %1
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %31 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %36 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @DBDMA_OUTPUT_MORE, align 4
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %42 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DBDMA_ALWAYS, align 4
  %45 = load i32, i32* @DBDMA_COND_TRUE, align 4
  %46 = load i32, i32* @DBDMA_NEVER, align 4
  %47 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %48 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @dbdma_insert_command(i32 %37, i32 %38, i32 %39, i32 0, i64 %40, i32 %43, i32 %44, i32 %45, i32 %46, i32 %50)
  %52 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %53 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %3, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %34
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %63 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %66 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dbdma_insert_branch(i32 %64, i32 %67, i32 0)
  %69 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %70 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %73 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @dbdma_insert_stop(i32 %71, i32 %75)
  %77 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %78 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dbdma_set_branch_selector(i32 %79, i32 1, i32 1)
  %81 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %82 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dbdma_set_device_status(i32 %83, i32 1, i32 0)
  %85 = load %struct.aoa_dma*, %struct.aoa_dma** %2, align 8
  %86 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %89 = call i32 @dbdma_sync_commands(i32 %87, i32 %88)
  ret void
}

declare dso_local i64 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @dbdma_insert_command(i32, i32, i32, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dbdma_insert_branch(i32, i32, i32) #1

declare dso_local i32 @dbdma_insert_stop(i32, i32) #1

declare dso_local i32 @dbdma_set_branch_selector(i32, i32, i32) #1

declare dso_local i32 @dbdma_set_device_status(i32, i32, i32) #1

declare dso_local i32 @dbdma_sync_commands(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
