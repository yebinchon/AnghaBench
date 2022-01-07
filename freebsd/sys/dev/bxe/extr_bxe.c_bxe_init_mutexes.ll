; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_mutexes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_mutexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"bxe%d_core_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"bxe%d_sp_lock\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bxe%d_dmae_lock\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"bxe%d_phy_lock\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"bxe%d_fwmb_lock\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"bxe%d_print_lock\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"bxe%d_stats_lock\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"bxe%d_mcast_lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_init_mutexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_init_mutexes(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %3 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %4 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %3, i32 0, i32 14
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @snprintf(i32 %5, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 15
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 14
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %11, i32 %14, i32* null, i32 %15)
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snprintf(i32 %19, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 13
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %27 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MTX_DEF, align 4
  %30 = call i32 @mtx_init(i32* %25, i32 %28, i32* null, i32 %29)
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %32 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %35 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snprintf(i32 %33, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %38, i32 0, i32 11
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %41 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MTX_DEF, align 4
  %44 = call i32 @mtx_init(i32* %39, i32 %42, i32* null, i32 %43)
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %45, i32 0, i32 9
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snprintf(i32 %48, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %54 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %56, i32 0, i32 9
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MTX_DEF, align 4
  %61 = call i32 @mtx_init(i32* %55, i32 %59, i32* null, i32 %60)
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %63 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @snprintf(i32 %64, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %70 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %69, i32 0, i32 8
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %72 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MTX_DEF, align 4
  %75 = call i32 @mtx_init(i32* %70, i32 %73, i32* null, i32 %74)
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %77 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %80 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @snprintf(i32 %78, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %84 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %83, i32 0, i32 6
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %86 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MTX_DEF, align 4
  %89 = call i32 @mtx_init(i32* %84, i32 %87, i32* null, i32 %88)
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %91 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %94 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @snprintf(i32 %92, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %98 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %97, i32 0, i32 4
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %100 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MTX_DEF, align 4
  %103 = call i32 @mtx_init(i32* %98, i32 %101, i32* null, i32 %102)
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %105 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %108 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @snprintf(i32 %106, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %112 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %111, i32 0, i32 2
  %113 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %114 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @MTX_DEF, align 4
  %117 = call i32 @mtx_init(i32* %112, i32 %115, i32* null, i32 %116)
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
