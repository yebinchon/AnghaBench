; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spibus.c_spibus_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spibus.c_spibus_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spibus_ivar = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @spibus_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spibus_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.spibus_ivar*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.spibus_ivar* @SPIBUS_IVAR(i32 %11)
  store %struct.spibus_ivar* %12, %struct.spibus_ivar** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %14 [
    i32 129, label %16
    i32 128, label %22
    i32 130, label %28
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %35

16:                                               ; preds = %4
  %17 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %18 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i64*, i64** %9, align 8
  %21 = bitcast i64* %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %34

22:                                               ; preds = %4
  %23 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %24 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64*, i64** %9, align 8
  %27 = bitcast i64* %26 to i32*
  store i32 %25, i32* %27, align 4
  br label %34

28:                                               ; preds = %4
  %29 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %30 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64*, i64** %9, align 8
  %33 = bitcast i64* %32 to i32*
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %22, %16
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %14
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.spibus_ivar* @SPIBUS_IVAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
