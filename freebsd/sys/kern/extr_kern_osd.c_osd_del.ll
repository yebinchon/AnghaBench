; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_osd.c_osd_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_osd.c_osd_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.osd = type { i32 }
%struct.rm_priotracker = type { i32 }

@osdm = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_del(i64 %0, %struct.osd* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.osd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rm_priotracker, align 4
  store i64 %0, i64* %4, align 8
  store %struct.osd* %1, %struct.osd** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @rm_rlock(i32* %11, %struct.rm_priotracker* %7)
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.osd*, %struct.osd** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @do_osd_del(i64 %13, %struct.osd* %14, i64 %15, i32 0)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @rm_runlock(i32* %20, %struct.rm_priotracker* %7)
  ret void
}

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @do_osd_del(i64, %struct.osd*, i64, i32) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
