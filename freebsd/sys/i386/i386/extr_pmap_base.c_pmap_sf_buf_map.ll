; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap_base.c_pmap_sf_buf_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap_base.c_pmap_sf_buf_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.sf_buf*)* }
%struct.sf_buf = type { i32 }

@pmap_methods_ptr = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_sf_buf_map(%struct.sf_buf* %0) #0 {
  %2 = alloca %struct.sf_buf*, align 8
  store %struct.sf_buf* %0, %struct.sf_buf** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmap_methods_ptr, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32 (%struct.sf_buf*)*, i32 (%struct.sf_buf*)** %4, align 8
  %6 = load %struct.sf_buf*, %struct.sf_buf** %2, align 8
  %7 = call i32 %5(%struct.sf_buf* %6)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
