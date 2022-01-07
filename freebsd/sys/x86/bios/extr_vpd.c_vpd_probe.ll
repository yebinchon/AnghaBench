; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/bios/extr_vpd.c_vpd_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/bios/extr_vpd.c_vpd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate memory resource.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"VPD checksum failed.  BIOS update may be required.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vpd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpd_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @SYS_RES_MEMORY, align 4
  %8 = load i32, i32* @RF_ACTIVE, align 4
  %9 = call %struct.resource* @bus_alloc_resource_any(i32 %6, i32 %7, i32* %4, i32 %8)
  store %struct.resource* %9, %struct.resource** %3, align 8
  %10 = load %struct.resource*, %struct.resource** %3, align 8
  %11 = icmp eq %struct.resource* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %5, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.resource*, %struct.resource** %3, align 8
  %18 = call i32 @RES2VPD(%struct.resource* %17)
  %19 = call i64 @vpd_cksum(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %24, %12
  %26 = load %struct.resource*, %struct.resource** %3, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.resource*, %struct.resource** %3, align 8
  %33 = call i32 @bus_release_resource(i32 %29, i32 %30, i32 %31, %struct.resource* %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @vpd_cksum(i32) #1

declare dso_local i32 @RES2VPD(%struct.resource*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
