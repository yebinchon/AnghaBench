; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir_pci.c_gdt_mpr_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir_pci.c_gdt_mpr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i8* }
%struct.gdt_intr_ctx = type { i32, i64, i8*, i8*, i8* }

@GDT_D_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"gdt_mpr_intr(%p) \00", align 1
@GDT_MPR_EDOOR = common dso_local global i32 0, align 4
@GDT_MPR_STATUS = common dso_local global i32 0, align 4
@GDT_S_OK = common dso_local global i8* null, align 8
@GDT_MPR_INFO = common dso_local global i64 0, align 8
@GDT_MPR_SERVICE = common dso_local global i32 0, align 4
@GDT_ASYNCINDEX = common dso_local global i32 0, align 4
@GDT_SCREENSERVICE = common dso_local global i64 0, align 8
@GDT_SEVERITY = common dso_local global i64 0, align 8
@GDT_EVT_BUF = common dso_local global i64 0, align 8
@GDT_MPR_SEMA1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdt_mpr_intr(%struct.gdt_softc* %0, %struct.gdt_intr_ctx* %1) #0 {
  %3 = alloca %struct.gdt_softc*, align 8
  %4 = alloca %struct.gdt_intr_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.gdt_softc* %0, %struct.gdt_softc** %3, align 8
  store %struct.gdt_intr_ctx* %1, %struct.gdt_intr_ctx** %4, align 8
  %6 = load i32, i32* @GDT_D_INTR, align 4
  %7 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %8 = bitcast %struct.gdt_softc* %7 to i8*
  %9 = call i32 @GDT_DPRINTF(i32 %6, i8* %8)
  %10 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %11 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GDT_MPR_EDOOR, align 4
  %14 = call i32 @bus_write_1(i32 %12, i32 %13, i32 255)
  %15 = load %struct.gdt_intr_ctx*, %struct.gdt_intr_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.gdt_intr_ctx, %struct.gdt_intr_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 128
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.gdt_intr_ctx*, %struct.gdt_intr_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.gdt_intr_ctx, %struct.gdt_intr_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, -129
  store i32 %24, i32* %22, align 8
  %25 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %26 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GDT_MPR_STATUS, align 4
  %29 = call i8* @bus_read_2(i32 %27, i32 %28)
  %30 = load %struct.gdt_intr_ctx*, %struct.gdt_intr_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.gdt_intr_ctx, %struct.gdt_intr_ctx* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  br label %36

32:                                               ; preds = %2
  %33 = load i8*, i8** @GDT_S_OK, align 8
  %34 = load %struct.gdt_intr_ctx*, %struct.gdt_intr_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.gdt_intr_ctx, %struct.gdt_intr_ctx* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %32, %20
  %37 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %38 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @GDT_MPR_INFO, align 8
  %41 = call i8* @bus_read_4(i32 %39, i64 %40)
  %42 = load %struct.gdt_intr_ctx*, %struct.gdt_intr_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.gdt_intr_ctx, %struct.gdt_intr_ctx* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %45 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GDT_MPR_SERVICE, align 4
  %48 = call i8* @bus_read_2(i32 %46, i32 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.gdt_intr_ctx*, %struct.gdt_intr_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.gdt_intr_ctx, %struct.gdt_intr_ctx* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %53 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @GDT_MPR_INFO, align 8
  %56 = add i64 %55, 4
  %57 = call i8* @bus_read_4(i32 %54, i64 %56)
  %58 = load %struct.gdt_intr_ctx*, %struct.gdt_intr_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.gdt_intr_ctx, %struct.gdt_intr_ctx* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.gdt_intr_ctx*, %struct.gdt_intr_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.gdt_intr_ctx, %struct.gdt_intr_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @GDT_ASYNCINDEX, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %122

65:                                               ; preds = %36
  %66 = load %struct.gdt_intr_ctx*, %struct.gdt_intr_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.gdt_intr_ctx, %struct.gdt_intr_ctx* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @GDT_SCREENSERVICE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %121

71:                                               ; preds = %65
  %72 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %73 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, 255
  %76 = icmp sge i32 %75, 26
  br i1 %76, label %77, label %121

77:                                               ; preds = %71
  %78 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %79 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* @GDT_SEVERITY, align 8
  %82 = call i8* @bus_read_1(i32 %80, i64 %81)
  %83 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %84 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %117, %77
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 256
  br i1 %88, label %89, label %120

89:                                               ; preds = %86
  %90 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %91 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @GDT_EVT_BUF, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = call i8* @bus_read_1(i32 %92, i64 %96)
  %98 = ptrtoint i8* %97 to i64
  %99 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %100 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %98, i64* %105, align 8
  %106 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %107 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %89
  br label %120

116:                                              ; preds = %89
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %86

120:                                              ; preds = %115, %86
  br label %121

121:                                              ; preds = %120, %71, %65
  br label %122

122:                                              ; preds = %121, %36
  %123 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %124 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @GDT_MPR_SEMA1, align 4
  %127 = call i32 @bus_write_1(i32 %125, i32 %126, i32 0)
  ret void
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i8* @bus_read_2(i32, i32) #1

declare dso_local i8* @bus_read_4(i32, i64) #1

declare dso_local i8* @bus_read_1(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
