; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init.h_ecore_enable_blocks_parity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init.h_ecore_enable_blocks_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.bxe_softc = type { i32 }

@ecore_blocks_parity_data = common dso_local global %struct.TYPE_3__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @ecore_enable_blocks_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_enable_blocks_parity(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ecore_blocks_parity_data, align 8
  %8 = call i32 @ARRSIZE(%struct.TYPE_3__* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ecore_parity_reg_mask(%struct.bxe_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ecore_blocks_parity_data, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ecore_blocks_parity_data, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @REG_WR(%struct.bxe_softc* %17, i32 %23, i32 %31)
  br label %33

33:                                               ; preds = %16, %10
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %5

37:                                               ; preds = %5
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @ecore_set_mcp_parity(%struct.bxe_softc* %38, i32 %39)
  ret void
}

declare dso_local i32 @ARRSIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @ecore_parity_reg_mask(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @ecore_set_mcp_parity(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
