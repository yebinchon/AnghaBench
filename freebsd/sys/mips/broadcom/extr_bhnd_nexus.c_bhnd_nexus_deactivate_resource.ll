; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bhnd_nexus.c_bhnd_nexus_deactivate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bhnd_nexus.c_bhnd_nexus_deactivate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_resource = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"indirect resource delegated to bhnd_nexus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.bhnd_resource*)* @bhnd_nexus_deactivate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nexus_deactivate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.bhnd_resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bhnd_resource*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.bhnd_resource* %4, %struct.bhnd_resource** %11, align 8
  %13 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %14 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %21 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bus_deactivate_resource(i32 %17, i32 %18, i32 %19, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %30

27:                                               ; preds = %5
  %28 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %29 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_deactivate_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
