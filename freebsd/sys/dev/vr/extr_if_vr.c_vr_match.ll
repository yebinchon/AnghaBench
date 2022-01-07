; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_type = type { i64, i64, i32* }

@vr_devs = common dso_local global %struct.vr_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vr_type* (i32)* @vr_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vr_type* @vr_match(i32 %0) #0 {
  %2 = alloca %struct.vr_type*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vr_type*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.vr_type*, %struct.vr_type** @vr_devs, align 8
  store %struct.vr_type* %5, %struct.vr_type** %4, align 8
  %6 = load %struct.vr_type*, %struct.vr_type** @vr_devs, align 8
  store %struct.vr_type* %6, %struct.vr_type** %4, align 8
  br label %7

7:                                                ; preds = %29, %1
  %8 = load %struct.vr_type*, %struct.vr_type** %4, align 8
  %9 = getelementptr inbounds %struct.vr_type, %struct.vr_type* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @pci_get_vendor(i32 %13)
  %15 = load %struct.vr_type*, %struct.vr_type** %4, align 8
  %16 = getelementptr inbounds %struct.vr_type, %struct.vr_type* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @pci_get_device(i32 %20)
  %22 = load %struct.vr_type*, %struct.vr_type** %4, align 8
  %23 = getelementptr inbounds %struct.vr_type, %struct.vr_type* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load %struct.vr_type*, %struct.vr_type** %4, align 8
  store %struct.vr_type* %27, %struct.vr_type** %2, align 8
  br label %33

28:                                               ; preds = %19, %12
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.vr_type*, %struct.vr_type** %4, align 8
  %31 = getelementptr inbounds %struct.vr_type, %struct.vr_type* %30, i32 1
  store %struct.vr_type* %31, %struct.vr_type** %4, align 8
  br label %7

32:                                               ; preds = %7
  store %struct.vr_type* null, %struct.vr_type** %2, align 8
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.vr_type*, %struct.vr_type** %2, align 8
  ret %struct.vr_type* %34
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
