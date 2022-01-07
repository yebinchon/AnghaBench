; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_func_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_func_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_intrhand = type { i32, i32 (i32)*, i32*, %struct.cbb_softc* }
%struct.cbb_softc = type { i64 }

@CBB_SOCKET_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cbb_func_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbb_func_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cbb_intrhand*, align 8
  %4 = alloca %struct.cbb_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.cbb_intrhand*
  store %struct.cbb_intrhand* %6, %struct.cbb_intrhand** %3, align 8
  %7 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %3, align 8
  %8 = getelementptr inbounds %struct.cbb_intrhand, %struct.cbb_intrhand* %7, i32 0, i32 3
  %9 = load %struct.cbb_softc*, %struct.cbb_softc** %8, align 8
  store %struct.cbb_softc* %9, %struct.cbb_softc** %4, align 8
  %10 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %3, align 8
  %11 = getelementptr inbounds %struct.cbb_intrhand, %struct.cbb_intrhand* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %16 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %38

20:                                               ; preds = %14
  %21 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %22 = load i32, i32* @CBB_SOCKET_STATE, align 4
  %23 = call i32 @cbb_get(%struct.cbb_softc* %21, i32 %22)
  %24 = call i32 @CBB_CARD_PRESENT(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %28 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %38

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %3, align 8
  %32 = getelementptr inbounds %struct.cbb_intrhand, %struct.cbb_intrhand* %31, i32 0, i32 1
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %3, align 8
  %35 = getelementptr inbounds %struct.cbb_intrhand, %struct.cbb_intrhand* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %33(i32 %36)
  br label %38

38:                                               ; preds = %30, %26, %19
  ret void
}

declare dso_local i32 @CBB_CARD_PRESENT(i32) #1

declare dso_local i32 @cbb_get(%struct.cbb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
