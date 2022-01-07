; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_register_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_register_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"failed mapping interrupt line for core %u: %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.siba_devinfo*)* @siba_register_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_register_interrupts(i32 %0, i32 %1, %struct.siba_devinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.siba_devinfo*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.siba_devinfo* %2, %struct.siba_devinfo** %7, align 8
  %9 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %10 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

15:                                               ; preds = %3
  %16 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %17 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %20 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %23 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %28 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = call i32 @BHND_BUS_MAP_INTR(i32 %25, i32 %26, i32 0, i64* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %15
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %36 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %62

43:                                               ; preds = %15
  %44 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %45 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %48 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %47, i32 0, i32 1
  %49 = load i32, i32* @SYS_RES_IRQ, align 4
  %50 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %51 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %55 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @resource_list_add_next(i32* %48, i32 %49, i64 %53, i64 %57, i32 1)
  %59 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %60 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %43, %33, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @BHND_BUS_MAP_INTR(i32, i32, i32, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @resource_list_add_next(i32*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
