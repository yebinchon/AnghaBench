; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i32)* @bcma_add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bcma_add_child(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcma_devinfo*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32* @device_add_child_ordered(i32* %12, i32 %13, i8* %14, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %33

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.bcma_devinfo* @bcma_alloc_dinfo(i32* %21)
  store %struct.bcma_devinfo* %22, %struct.bcma_devinfo** %10, align 8
  %23 = icmp eq %struct.bcma_devinfo* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @device_delete_child(i32* %25, i32* %26)
  store i32* null, i32** %5, align 8
  br label %33

28:                                               ; preds = %20
  %29 = load i32*, i32** %11, align 8
  %30 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %10, align 8
  %31 = call i32 @device_set_ivars(i32* %29, %struct.bcma_devinfo* %30)
  %32 = load i32*, i32** %11, align 8
  store i32* %32, i32** %5, align 8
  br label %33

33:                                               ; preds = %28, %24, %19
  %34 = load i32*, i32** %5, align 8
  ret i32* %34
}

declare dso_local i32* @device_add_child_ordered(i32*, i32, i8*, i32) #1

declare dso_local %struct.bcma_devinfo* @bcma_alloc_dinfo(i32*) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.bcma_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
