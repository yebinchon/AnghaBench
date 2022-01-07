; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_discard_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_discard_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.rl_desc*, %struct.rl_rxdesc*, %struct.rl_rxdesc* }
%struct.rl_desc = type { i32, i64 }
%struct.rl_rxdesc = type { i32 }
%struct.TYPE_3__ = type { i64 }

@RL_MTU = common dso_local global i64 0, align 8
@RL_FLAG_JUMBOV2 = common dso_local global i32 0, align 4
@RL_RDESC_CMD_EOR = common dso_local global i32 0, align 4
@RL_RDESC_CMD_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*, i32)* @re_discard_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_discard_rxbuf(%struct.rl_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rl_desc*, align 8
  %6 = alloca %struct.rl_rxdesc*, align 8
  %7 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RL_MTU, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %17 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RL_FLAG_JUMBOV2, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %24 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %26, i64 %28
  store %struct.rl_rxdesc* %29, %struct.rl_rxdesc** %6, align 8
  br label %38

30:                                               ; preds = %15, %2
  %31 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %32 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %34, i64 %36
  store %struct.rl_rxdesc* %37, %struct.rl_rxdesc** %6, align 8
  br label %38

38:                                               ; preds = %30, %22
  %39 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %40 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.rl_desc*, %struct.rl_desc** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.rl_desc, %struct.rl_desc* %42, i64 %44
  store %struct.rl_desc* %45, %struct.rl_desc** %5, align 8
  %46 = load %struct.rl_desc*, %struct.rl_desc** %5, align 8
  %47 = getelementptr inbounds %struct.rl_desc, %struct.rl_desc* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %6, align 8
  %49 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %53 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = icmp eq i32 %51, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %38
  %59 = load i32, i32* @RL_RDESC_CMD_EOR, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %38
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @RL_RDESC_CMD_OWN, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @htole32(i32 %65)
  %67 = load %struct.rl_desc*, %struct.rl_desc** %5, align 8
  %68 = getelementptr inbounds %struct.rl_desc, %struct.rl_desc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  ret void
}

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
