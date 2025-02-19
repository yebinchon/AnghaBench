; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"AMD NTB Side: %s\0A\00", align 1
@NTB_CONN_PRI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"PRIMARY\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SECONDARY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_ntb_softc*)* @amd_ntb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_init(%struct.amd_ntb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_ntb_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.amd_ntb_softc* %0, %struct.amd_ntb_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %6 = call i64 @amd_ntb_get_topo(%struct.amd_ntb_softc* %5)
  %7 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %8 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %10 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NTB_CONN_PRI, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @amd_ntb_printf(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %18 = call i32 @amd_ntb_init_dev(%struct.amd_ntb_softc* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %25 = call i32 @amd_ntb_init_isr(%struct.amd_ntb_softc* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @amd_ntb_get_topo(%struct.amd_ntb_softc*) #1

declare dso_local i32 @amd_ntb_printf(i32, i8*, i8*) #1

declare dso_local i32 @amd_ntb_init_dev(%struct.amd_ntb_softc*) #1

declare dso_local i32 @amd_ntb_init_isr(%struct.amd_ntb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
