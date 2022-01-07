; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wtap/plugins/extr_visibility.c_add_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wtap/plugins/extr_visibility.c_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visibility_plugin = type { i32, %struct.vis_map* }
%struct.vis_map = type { i32* }
%struct.link = type { i64, i32 }

@ARRAY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.visibility_plugin*, %struct.link*)* @add_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_link(%struct.visibility_plugin* %0, %struct.link* %1) #0 {
  %3 = alloca %struct.visibility_plugin*, align 8
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.vis_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.visibility_plugin* %0, %struct.visibility_plugin** %3, align 8
  store %struct.link* %1, %struct.link** %4, align 8
  %9 = load %struct.visibility_plugin*, %struct.visibility_plugin** %3, align 8
  %10 = getelementptr inbounds %struct.visibility_plugin, %struct.visibility_plugin* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.visibility_plugin*, %struct.visibility_plugin** %3, align 8
  %13 = getelementptr inbounds %struct.visibility_plugin, %struct.visibility_plugin* %12, i32 0, i32 1
  %14 = load %struct.vis_map*, %struct.vis_map** %13, align 8
  %15 = load %struct.link*, %struct.link** %4, align 8
  %16 = getelementptr inbounds %struct.link, %struct.link* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.vis_map, %struct.vis_map* %14, i64 %17
  store %struct.vis_map* %18, %struct.vis_map** %5, align 8
  %19 = load %struct.link*, %struct.link** %4, align 8
  %20 = getelementptr inbounds %struct.link, %struct.link* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ARRAY_SIZE, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.link*, %struct.link** %4, align 8
  %25 = getelementptr inbounds %struct.link, %struct.link* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ARRAY_SIZE, align 4
  %28 = srem i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.vis_map*, %struct.vis_map** %5, align 8
  %32 = getelementptr inbounds %struct.vis_map, %struct.vis_map* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.vis_map*, %struct.vis_map** %5, align 8
  %41 = getelementptr inbounds %struct.vis_map, %struct.vis_map* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load %struct.visibility_plugin*, %struct.visibility_plugin** %3, align 8
  %47 = getelementptr inbounds %struct.visibility_plugin, %struct.visibility_plugin* %46, i32 0, i32 0
  %48 = call i32 @mtx_unlock(i32* %47)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
