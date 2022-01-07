; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_write_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_write_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_device = type { i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @isa_write_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isa_write_ivar(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.isa_device*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.isa_device* @DEVTOISA(i32 %11)
  store %struct.isa_device* %12, %struct.isa_device** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %36 [
    i32 131, label %14
    i32 130, label %14
    i32 133, label %14
    i32 132, label %14
    i32 137, label %14
    i32 136, label %14
    i32 135, label %14
    i32 134, label %14
    i32 140, label %14
    i32 139, label %14
    i32 142, label %14
    i32 141, label %14
    i32 128, label %16
    i32 129, label %20
    i32 138, label %24
    i32 144, label %28
    i32 143, label %32
  ]

14:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %39

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %19 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %38

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %23 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  br label %38

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %27 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  br label %38

28:                                               ; preds = %4
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %31 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  br label %38

32:                                               ; preds = %4
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.isa_device*, %struct.isa_device** %10, align 8
  %35 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  br label %38

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOENT, align 4
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %32, %28, %24, %20, %16
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %36, %14
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.isa_device* @DEVTOISA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
