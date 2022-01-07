; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_bus_machdep.c_sparc64_dma_alloc_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_bus_machdep.c_sparc64_dma_alloc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparc64_dma_alloc_map(%struct.TYPE_7__* %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @M_DEVBUF, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = call %struct.TYPE_6__* @malloc(i32 %16, i32 %17, i32 %18)
  %20 = bitcast %struct.TYPE_6__* %19 to i32*
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %10
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %10
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.TYPE_6__* @malloc(i32 4, i32 %31, i32 %34)
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %36, align 8
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %3, align 4
  br label %51

42:                                               ; preds = %30
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @SLIST_INIT(i32* %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %42, %40, %27
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_6__* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
