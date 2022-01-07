; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_nexus.c_nexus_deactivate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_nexus.c_nexus_deactivate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @nexus_deactivate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_deactivate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.resource* %4, %struct.resource** %10, align 8
  %13 = load %struct.resource*, %struct.resource** %10, align 8
  %14 = call i64 @rman_get_bushandle(%struct.resource* %13)
  store i64 %14, i64* %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.resource*, %struct.resource** %10, align 8
  %23 = call i64 @rman_get_size(%struct.resource* %22)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.resource*, %struct.resource** %10, align 8
  %25 = call i32 @rman_get_bustag(%struct.resource* %24)
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @bus_space_unmap(i32 %25, i64 %26, i64 %27)
  %29 = load %struct.resource*, %struct.resource** %10, align 8
  %30 = call i32 @rman_set_virtual(%struct.resource* %29, i32* null)
  %31 = load %struct.resource*, %struct.resource** %10, align 8
  %32 = call i32 @rman_set_bushandle(%struct.resource* %31, i32 0)
  br label %39

33:                                               ; preds = %18, %5
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SYS_RES_IRQ, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %33
  br label %39

39:                                               ; preds = %38, %21
  %40 = load %struct.resource*, %struct.resource** %10, align 8
  %41 = call i32 @rman_deactivate_resource(%struct.resource* %40)
  ret i32 %41
}

declare dso_local i64 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @bus_space_unmap(i32, i64, i64) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i32*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_deactivate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
