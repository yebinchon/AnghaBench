; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mem/extr_memutil.c_mem_range_attr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mem/extr_memutil.c_mem_range_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, %struct.mem_range_desc*, i32*)* }
%struct.mem_range_desc = type { i32 }

@mem_range_softc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@mr_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_range_attr_set(%struct.mem_range_desc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_range_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mem_range_desc* %0, %struct.mem_range_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mem_range_softc, i32 0, i32 0), align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %10, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = call i32 @rw_wlock(i32* @mr_lock)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mem_range_softc, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_5__*, %struct.mem_range_desc*, i32*)*, i32 (%struct.TYPE_5__*, %struct.mem_range_desc*, i32*)** %14, align 8
  %16 = load %struct.mem_range_desc*, %struct.mem_range_desc** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 %15(%struct.TYPE_5__* @mem_range_softc, %struct.mem_range_desc* %16, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = call i32 @rw_wunlock(i32* @mr_lock)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %11, %9
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
