; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.ixl_vsi }
%struct.ixl_vsi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ixl_if_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_if_get_counter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixl_pf*, align 8
  %7 = alloca %struct.ixl_vsi*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ixl_pf* @iflib_get_softc(i32 %9)
  store %struct.ixl_pf* %10, %struct.ixl_pf** %6, align 8
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %6, align 8
  %12 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %11, i32 0, i32 0
  store %struct.ixl_vsi* %12, %struct.ixl_vsi** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @iflib_get_ifp(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %61 [
    i32 135, label %16
    i32 137, label %20
    i32 129, label %24
    i32 131, label %28
    i32 139, label %32
    i32 138, label %33
    i32 132, label %37
    i32 136, label %41
    i32 130, label %45
    i32 134, label %49
    i32 128, label %53
    i32 133, label %57
  ]

16:                                               ; preds = %2
  %17 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %18 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %65

20:                                               ; preds = %2
  %21 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %22 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %2
  %25 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %26 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %2
  %29 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %30 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

33:                                               ; preds = %2
  %34 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %35 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %65

37:                                               ; preds = %2
  %38 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %39 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %65

41:                                               ; preds = %2
  %42 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %43 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %65

45:                                               ; preds = %2
  %46 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %47 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %65

49:                                               ; preds = %2
  %50 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %51 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  br label %65

53:                                               ; preds = %2
  %54 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %55 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  br label %65

57:                                               ; preds = %2
  %58 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %59 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %3, align 4
  br label %65

61:                                               ; preds = %2
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @if_get_counter_default(i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %57, %53, %49, %45, %41, %37, %33, %32, %28, %24, %20, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

declare dso_local i32 @if_get_counter_default(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
