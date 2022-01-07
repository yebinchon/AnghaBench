; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udbp_softc = type { i32, i32* }

@NG_UDBP_HOOK_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @ng_udbp_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_udbp_newhook(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.udbp_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.udbp_softc* @NG_NODE_PRIVATE(i32 %10)
  store %struct.udbp_softc* %11, %struct.udbp_softc** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @NG_UDBP_HOOK_NAME, align 4
  %14 = call i64 @strcmp(i8* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.udbp_softc*, %struct.udbp_softc** %8, align 8
  %20 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load %struct.udbp_softc*, %struct.udbp_softc** %8, align 8
  %23 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @EISCONN, align 4
  store i32 %27, i32* %9, align 4
  br label %34

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.udbp_softc*, %struct.udbp_softc** %8, align 8
  %31 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @NG_HOOK_SET_PRIVATE(i32* %32, i32* null)
  br label %34

34:                                               ; preds = %28, %26
  %35 = load %struct.udbp_softc*, %struct.udbp_softc** %8, align 8
  %36 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %35, i32 0, i32 0
  %37 = call i32 @mtx_unlock(i32* %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.udbp_softc* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
