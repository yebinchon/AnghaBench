; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_deactivate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_deactivate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @unin_chip_deactivate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unin_chip_deactivate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.resource* %4, %struct.resource** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SYS_RES_MEMORY, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @SYS_RES_IOPORT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15, %5
  %20 = load %struct.resource*, %struct.resource** %10, align 8
  %21 = call i32 @rman_get_size(%struct.resource* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.resource*, %struct.resource** %10, align 8
  %23 = call i64 @rman_get_virtual(%struct.resource* %22)
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @pmap_unmapdev(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %15
  %28 = load %struct.resource*, %struct.resource** %10, align 8
  %29 = call i32 @rman_deactivate_resource(%struct.resource* %28)
  ret i32 %29
}

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @pmap_unmapdev(i32, i32) #1

declare dso_local i64 @rman_get_virtual(%struct.resource*) #1

declare dso_local i32 @rman_deactivate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
