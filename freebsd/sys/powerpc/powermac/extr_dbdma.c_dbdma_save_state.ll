; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_dbdma.c_dbdma_save_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_dbdma.c_dbdma_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8** }

@CHAN_CMDPTR = common dso_local global i32 0, align 4
@CHAN_CMDPTR_HI = common dso_local global i32 0, align 4
@CHAN_INTR_SELECT = common dso_local global i32 0, align 4
@CHAN_BRANCH_SELECT = common dso_local global i32 0, align 4
@CHAN_WAIT_SELECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbdma_save_state(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = load i32, i32* @CHAN_CMDPTR, align 4
  %5 = call i8* @dbdma_read_reg(%struct.TYPE_5__* %3, i32 %4)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i8**, i8*** %7, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  store i8* %5, i8** %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = load i32, i32* @CHAN_CMDPTR_HI, align 4
  %12 = call i8* @dbdma_read_reg(%struct.TYPE_5__* %10, i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* %12, i8** %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = load i32, i32* @CHAN_INTR_SELECT, align 4
  %19 = call i8* @dbdma_read_reg(%struct.TYPE_5__* %17, i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  store i8* %19, i8** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load i32, i32* @CHAN_BRANCH_SELECT, align 4
  %26 = call i8* @dbdma_read_reg(%struct.TYPE_5__* %24, i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 3
  store i8* %26, i8** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = load i32, i32* @CHAN_WAIT_SELECT, align 4
  %33 = call i8* @dbdma_read_reg(%struct.TYPE_5__* %31, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 4
  store i8* %33, i8** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = call i32 @dbdma_stop(%struct.TYPE_5__* %38)
  ret void
}

declare dso_local i8* @dbdma_read_reg(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dbdma_stop(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
