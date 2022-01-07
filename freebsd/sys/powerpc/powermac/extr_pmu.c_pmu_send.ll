; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32 }

@vIER = common dso_local global i32 0, align 4
@pm_send_cmd_type = common dso_local global i64* null, align 8
@pm_receive_cmd_type = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*, i32, i32*)* @pmu_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_send(i8* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.pmu_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.pmu_softc*
  store %struct.pmu_softc* %19, %struct.pmu_softc** %13, align 8
  store i32 -1, i32* %15, align 4
  %20 = load %struct.pmu_softc*, %struct.pmu_softc** %13, align 8
  %21 = load i32, i32* @vIER, align 4
  %22 = call i32 @pmu_read_reg(%struct.pmu_softc* %20, i32 %21)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = and i32 %23, 16
  store i32 %24, i32* %17, align 4
  %25 = load %struct.pmu_softc*, %struct.pmu_softc** %13, align 8
  %26 = load i32, i32* @vIER, align 4
  %27 = load i32, i32* %17, align 4
  %28 = call i32 @pmu_write_reg(%struct.pmu_softc* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %30, %6
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.pmu_softc*, %struct.pmu_softc** %13, align 8
  %32 = call i64 @pmu_intr_state(%struct.pmu_softc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %29, label %34

34:                                               ; preds = %30
  %35 = load %struct.pmu_softc*, %struct.pmu_softc** %13, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @pmu_send_byte(%struct.pmu_softc* %35, i32 %36)
  %38 = load i64*, i64** @pm_send_cmd_type, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.pmu_softc*, %struct.pmu_softc** %13, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @pmu_send_byte(%struct.pmu_softc* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %34
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.pmu_softc*, %struct.pmu_softc** %13, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pmu_send_byte(%struct.pmu_softc* %54, i32 %59)
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %49

64:                                               ; preds = %49
  %65 = load i32*, i32** @pm_receive_cmd_type, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %110

73:                                               ; preds = %64
  %74 = load i32, i32* %15, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.pmu_softc*, %struct.pmu_softc** %13, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @pmu_read_byte(%struct.pmu_softc* %77, i32* %78)
  br label %110

80:                                               ; preds = %73
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.pmu_softc*, %struct.pmu_softc** %13, align 8
  %89 = call i32 @pmu_read_byte(%struct.pmu_softc* %88, i32* %16)
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %87, %84
  store i32 1, i32* %14, align 4
  br label %93

93:                                               ; preds = %106, %92
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @min(i32 %95, i32 %96)
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load %struct.pmu_softc*, %struct.pmu_softc** %13, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @pmu_read_byte(%struct.pmu_softc* %100, i32* %104)
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %93

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %76, %72
  %111 = load %struct.pmu_softc*, %struct.pmu_softc** %13, align 8
  %112 = load i32, i32* @vIER, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 0, i32 144
  %117 = call i32 @pmu_write_reg(%struct.pmu_softc* %111, i32 %112, i32 %116)
  %118 = load i32, i32* %15, align 4
  ret i32 %118
}

declare dso_local i32 @pmu_read_reg(%struct.pmu_softc*, i32) #1

declare dso_local i32 @pmu_write_reg(%struct.pmu_softc*, i32, i32) #1

declare dso_local i64 @pmu_intr_state(%struct.pmu_softc*) #1

declare dso_local i32 @pmu_send_byte(%struct.pmu_softc*, i32) #1

declare dso_local i32 @pmu_read_byte(%struct.pmu_softc*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
