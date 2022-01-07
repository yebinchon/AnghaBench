; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_write_target_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_write_target_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { %struct.bhnd_resource** }
%struct.bhnd_resource = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s missing CFG0 mapping\00", align 1
@SIBA_CFG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s invalid CFG0 register offset %#jx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siba_write_target_state(i32 %0, %struct.siba_devinfo* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.siba_devinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bhnd_resource*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.siba_devinfo* %1, %struct.siba_devinfo** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %14 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %13, i32 0, i32 0
  %15 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %14, align 8
  %16 = getelementptr inbounds %struct.bhnd_resource*, %struct.bhnd_resource** %15, i64 0
  %17 = load %struct.bhnd_resource*, %struct.bhnd_resource** %16, align 8
  store %struct.bhnd_resource* %17, %struct.bhnd_resource** %11, align 8
  %18 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %19 = icmp ne %struct.bhnd_resource* %18, null
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @device_get_nameunit(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %20, i8* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @SIBA_CFG_SIZE, align 4
  %28 = sub nsw i32 %27, 4
  %29 = icmp sle i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @device_get_nameunit(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %30, i8* %35)
  %37 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @bhnd_bus_read_4(%struct.bhnd_resource* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %12, align 4
  %49 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @bhnd_bus_write_4(%struct.bhnd_resource* %49, i32 %50, i32 %51)
  %53 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @bhnd_bus_read_4(%struct.bhnd_resource* %53, i32 %54)
  %56 = call i32 @DELAY(i32 1)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bhnd_bus_read_4(%struct.bhnd_resource*, i32) #1

declare dso_local i32 @bhnd_bus_write_4(%struct.bhnd_resource*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
