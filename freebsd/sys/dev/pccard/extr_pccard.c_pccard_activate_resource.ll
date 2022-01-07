; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pccard_ivar = type { %struct.pccard_function* }
%struct.pccard_function = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @pccard_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.pccard_ivar*, align 8
  %12 = alloca %struct.pccard_function*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.resource* %4, %struct.resource** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.pccard_ivar* @PCCARD_IVAR(i32 %13)
  store %struct.pccard_ivar* %14, %struct.pccard_ivar** %11, align 8
  %15 = load %struct.pccard_ivar*, %struct.pccard_ivar** %11, align 8
  %16 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %15, i32 0, i32 0
  %17 = load %struct.pccard_function*, %struct.pccard_function** %16, align 8
  store %struct.pccard_function* %17, %struct.pccard_function** %12, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %33 [
    i32 128, label %19
  ]

19:                                               ; preds = %5
  %20 = load %struct.pccard_function*, %struct.pccard_function** %12, align 8
  %21 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pccard_mfc(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.pccard_function*, %struct.pccard_function** %12, align 8
  %27 = load %struct.resource*, %struct.resource** %10, align 8
  %28 = call i32 @rman_get_start(%struct.resource* %27)
  %29 = load %struct.resource*, %struct.resource** %10, align 8
  %30 = call i32 @rman_get_size(%struct.resource* %29)
  %31 = call i32 @pccard_mfc_adjust_iobase(%struct.pccard_function* %26, i32 %28, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %25, %19
  br label %34

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.resource*, %struct.resource** %10, align 8
  %40 = call i32 @bus_generic_activate_resource(i32 %35, i32 %36, i32 %37, i32 %38, %struct.resource* %39)
  ret i32 %40
}

declare dso_local %struct.pccard_ivar* @PCCARD_IVAR(i32) #1

declare dso_local i32 @pccard_mfc(i32) #1

declare dso_local i32 @pccard_mfc_adjust_iobase(%struct.pccard_function*, i32, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @bus_generic_activate_resource(i32, i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
