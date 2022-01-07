; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_q = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@M_UMTX = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PRI_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.umtx_q* @umtxq_alloc() #0 {
  %1 = alloca %struct.umtx_q*, align 8
  %2 = load i32, i32* @M_UMTX, align 4
  %3 = load i32, i32* @M_WAITOK, align 4
  %4 = load i32, i32* @M_ZERO, align 4
  %5 = or i32 %3, %4
  %6 = call i8* @malloc(i32 16, i32 %2, i32 %5)
  %7 = bitcast i8* %6 to %struct.umtx_q*
  store %struct.umtx_q* %7, %struct.umtx_q** %1, align 8
  %8 = load i32, i32* @M_UMTX, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @malloc(i32 4, i32 %8, i32 %11)
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  %14 = load %struct.umtx_q*, %struct.umtx_q** %1, align 8
  %15 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %14, i32 0, i32 2
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %15, align 8
  %16 = load %struct.umtx_q*, %struct.umtx_q** %1, align 8
  %17 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @TAILQ_INIT(i32* %19)
  %21 = load %struct.umtx_q*, %struct.umtx_q** %1, align 8
  %22 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %21, i32 0, i32 1
  %23 = call i32 @TAILQ_INIT(i32* %22)
  %24 = load i32, i32* @PRI_MAX, align 4
  %25 = load %struct.umtx_q*, %struct.umtx_q** %1, align 8
  %26 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.umtx_q*, %struct.umtx_q** %1, align 8
  ret %struct.umtx_q* %27
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
