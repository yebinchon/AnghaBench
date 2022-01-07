; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.termios }
%struct.termios = type { i32, i32, i32 }
%struct.nmdmpart = type { i32, i32, %struct.nmdmpart*, i32, %struct.tty* }

@CDSR_OFLOW = common dso_local global i32 0, align 4
@QS = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@nmdm_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, %struct.termios*)* @nmdm_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmdm_param(%struct.tty* %0, %struct.termios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.termios*, align 8
  %6 = alloca %struct.nmdmpart*, align 8
  %7 = alloca %struct.tty*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.termios* %1, %struct.termios** %5, align 8
  %12 = load %struct.tty*, %struct.tty** %4, align 8
  %13 = call %struct.nmdmpart* @tty_softc(%struct.tty* %12)
  store %struct.nmdmpart* %13, %struct.nmdmpart** %6, align 8
  %14 = load %struct.nmdmpart*, %struct.nmdmpart** %6, align 8
  %15 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %14, i32 0, i32 2
  %16 = load %struct.nmdmpart*, %struct.nmdmpart** %15, align 8
  %17 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %16, i32 0, i32 4
  %18 = load %struct.tty*, %struct.tty** %17, align 8
  store %struct.tty* %18, %struct.tty** %7, align 8
  %19 = load %struct.termios*, %struct.termios** %5, align 8
  %20 = getelementptr inbounds %struct.termios, %struct.termios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tty*, %struct.tty** %7, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.termios, %struct.termios* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %21, %25
  %27 = load i32, i32* @CDSR_OFLOW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load %struct.nmdmpart*, %struct.nmdmpart** %6, align 8
  %32 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.nmdmpart*, %struct.nmdmpart** %6, align 8
  %34 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %33, i32 0, i32 2
  %35 = load %struct.nmdmpart*, %struct.nmdmpart** %34, align 8
  %36 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  store i32 0, i32* %3, align 4
  br label %109

37:                                               ; preds = %2
  %38 = load %struct.termios*, %struct.termios** %5, align 8
  %39 = call i32 @bits_per_char(%struct.termios* %38)
  %40 = load %struct.tty*, %struct.tty** %7, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 0
  %42 = call i32 @bits_per_char(%struct.termios* %41)
  %43 = call i32 @imax(i32 %39, i32 %42)
  store i32 %43, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %105, %37
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %108

47:                                               ; preds = %44
  %48 = load %struct.tty*, %struct.tty** %7, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.termios, %struct.termios* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.termios*, %struct.termios** %5, align 8
  %53 = getelementptr inbounds %struct.termios, %struct.termios* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @imin(i32 %51, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load %struct.nmdmpart*, %struct.nmdmpart** %6, align 8
  %60 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.nmdmpart*, %struct.nmdmpart** %6, align 8
  %62 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %61, i32 0, i32 2
  %63 = load %struct.nmdmpart*, %struct.nmdmpart** %62, align 8
  %64 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  store i32 0, i32* %3, align 4
  br label %109

65:                                               ; preds = %47
  %66 = load i32, i32* @QS, align 4
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sdiv i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* @hz, align 4
  %73 = load i32, i32* @QS, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %10, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %65
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = mul nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* @hz, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sdiv i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.nmdmpart*, %struct.nmdmpart** %6, align 8
  %89 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.nmdmpart*, %struct.nmdmpart** %6, align 8
  %92 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.nmdmpart*, %struct.nmdmpart** %6, align 8
  %94 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %93, i32 0, i32 3
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @nmdm_timeout, align 4
  %97 = load %struct.nmdmpart*, %struct.nmdmpart** %6, align 8
  %98 = call i32 @callout_reset(i32* %94, i32 %95, i32 %96, %struct.nmdmpart* %97)
  %99 = load %struct.nmdmpart*, %struct.nmdmpart** %6, align 8
  %100 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %99, i32 0, i32 2
  %101 = load %struct.nmdmpart*, %struct.nmdmpart** %100, align 8
  store %struct.nmdmpart* %101, %struct.nmdmpart** %6, align 8
  %102 = load %struct.tty*, %struct.tty** %7, align 8
  %103 = getelementptr inbounds %struct.tty, %struct.tty* %102, i32 0, i32 0
  store %struct.termios* %103, %struct.termios** %5, align 8
  %104 = load %struct.tty*, %struct.tty** %4, align 8
  store %struct.tty* %104, %struct.tty** %7, align 8
  br label %105

105:                                              ; preds = %80
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %44

108:                                              ; preds = %44
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %58, %30
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.nmdmpart* @tty_softc(%struct.tty*) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @bits_per_char(%struct.termios*) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.nmdmpart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
