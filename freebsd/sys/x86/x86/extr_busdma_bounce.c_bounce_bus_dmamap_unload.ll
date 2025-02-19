; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_bounce_bus_dmamap_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_bounce_bus_dmamap_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.bounce_page = type { i32 }

@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @bounce_bus_dmamap_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bounce_bus_dmamap_unload(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.bounce_page*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %23

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %15, %9
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call %struct.bounce_page* @STAILQ_FIRST(i32* %12)
  store %struct.bounce_page* %13, %struct.bounce_page** %5, align 8
  %14 = icmp ne %struct.bounce_page* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* @links, align 4
  %19 = call i32 @STAILQ_REMOVE_HEAD(i32* %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.bounce_page*, %struct.bounce_page** %5, align 8
  %22 = call i32 @free_bounce_page(i32 %20, %struct.bounce_page* %21)
  br label %10

23:                                               ; preds = %8, %10
  ret void
}

declare dso_local %struct.bounce_page* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free_bounce_page(i32, %struct.bounce_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
