; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_tx_list_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_tx_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32, %struct.rl_desc*, %struct.TYPE_3__* }
%struct.rl_desc = type { i32 }
%struct.TYPE_3__ = type { i32* }

@RL_TDESC_CMD_EOR = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rl_softc*)* @re_tx_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_tx_list_init(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca %struct.rl_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %5 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %6 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %5)
  %7 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %10 = load %struct.rl_desc*, %struct.rl_desc** %9, align 8
  %11 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %12 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @bzero(%struct.rl_desc* %10, i32 %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %35, %1
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %22 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %40 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  %42 = load %struct.rl_desc*, %struct.rl_desc** %41, align 8
  %43 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %44 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.rl_desc, %struct.rl_desc* %42, i64 %48
  store %struct.rl_desc* %49, %struct.rl_desc** %3, align 8
  %50 = load i32, i32* @RL_TDESC_CMD_EOR, align 4
  %51 = call i32 @htole32(i32 %50)
  %52 = load %struct.rl_desc*, %struct.rl_desc** %3, align 8
  %53 = getelementptr inbounds %struct.rl_desc, %struct.rl_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %57 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %61 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %65 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @bus_dmamap_sync(i32 %59, i32 %63, i32 %66)
  %68 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %69 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %72 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %75 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %79 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  ret i32 0
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i32 @bzero(%struct.rl_desc*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
