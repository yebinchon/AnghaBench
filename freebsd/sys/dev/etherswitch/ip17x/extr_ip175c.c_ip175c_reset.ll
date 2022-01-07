; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175c.c_ip175c_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175c.c_ip175c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17x_softc = type { i32 }

@IP175C_RESET_PHY = common dso_local global i32 0, align 4
@IP175C_RESET_REG = common dso_local global i32 0, align 4
@IP175C_MODE_PHY = common dso_local global i32 0, align 4
@IP175C_MODE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17x_softc*)* @ip175c_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175c_reset(%struct.ip17x_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip17x_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ip17x_softc* %0, %struct.ip17x_softc** %3, align 8
  %5 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IP175C_RESET_PHY, align 4
  %9 = load i32, i32* @IP175C_RESET_REG, align 4
  %10 = call i64 @ip17x_writephy(i32 %7, i32 %8, i32 %9, i32 5980)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = call i32 @DELAY(i32 2000)
  %15 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IP175C_MODE_PHY, align 4
  %19 = load i32, i32* @IP175C_MODE_REG, align 4
  %20 = call i32 @ip17x_readphy(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 5978
  br i1 %22, label %23, label %33

23:                                               ; preds = %13
  %24 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IP175C_MODE_PHY, align 4
  %28 = load i32, i32* @IP175C_MODE_REG, align 4
  %29 = call i64 @ip17x_writephy(i32 %26, i32 %27, i32 %28, i32 5980)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %34

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %13
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %31, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @ip17x_writephy(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ip17x_readphy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
