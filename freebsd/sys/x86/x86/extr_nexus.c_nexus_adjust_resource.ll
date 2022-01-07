; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_adjust_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_adjust_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.rman = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.resource*, i32, i32)* @nexus_adjust_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_adjust_resource(i32 %0, i32 %1, i32 %2, %struct.resource* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rman*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.resource* %3, %struct.resource** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.rman* @nexus_rman(i32 %15)
  store %struct.rman* %16, %struct.rman** %14, align 8
  %17 = load %struct.rman*, %struct.rman** %14, align 8
  %18 = icmp eq %struct.rman* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %7, align 4
  br label %33

21:                                               ; preds = %6
  %22 = load %struct.resource*, %struct.resource** %11, align 8
  %23 = load %struct.rman*, %struct.rman** %14, align 8
  %24 = call i32 @rman_is_region_manager(%struct.resource* %22, %struct.rman* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %7, align 4
  br label %33

28:                                               ; preds = %21
  %29 = load %struct.resource*, %struct.resource** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @rman_adjust_resource(%struct.resource* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %26, %19
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local %struct.rman* @nexus_rman(i32) #1

declare dso_local i32 @rman_is_region_manager(%struct.resource*, %struct.rman*) #1

declare dso_local i32 @rman_adjust_resource(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
