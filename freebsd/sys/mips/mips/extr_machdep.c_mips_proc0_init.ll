; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_machdep.c_mips_proc0_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_machdep.c_mips_proc0_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.pcb*, i32* }
%struct.pcb = type { i32 }

@proc0 = common dso_local global i32 0, align 4
@thread0 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@kstack0 = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"kstack0 is not aligned on a page boundary: 0x%0lx\00", align 1
@KSTACK_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DPCPU_SIZE = common dso_local global i32 0, align 4
@curpcb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_proc0_init() #0 {
  %1 = call i32 @proc_linkup0(i32* @proc0, %struct.TYPE_3__* @thread0)
  %2 = load i32, i32* @kstack0, align 4
  %3 = load i32, i32* @PAGE_MASK, align 4
  %4 = and i32 %2, %3
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* @kstack0, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @KASSERT(i32 %6, i8* %9)
  %11 = load i32, i32* @kstack0, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 0), align 8
  %12 = load i32, i32* @KSTACK_PAGES, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 0), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 1), align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = add nsw i32 %13, %16
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.pcb*
  %20 = getelementptr inbounds %struct.pcb, %struct.pcb* %19, i64 -1
  store %struct.pcb* %20, %struct.pcb** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 2), align 8
  %21 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 2), align 8
  %22 = getelementptr inbounds %struct.pcb, %struct.pcb* %21, i32 0, i32 0
  store i32* %22, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 3), align 8
  %23 = load i32, i32* @DPCPU_SIZE, align 4
  %24 = call i64 @pmap_steal_memory(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @dpcpu_init(i8* %25, i32 0)
  %27 = load i32, i32* @curpcb, align 4
  %28 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 2), align 8
  %29 = call i32 @PCPU_SET(i32 %27, %struct.pcb* %28)
  ret void
}

declare dso_local i32 @proc_linkup0(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dpcpu_init(i8*, i32) #1

declare dso_local i64 @pmap_steal_memory(i32) #1

declare dso_local i32 @PCPU_SET(i32, %struct.pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
