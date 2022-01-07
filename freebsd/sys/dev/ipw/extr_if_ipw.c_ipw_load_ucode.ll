; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_load_ucode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_load_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32 }

@IPW_CSR_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timeout waiting for ucode to initialize\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_softc*, i8*, i32)* @ipw_load_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_load_ucode(%struct.ipw_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipw_softc* %0, %struct.ipw_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %10 = call i32 @MEM_WRITE_4(%struct.ipw_softc* %9, i32 3145952, i32 -2147483648)
  %11 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %12 = load i32, i32* @IPW_CSR_RST, align 4
  %13 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %11, i32 %12, i32 0)
  %14 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %15 = call i32 @MEM_WRITE_2(%struct.ipw_softc* %14, i32 2228224, i32 1795)
  %16 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %17 = call i32 @MEM_WRITE_2(%struct.ipw_softc* %16, i32 2228224, i32 1799)
  %18 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %19 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %18, i32 2162708, i32 114)
  %20 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %21 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %20, i32 2162708, i32 114)
  %22 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %23 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %22, i32 2162688, i32 64)
  %24 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %25 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %24, i32 2162688, i32 0)
  %26 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %27 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %26, i32 2162688, i32 64)
  %28 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @MEM_WRITE_MULTI_1(%struct.ipw_softc* %28, i32 2162704, i8* %29, i32 %30)
  %32 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %33 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %32, i32 2162688, i32 0)
  %34 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %35 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %34, i32 2162688, i32 0)
  %36 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %37 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %36, i32 2162688, i32 128)
  %38 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %39 = call i32 @MEM_WRITE_2(%struct.ipw_softc* %38, i32 2228224, i32 1795)
  %40 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %41 = call i32 @MEM_WRITE_2(%struct.ipw_softc* %40, i32 2228224, i32 1799)
  %42 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %43 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %42, i32 2162708, i32 114)
  %44 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %45 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %44, i32 2162708, i32 114)
  %46 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %47 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %46, i32 2162688, i32 0)
  %48 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %49 = call i32 @MEM_WRITE_1(%struct.ipw_softc* %48, i32 2162688, i32 128)
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %61, %3
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 10
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %55 = call i32 @MEM_READ_1(%struct.ipw_softc* %54, i32 2162688)
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %64

59:                                               ; preds = %53
  %60 = call i32 @DELAY(i32 10)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %50

64:                                               ; preds = %58, %50
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %69 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EIO, align 4
  store i32 %72, i32* %4, align 4
  br label %76

73:                                               ; preds = %64
  %74 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %75 = call i32 @MEM_WRITE_4(%struct.ipw_softc* %74, i32 3145952, i32 0)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %67
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @MEM_WRITE_4(%struct.ipw_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ipw_softc*, i32, i32) #1

declare dso_local i32 @MEM_WRITE_2(%struct.ipw_softc*, i32, i32) #1

declare dso_local i32 @MEM_WRITE_1(%struct.ipw_softc*, i32, i32) #1

declare dso_local i32 @MEM_WRITE_MULTI_1(%struct.ipw_softc*, i32, i8*, i32) #1

declare dso_local i32 @MEM_READ_1(%struct.ipw_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
