; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_getisr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_getisr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_hal = type { i32, i32, i32 }

@MALO_REG_A2H_INTERRUPT_CAUSE = common dso_local global i32 0, align 4
@MALO_REG_INT_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @malo_hal_getisr(%struct.malo_hal* %0, i32* %1) #0 {
  %3 = alloca %struct.malo_hal*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.malo_hal* %0, %struct.malo_hal** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %7 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %10 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MALO_REG_A2H_INTERRUPT_CAUSE, align 4
  %13 = call i32 @bus_space_read_4(i32 %8, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %22 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %25 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MALO_REG_A2H_INTERRUPT_CAUSE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %30 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = call i32 @bus_space_write_4(i32 %23, i32 %26, i32 %27, i32 %33)
  %35 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %36 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %39 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MALO_REG_INT_CODE, align 4
  %42 = call i32 @bus_space_read_4(i32 %37, i32 %40, i32 %41)
  %43 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %44 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %20, %17
  br label %49

49:                                               ; preds = %48, %16
  %50 = load i32, i32* %5, align 4
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  ret void
}

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
