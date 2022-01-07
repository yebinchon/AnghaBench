; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_disk_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_disk_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i32, i32* }

@g_disk_destroy = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disk_destroy(%struct.disk* %0) #0 {
  %2 = alloca %struct.disk*, align 8
  store %struct.disk* %0, %struct.disk** %2, align 8
  %3 = load %struct.disk*, %struct.disk** %2, align 8
  %4 = call i32 @g_cancel_event(%struct.disk* %3)
  %5 = load %struct.disk*, %struct.disk** %2, align 8
  %6 = getelementptr inbounds %struct.disk, %struct.disk* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.disk*, %struct.disk** %2, align 8
  %8 = getelementptr inbounds %struct.disk, %struct.disk* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.disk*, %struct.disk** %2, align 8
  %13 = getelementptr inbounds %struct.disk, %struct.disk* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @devstat_remove_entry(i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @g_disk_destroy, align 4
  %18 = load %struct.disk*, %struct.disk** %2, align 8
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = call i32 @g_post_event(i32 %17, %struct.disk* %18, i32 %19, i32* null)
  ret void
}

declare dso_local i32 @g_cancel_event(%struct.disk*) #1

declare dso_local i32 @devstat_remove_entry(i32*) #1

declare dso_local i32 @g_post_event(i32, %struct.disk*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
