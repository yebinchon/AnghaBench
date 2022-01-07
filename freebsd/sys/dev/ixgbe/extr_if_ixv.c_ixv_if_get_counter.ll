; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ixv_if_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixv_if_get_counter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @iflib_get_ifp(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %33 [
    i32 130, label %13
    i32 128, label %17
    i32 132, label %21
    i32 129, label %25
    i32 131, label %29
  ]

13:                                               ; preds = %2
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.adapter*, %struct.adapter** %6, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.adapter*, %struct.adapter** %6, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.adapter*, %struct.adapter** %6, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @if_get_counter_default(i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %29, %25, %21, %17, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

declare dso_local i32 @if_get_counter_default(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
