; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_init_devnames.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_init_devnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32*, i32 }

@CHELSIO_T4 = common dso_local global i32 0, align 4
@devnames = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"chip id %d is not supported.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_init_devnames(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call i32 @chip_id(%struct.adapter* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @CHELSIO_T4, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CHELSIO_T4, align 4
  %12 = sub nsw i32 %10, %11
  %13 = load i32*, i32** @devnames, align 8
  %14 = call i32 @nitems(i32* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load i32*, i32** @devnames, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @CHELSIO_T4, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  br label %33

25:                                               ; preds = %9, %1
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %25, %16
  ret void
}

declare dso_local i32 @chip_id(%struct.adapter*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
