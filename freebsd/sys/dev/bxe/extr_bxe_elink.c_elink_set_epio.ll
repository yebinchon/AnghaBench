; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_epio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_epio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid EPIO pin %d to set\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Setting EPIO pin %d to %d\0A\00", align 1
@MCP_REG_MCPR_GP_OUTPUTS = common dso_local global i32 0, align 4
@MCP_REG_MCPR_GP_OENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32)* @elink_set_epio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_set_epio(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 31
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %51

16:                                               ; preds = %3
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %24 = load i32, i32* @MCP_REG_MCPR_GP_OUTPUTS, align 4
  %25 = call i32 @REG_RD(%struct.bxe_softc* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %37

32:                                               ; preds = %16
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %39 = load i32, i32* @MCP_REG_MCPR_GP_OUTPUTS, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @REG_WR(%struct.bxe_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %43 = load i32, i32* @MCP_REG_MCPR_GP_OENABLE, align 4
  %44 = call i32 @REG_RD(%struct.bxe_softc* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %46 = load i32, i32* @MCP_REG_MCPR_GP_OENABLE, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @REG_WR(%struct.bxe_softc* %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %37, %12
  ret void
}

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
