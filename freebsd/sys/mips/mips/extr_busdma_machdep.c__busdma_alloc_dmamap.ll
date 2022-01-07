; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c__busdma_alloc_dmamap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c__busdma_alloc_dmamap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.sync_list* }
%struct.sync_list = type { i32 }
%struct.TYPE_8__ = type { i32 }

@M_BUSDMA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@dmamap_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_8__*)* @_busdma_alloc_dmamap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @_busdma_alloc_dmamap(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.sync_list*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @M_BUSDMA, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = call %struct.sync_list* @malloc(i32 %11, i32 %12, i32 %13)
  store %struct.sync_list* %14, %struct.sync_list** %4, align 8
  %15 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %16 = icmp eq %struct.sync_list* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %35

18:                                               ; preds = %1
  %19 = load i32, i32* @dmamap_zone, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = call %struct.TYPE_7__* @uma_zalloc_arg(i32 %19, %struct.TYPE_8__* %20, i32 %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.sync_list* %26, %struct.sync_list** %28, align 8
  br label %33

29:                                               ; preds = %18
  %30 = load %struct.sync_list*, %struct.sync_list** %4, align 8
  %31 = load i32, i32* @M_BUSDMA, align 4
  %32 = call i32 @free(%struct.sync_list* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %2, align 8
  br label %35

35:                                               ; preds = %33, %17
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %36
}

declare dso_local %struct.sync_list* @malloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @uma_zalloc_arg(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @free(%struct.sync_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
