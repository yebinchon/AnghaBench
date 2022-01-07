; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_rx_list_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_rx_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i64, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }

@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rl_softc*)* @re_rx_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_rx_list_init(%struct.rl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %3, align 8
  %6 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %7 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 @bzero(i32 %9, i32 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %41, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %21 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %18
  %26 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %27 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @re_newbuf(%struct.rl_softc* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %66

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %18

44:                                               ; preds = %18
  %45 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %46 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %50 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %54 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @bus_dmamap_sync(i32 %48, i32 %52, i32 %55)
  %57 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %58 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %61 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %63 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %62, i32 0, i32 2
  store i32 0, i32* %63, align 8
  %64 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %65 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %44, %38
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @re_newbuf(%struct.rl_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
