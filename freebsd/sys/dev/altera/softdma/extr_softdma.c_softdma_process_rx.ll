; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_process_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_process_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softdma_channel = type { %struct.softdma_softc* }
%struct.softdma_softc = type { i32* }
%struct.softdma_desc = type { i64, i64 }

@A_ONCHIP_FIFO_MEM_CORE_DATA = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_METADATA = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_ERROR_MASK = common dso_local global i64 0, align 8
@A_ONCHIP_FIFO_MEM_CORE_CHANNEL_MASK = common dso_local global i64 0, align 8
@A_ONCHIP_FIFO_MEM_CORE_SOP = common dso_local global i64 0, align 8
@A_ONCHIP_FIFO_MEM_CORE_EOP = common dso_local global i64 0, align 8
@A_ONCHIP_FIFO_MEM_CORE_EMPTY_MASK = common dso_local global i64 0, align 8
@A_ONCHIP_FIFO_MEM_CORE_EMPTY_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"empty %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.softdma_channel*, %struct.softdma_desc*)* @softdma_process_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softdma_process_rx(%struct.softdma_channel* %0, %struct.softdma_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.softdma_channel*, align 8
  %5 = alloca %struct.softdma_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.softdma_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.softdma_channel* %0, %struct.softdma_channel** %4, align 8
  store %struct.softdma_desc* %1, %struct.softdma_desc** %5, align 8
  %17 = load %struct.softdma_channel*, %struct.softdma_channel** %4, align 8
  %18 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %17, i32 0, i32 0
  %19 = load %struct.softdma_softc*, %struct.softdma_softc** %18, align 8
  store %struct.softdma_softc* %19, %struct.softdma_softc** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.softdma_softc*, %struct.softdma_softc** %8, align 8
  %21 = call i64 @softdma_fill_level(%struct.softdma_softc* %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %151

25:                                               ; preds = %2
  %26 = load %struct.softdma_desc*, %struct.softdma_desc** %5, align 8
  %27 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %143, %25
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %144

32:                                               ; preds = %29
  store i64 0, i64* %10, align 8
  %33 = load %struct.softdma_softc*, %struct.softdma_softc** %8, align 8
  %34 = getelementptr inbounds %struct.softdma_softc, %struct.softdma_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_DATA, align 4
  %39 = call i64 @bus_read_4(i32 %37, i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load %struct.softdma_softc*, %struct.softdma_softc** %8, align 8
  %41 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_METADATA, align 4
  %42 = call i64 @softdma_mem_read(%struct.softdma_softc* %40, i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @A_ONCHIP_FIFO_MEM_CORE_ERROR_MASK, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 1, i32* %16, align 4
  br label %144

48:                                               ; preds = %32
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @A_ONCHIP_FIFO_MEM_CORE_CHANNEL_MASK, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %16, align 4
  br label %144

54:                                               ; preds = %48
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @A_ONCHIP_FIFO_MEM_CORE_SOP, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @A_ONCHIP_FIFO_MEM_CORE_EOP, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @A_ONCHIP_FIFO_MEM_CORE_EMPTY_MASK, align 8
  %68 = and i64 %66, %67
  %69 = load i64, i64* @A_ONCHIP_FIFO_MEM_CORE_EMPTY_SHIFT, align 8
  %70 = ashr i64 %68, %69
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 1, i32* %16, align 4
  br label %144

75:                                               ; preds = %71
  %76 = load i64, i64* %10, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i64, i64* %12, align 8
  %80 = load %struct.softdma_desc*, %struct.softdma_desc** %5, align 8
  %81 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add nsw i64 %82, %83
  %85 = inttoptr i64 %84 to i64*
  store i64 %79, i64* %85, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %86, 4
  store i64 %87, i64* %7, align 8
  br label %118

88:                                               ; preds = %75
  %89 = load i64, i64* %10, align 8
  %90 = icmp eq i64 %89, 1
  br i1 %90, label %91, label %114

91:                                               ; preds = %88
  %92 = load i64, i64* %12, align 8
  %93 = ashr i64 %92, 16
  %94 = and i64 %93, 65535
  %95 = load %struct.softdma_desc*, %struct.softdma_desc** %5, align 8
  %96 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = add nsw i64 %97, %98
  %100 = inttoptr i64 %99 to i64*
  store i64 %94, i64* %100, align 8
  %101 = load i64, i64* %7, align 8
  %102 = add nsw i64 %101, 2
  store i64 %102, i64* %7, align 8
  %103 = load i64, i64* %12, align 8
  %104 = ashr i64 %103, 8
  %105 = and i64 %104, 255
  %106 = load %struct.softdma_desc*, %struct.softdma_desc** %5, align 8
  %107 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add nsw i64 %108, %109
  %111 = inttoptr i64 %110 to i64*
  store i64 %105, i64* %111, align 8
  %112 = load i64, i64* %7, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %7, align 8
  br label %117

114:                                              ; preds = %88
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %114, %91
  br label %118

118:                                              ; preds = %117, %78
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* @A_ONCHIP_FIFO_MEM_CORE_EOP, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %144

124:                                              ; preds = %118
  %125 = load %struct.softdma_softc*, %struct.softdma_softc** %8, align 8
  %126 = call i64 @softdma_fill_level(%struct.softdma_softc* %125)
  store i64 %126, i64* %9, align 8
  store i32 100, i32* %14, align 4
  br label %127

127:                                              ; preds = %136, %124
  %128 = load i64, i64* %9, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %14, align 4
  %133 = icmp ne i32 %131, 0
  br label %134

134:                                              ; preds = %130, %127
  %135 = phi i1 [ false, %127 ], [ %133, %130 ]
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = load %struct.softdma_softc*, %struct.softdma_softc** %8, align 8
  %138 = call i64 @softdma_fill_level(%struct.softdma_softc* %137)
  store i64 %138, i64* %9, align 8
  br label %127

139:                                              ; preds = %134
  %140 = load i32, i32* %14, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 1, i32* %16, align 4
  br label %144

143:                                              ; preds = %139
  br label %29

144:                                              ; preds = %142, %123, %74, %53, %47, %29
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 -1, i32* %3, align 4
  br label %151

148:                                              ; preds = %144
  %149 = load i64, i64* %7, align 8
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %148, %147, %24
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @softdma_fill_level(%struct.softdma_softc*) #1

declare dso_local i64 @bus_read_4(i32, i32) #1

declare dso_local i64 @softdma_mem_read(%struct.softdma_softc*, i32) #1

declare dso_local i32 @panic(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
