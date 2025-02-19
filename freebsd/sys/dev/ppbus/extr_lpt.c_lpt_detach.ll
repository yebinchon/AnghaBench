; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lpt_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lpt_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpt_data = type { i32, i32, i32*, i32, i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lpt_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpt_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpt_data*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.lpt_data* @DEVTOSOFTC(i32 %5)
  store %struct.lpt_data* %6, %struct.lpt_data** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %10 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @destroy_dev(i32 %11)
  %13 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %14 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @destroy_dev(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ppb_lock(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @lpt_release_ppbus(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ppb_unlock(i32 %21)
  %23 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %24 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %23, i32 0, i32 4
  %25 = call i32 @callout_drain(i32* %24)
  %26 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %27 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %1
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %33 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %36 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bus_teardown_intr(i32 %31, i32* %34, i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @SYS_RES_IRQ, align 4
  %41 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %42 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @bus_release_resource(i32 %39, i32 %40, i32 0, i32* %43)
  br label %45

45:                                               ; preds = %30, %1
  %46 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %47 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @M_DEVBUF, align 4
  %50 = call i32 @free(i32 %48, i32 %49)
  %51 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %52 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @M_DEVBUF, align 4
  %55 = call i32 @free(i32 %53, i32 %54)
  ret i32 0
}

declare dso_local %struct.lpt_data* @DEVTOSOFTC(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @lpt_release_ppbus(i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
