; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_link_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_link_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_child = type { i64, %struct.ntb_child*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_link_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_child*, align 8
  %5 = alloca %struct.ntb_child**, align 8
  %6 = alloca %struct.ntb_child*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ntb_child* @device_get_ivars(i32 %7)
  store %struct.ntb_child* %8, %struct.ntb_child** %4, align 8
  %9 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %10 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = call %struct.ntb_child** @device_get_softc(i32 %12)
  store %struct.ntb_child** %13, %struct.ntb_child*** %5, align 8
  %14 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %15 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.ntb_child*, %struct.ntb_child** %4, align 8
  %21 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.ntb_child**, %struct.ntb_child*** %5, align 8
  %23 = load %struct.ntb_child*, %struct.ntb_child** %22, align 8
  store %struct.ntb_child* %23, %struct.ntb_child** %6, align 8
  br label %24

24:                                               ; preds = %34, %19
  %25 = load %struct.ntb_child*, %struct.ntb_child** %6, align 8
  %26 = icmp ne %struct.ntb_child* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.ntb_child*, %struct.ntb_child** %6, align 8
  %29 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %42

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.ntb_child*, %struct.ntb_child** %6, align 8
  %36 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %35, i32 0, i32 1
  %37 = load %struct.ntb_child*, %struct.ntb_child** %36, align 8
  store %struct.ntb_child* %37, %struct.ntb_child** %6, align 8
  br label %24

38:                                               ; preds = %24
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_get_parent(i32 %39)
  %41 = call i32 @NTB_LINK_DISABLE(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %32, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.ntb_child* @device_get_ivars(i32) #1

declare dso_local %struct.ntb_child** @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @NTB_LINK_DISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
