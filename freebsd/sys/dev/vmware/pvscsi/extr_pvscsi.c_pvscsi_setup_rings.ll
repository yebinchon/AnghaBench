; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_setup_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_setup_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i64, i64, i32*, i32*, i32 }
%struct.pvscsi_cmd_desc_setup_rings = type { i64, i64, i32*, i32*, i32 }

@PVSCSI_CMD_SETUP_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_softc*)* @pvscsi_setup_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_setup_rings(%struct.pvscsi_softc* %0) #0 {
  %2 = alloca %struct.pvscsi_softc*, align 8
  %3 = alloca %struct.pvscsi_cmd_desc_setup_rings, align 8
  %4 = alloca i64, align 8
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %2, align 8
  %5 = call i32 @bzero(%struct.pvscsi_cmd_desc_setup_rings* %3, i32 40)
  %6 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.pvscsi_cmd_desc_setup_rings, %struct.pvscsi_cmd_desc_setup_rings* %3, i32 0, i32 4
  store i32 %8, i32* %9, align 8
  %10 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %11 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.pvscsi_cmd_desc_setup_rings, %struct.pvscsi_cmd_desc_setup_rings* %3, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %17 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %22 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.pvscsi_cmd_desc_setup_rings, %struct.pvscsi_cmd_desc_setup_rings* %3, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %20
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %36 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.pvscsi_cmd_desc_setup_rings, %struct.pvscsi_cmd_desc_setup_rings* %3, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  store i64 0, i64* %4, align 8
  br label %39

39:                                               ; preds = %56, %34
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %42 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %47 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.pvscsi_cmd_desc_setup_rings, %struct.pvscsi_cmd_desc_setup_rings* %3, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i64, i64* %4, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %4, align 8
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %61 = load i32, i32* @PVSCSI_CMD_SETUP_RINGS, align 4
  %62 = call i32 @pvscsi_write_cmd(%struct.pvscsi_softc* %60, i32 %61, %struct.pvscsi_cmd_desc_setup_rings* %3, i32 40)
  ret void
}

declare dso_local i32 @bzero(%struct.pvscsi_cmd_desc_setup_rings*, i32) #1

declare dso_local i32 @pvscsi_write_cmd(%struct.pvscsi_softc*, i32, %struct.pvscsi_cmd_desc_setup_rings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
