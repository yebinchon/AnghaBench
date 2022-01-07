; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_nexus.c_nexus_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_nexus.c_nexus_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@mips_bus_space_generic = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @nexus_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @SYS_RES_IOPORT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %19, %5
  %24 = load %struct.resource*, %struct.resource** %11, align 8
  %25 = call i32 @rman_get_start(%struct.resource* %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.resource*, %struct.resource** %11, align 8
  %27 = call i32 @rman_get_size(%struct.resource* %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.resource*, %struct.resource** %11, align 8
  %29 = load i32, i32* @mips_bus_space_generic, align 4
  %30 = call i32 @rman_set_bustag(%struct.resource* %28, i32 %29)
  %31 = load %struct.resource*, %struct.resource** %11, align 8
  %32 = call i32 @rman_get_bustag(%struct.resource* %31)
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = bitcast i8** %12 to i32*
  %36 = call i32 @bus_space_map(i32 %32, i32 %33, i32 %34, i32 0, i32* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load %struct.resource*, %struct.resource** %11, align 8
  %41 = call i32 @rman_deactivate_resource(%struct.resource* %40)
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %6, align 4
  br label %61

43:                                               ; preds = %23
  %44 = load %struct.resource*, %struct.resource** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @rman_set_virtual(%struct.resource* %44, i8* %45)
  %47 = load %struct.resource*, %struct.resource** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = trunc i64 %49 to i32
  %51 = call i32 @rman_set_bushandle(%struct.resource* %47, i32 %50)
  br label %58

52:                                               ; preds = %19
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SYS_RES_IRQ, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %52
  br label %58

58:                                               ; preds = %57, %43
  %59 = load %struct.resource*, %struct.resource** %11, align 8
  %60 = call i32 @rman_activate_resource(%struct.resource* %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %39
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32) #1

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_deactivate_resource(%struct.resource*) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i8*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
