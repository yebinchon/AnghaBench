; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@HN_FLAG_RXVF = common dso_local global i32 0, align 4
@hn_xpnt_vf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_resume(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %3 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %4 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %13 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @HN_FLAG_RXVF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11, %1
  %19 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %20 = call i32 @hn_resume_data(%struct.hn_softc* %19)
  br label %21

21:                                               ; preds = %18, %11
  %22 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %23 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HN_FLAG_RXVF, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load i64, i64* @hn_xpnt_vf, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %33 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %28
  %37 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %38 = call i32 @hn_resume_mgmt(%struct.hn_softc* %37)
  br label %39

39:                                               ; preds = %36, %31, %21
  %40 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %41 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %50 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %55 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %56 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @hn_polling(%struct.hn_softc* %54, i64 %57)
  br label %59

59:                                               ; preds = %53, %48, %39
  ret void
}

declare dso_local i32 @hn_resume_data(%struct.hn_softc*) #1

declare dso_local i32 @hn_resume_mgmt(%struct.hn_softc*) #1

declare dso_local i32 @hn_polling(%struct.hn_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
