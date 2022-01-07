; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_subr.c_gv_update_vol_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_subr.c_gv_update_vol_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_volume = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_update_vol_size(%struct.gv_volume* %0, i8* %1) #0 {
  %3 = alloca %struct.gv_volume*, align 8
  %4 = alloca i8*, align 8
  store %struct.gv_volume* %0, %struct.gv_volume** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.gv_volume*, %struct.gv_volume** %3, align 8
  %6 = icmp eq %struct.gv_volume* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %25

8:                                                ; preds = %2
  %9 = load %struct.gv_volume*, %struct.gv_volume** %3, align 8
  %10 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = call i32 (...) @g_topology_lock()
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.gv_volume*, %struct.gv_volume** %3, align 8
  %17 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* %15, i8** %19, align 8
  %20 = call i32 (...) @g_topology_unlock()
  br label %21

21:                                               ; preds = %13, %8
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.gv_volume*, %struct.gv_volume** %3, align 8
  %24 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %21, %7
  ret void
}

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_topology_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
