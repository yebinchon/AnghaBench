; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_mem_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@UPGT_MEMORY_MAX_PAGES = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i64 0, align 8
@UPGT_DEBUG_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"memory address page %d=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"memory pages=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.upgt_softc*)* @upgt_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgt_mem_init(%struct.upgt_softc* %0) #0 {
  %2 = alloca %struct.upgt_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.upgt_softc* %0, %struct.upgt_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %85, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @UPGT_MEMORY_MAX_PAGES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %88

8:                                                ; preds = %4
  %9 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %10 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %8
  %20 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %21 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MCLBYTES, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %26 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 %24, i64* %32, align 8
  br label %54

33:                                               ; preds = %8
  %34 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %35 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MCLBYTES, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %47 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %45, i64* %53, align 8
  br label %54

54:                                               ; preds = %33, %19
  %55 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %56 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MCLBYTES, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %67 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %88

71:                                               ; preds = %54
  %72 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %73 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %76 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (%struct.upgt_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.upgt_softc* %72, i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %74, i64 %83)
  br label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %4

88:                                               ; preds = %70, %4
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %91 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %94 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %95 = load %struct.upgt_softc*, %struct.upgt_softc** %2, align 8
  %96 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.upgt_softc*, i32, i8*, i32, ...) @DPRINTF(%struct.upgt_softc* %93, i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  ret i32 0
}

declare dso_local i32 @DPRINTF(%struct.upgt_softc*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
