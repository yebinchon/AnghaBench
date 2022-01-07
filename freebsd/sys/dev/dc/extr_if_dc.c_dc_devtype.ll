; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_devtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_devtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_type = type { i64, i64, i32* }

@dc_devs = common dso_local global %struct.dc_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dc_type* (i32)* @dc_devtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dc_type* @dc_devtype(i32 %0) #0 {
  %2 = alloca %struct.dc_type*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_type*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load %struct.dc_type*, %struct.dc_type** @dc_devs, align 8
  store %struct.dc_type* %7, %struct.dc_type** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @pci_get_devid(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @pci_get_revid(i32 %10)
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %31, %1
  %13 = load %struct.dc_type*, %struct.dc_type** %4, align 8
  %14 = getelementptr inbounds %struct.dc_type, %struct.dc_type* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.dc_type*, %struct.dc_type** %4, align 8
  %20 = getelementptr inbounds %struct.dc_type, %struct.dc_type* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.dc_type*, %struct.dc_type** %4, align 8
  %26 = getelementptr inbounds %struct.dc_type, %struct.dc_type* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.dc_type*, %struct.dc_type** %4, align 8
  store %struct.dc_type* %30, %struct.dc_type** %2, align 8
  br label %35

31:                                               ; preds = %23, %17
  %32 = load %struct.dc_type*, %struct.dc_type** %4, align 8
  %33 = getelementptr inbounds %struct.dc_type, %struct.dc_type* %32, i32 1
  store %struct.dc_type* %33, %struct.dc_type** %4, align 8
  br label %12

34:                                               ; preds = %12
  store %struct.dc_type* null, %struct.dc_type** %2, align 8
  br label %35

35:                                               ; preds = %34, %29
  %36 = load %struct.dc_type*, %struct.dc_type** %2, align 8
  ret %struct.dc_type* %36
}

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
