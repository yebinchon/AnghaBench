; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.sbc_softc = type { i32*, i32*, i32* }

@IO_MAX = common dso_local global i32 0, align 4
@DRQ_MAX = common dso_local global i32 0, align 4
@IRQ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @sbc_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.sbc_softc*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.sbc_softc* @device_get_softc(i32 %15)
  store %struct.sbc_softc* %16, %struct.sbc_softc** %12, align 8
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %36 [
    i32 129, label %18
    i32 130, label %24
    i32 128, label %30
  ]

18:                                               ; preds = %5
  %19 = load %struct.sbc_softc*, %struct.sbc_softc** %12, align 8
  %20 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* @IO_MAX, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %14, align 4
  br label %37

24:                                               ; preds = %5
  %25 = load %struct.sbc_softc*, %struct.sbc_softc** %12, align 8
  %26 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %13, align 8
  %28 = load i32, i32* @DRQ_MAX, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %14, align 4
  br label %37

30:                                               ; preds = %5
  %31 = load %struct.sbc_softc*, %struct.sbc_softc** %12, align 8
  %32 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %13, align 8
  %34 = load i32, i32* @IRQ_MAX, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  br label %37

36:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %56

37:                                               ; preds = %30, %24, %18
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %37
  store i32 1, i32* %6, align 4
  br label %56

49:                                               ; preds = %41
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %48, %36
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.sbc_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
