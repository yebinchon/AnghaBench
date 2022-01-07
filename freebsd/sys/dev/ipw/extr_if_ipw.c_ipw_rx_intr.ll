; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_rx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32, i32, i32, i32, i32, %struct.ipw_soft_bd*, %struct.ipw_status*, i32, i32 }
%struct.ipw_soft_bd = type { %struct.TYPE_2__*, %struct.ipw_soft_buf* }
%struct.TYPE_2__ = type { i64 }
%struct.ipw_soft_buf = type { i32 }
%struct.ipw_status = type { i32, i32, i32 }

@IPW_FLAG_FW_INITED = common dso_local global i32 0, align 4
@IPW_CSR_RX_READ = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@IPW_NRBD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"notification status, len %u flags 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unexpected status code %u\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@IPW_CSR_RX_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_softc*)* @ipw_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_rx_intr(%struct.ipw_softc* %0) #0 {
  %2 = alloca %struct.ipw_softc*, align 8
  %3 = alloca %struct.ipw_status*, align 8
  %4 = alloca %struct.ipw_soft_bd*, align 8
  %5 = alloca %struct.ipw_soft_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipw_softc* %0, %struct.ipw_softc** %2, align 8
  %8 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IPW_FLAG_FW_INITED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %137

15:                                               ; preds = %1
  %16 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %17 = load i32, i32* @IPW_CSR_RX_READ, align 4
  %18 = call i32 @CSR_READ_4(%struct.ipw_softc* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %26 = call i32 @bus_dmamap_sync(i32 %21, i32 %24, i32 %25)
  %27 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* @IPW_NRBD, align 4
  %32 = srem i32 %30, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %105, %15
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %110

37:                                               ; preds = %33
  %38 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %38, i32 0, i32 6
  %40 = load %struct.ipw_status*, %struct.ipw_status** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ipw_status, %struct.ipw_status* %40, i64 %42
  store %struct.ipw_status* %43, %struct.ipw_status** %3, align 8
  %44 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %44, i32 0, i32 5
  %46 = load %struct.ipw_soft_bd*, %struct.ipw_soft_bd** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ipw_soft_bd, %struct.ipw_soft_bd* %46, i64 %48
  store %struct.ipw_soft_bd* %49, %struct.ipw_soft_bd** %4, align 8
  %50 = load %struct.ipw_soft_bd*, %struct.ipw_soft_bd** %4, align 8
  %51 = getelementptr inbounds %struct.ipw_soft_bd, %struct.ipw_soft_bd* %50, i32 0, i32 1
  %52 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %51, align 8
  store %struct.ipw_soft_buf* %52, %struct.ipw_soft_buf** %5, align 8
  %53 = load %struct.ipw_status*, %struct.ipw_status** %3, align 8
  %54 = getelementptr inbounds %struct.ipw_status, %struct.ipw_status* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16toh(i32 %55)
  %57 = and i32 %56, 15
  switch i32 %57, label %83 [
    i32 132, label %58
    i32 129, label %62
    i32 130, label %66
    i32 131, label %66
    i32 128, label %72
  ]

58:                                               ; preds = %37
  %59 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %60 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %5, align 8
  %61 = call i32 @ipw_rx_cmd_intr(%struct.ipw_softc* %59, %struct.ipw_soft_buf* %60)
  br label %92

62:                                               ; preds = %37
  %63 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %64 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %5, align 8
  %65 = call i32 @ipw_rx_newstate_intr(%struct.ipw_softc* %63, %struct.ipw_soft_buf* %64)
  br label %92

66:                                               ; preds = %37, %37
  %67 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %68 = load %struct.ipw_status*, %struct.ipw_status** %3, align 8
  %69 = load %struct.ipw_soft_bd*, %struct.ipw_soft_bd** %4, align 8
  %70 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %5, align 8
  %71 = call i32 @ipw_rx_data_intr(%struct.ipw_softc* %67, %struct.ipw_status* %68, %struct.ipw_soft_bd* %69, %struct.ipw_soft_buf* %70)
  br label %92

72:                                               ; preds = %37
  %73 = load %struct.ipw_status*, %struct.ipw_status** %3, align 8
  %74 = getelementptr inbounds %struct.ipw_status, %struct.ipw_status* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32toh(i32 %75)
  %77 = load %struct.ipw_status*, %struct.ipw_status** %3, align 8
  %78 = getelementptr inbounds %struct.ipw_status, %struct.ipw_status* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @DPRINTFN(i32 2, i8* %81)
  br label %92

83:                                               ; preds = %37
  %84 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %85 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ipw_status*, %struct.ipw_status** %3, align 8
  %88 = getelementptr inbounds %struct.ipw_status, %struct.ipw_status* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16toh(i32 %89)
  %91 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %83, %72, %66, %62, %58
  %93 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IPW_FLAG_FW_INITED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  br label %137

100:                                              ; preds = %92
  %101 = load %struct.ipw_soft_bd*, %struct.ipw_soft_bd** %4, align 8
  %102 = getelementptr inbounds %struct.ipw_soft_bd, %struct.ipw_soft_bd* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  %108 = load i32, i32* @IPW_NRBD, align 4
  %109 = srem i32 %107, %108
  store i32 %109, i32* %7, align 4
  br label %33

110:                                              ; preds = %33
  %111 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %112 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %115 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %118 = call i32 @bus_dmamap_sync(i32 %113, i32 %116, i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %110
  %122 = load i32, i32* @IPW_NRBD, align 4
  %123 = sub nsw i32 %122, 1
  br label %127

124:                                              ; preds = %110
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 1
  br label %127

127:                                              ; preds = %124, %121
  %128 = phi i32 [ %123, %121 ], [ %126, %124 ]
  %129 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %130 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %132 = load i32, i32* @IPW_CSR_RX_WRITE, align 4
  %133 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %134 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %131, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %127, %99, %14
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.ipw_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @ipw_rx_cmd_intr(%struct.ipw_softc*, %struct.ipw_soft_buf*) #1

declare dso_local i32 @ipw_rx_newstate_intr(%struct.ipw_softc*, %struct.ipw_soft_buf*) #1

declare dso_local i32 @ipw_rx_data_intr(%struct.ipw_softc*, %struct.ipw_status*, %struct.ipw_soft_bd*, %struct.ipw_soft_buf*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ipw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
