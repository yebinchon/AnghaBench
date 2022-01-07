; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.port_info* }
%struct.port_info = type { i32, i32, %struct.cmac, %struct.adapter* }
%struct.cmac = type { %struct.mac_stats }
%struct.mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.adapter = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@FULL_INIT_DONE = common dso_local global i32 0, align 4
@TXQ_ETH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ifnet*, i32)* @cxgb_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cxgb_get_counter(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cmac*, align 8
  %9 = alloca %struct.mac_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load %struct.port_info*, %struct.port_info** %13, align 8
  store %struct.port_info* %14, %struct.port_info** %6, align 8
  %15 = load %struct.port_info*, %struct.port_info** %6, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %15, i32 0, i32 3
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %7, align 8
  %18 = load %struct.port_info*, %struct.port_info** %6, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 2
  store %struct.cmac* %19, %struct.cmac** %8, align 8
  %20 = load %struct.cmac*, %struct.cmac** %8, align 8
  %21 = getelementptr inbounds %struct.cmac, %struct.cmac* %20, i32 0, i32 0
  store %struct.mac_stats* %21, %struct.mac_stats** %9, align 8
  %22 = load %struct.port_info*, %struct.port_info** %6, align 8
  %23 = call i32 @cxgb_refresh_stats(%struct.port_info* %22)
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %158 [
    i32 134, label %25
    i32 136, label %29
    i32 129, label %61
    i32 131, label %65
    i32 138, label %89
    i32 137, label %93
    i32 132, label %97
    i32 135, label %101
    i32 130, label %105
    i32 133, label %109
    i32 128, label %113
  ]

25:                                               ; preds = %2
  %26 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %27 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %26, i32 0, i32 21
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %3, align 8
  br label %162

29:                                               ; preds = %2
  %30 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %31 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %30, i32 0, i32 20
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %34 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %33, i32 0, i32 19
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %38 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %37, i32 0, i32 18
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %42 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %41, i32 0, i32 17
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %46 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %45, i32 0, i32 16
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %50 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %49, i32 0, i32 15
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %54 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %53, i32 0, i32 14
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %58 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %57, i32 0, i32 13
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  store i64 %60, i64* %3, align 8
  br label %162

61:                                               ; preds = %2
  %62 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %63 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %62, i32 0, i32 12
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %3, align 8
  br label %162

65:                                               ; preds = %2
  %66 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %67 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %66, i32 0, i32 11
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %70 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %69, i32 0, i32 10
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %74 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %78 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %82 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %86 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  store i64 %88, i64* %3, align 8
  br label %162

89:                                               ; preds = %2
  %90 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %91 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %3, align 8
  br label %162

93:                                               ; preds = %2
  %94 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %95 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %3, align 8
  br label %162

97:                                               ; preds = %2
  %98 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %99 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %3, align 8
  br label %162

101:                                              ; preds = %2
  %102 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %103 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %3, align 8
  br label %162

105:                                              ; preds = %2
  %106 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %107 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %3, align 8
  br label %162

109:                                              ; preds = %2
  %110 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %111 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %3, align 8
  br label %162

113:                                              ; preds = %2
  store i64 0, i64* %11, align 8
  %114 = load %struct.adapter*, %struct.adapter** %7, align 8
  %115 = getelementptr inbounds %struct.adapter, %struct.adapter* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @FULL_INIT_DONE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %156

120:                                              ; preds = %113
  %121 = load %struct.port_info*, %struct.port_info** %6, align 8
  %122 = getelementptr inbounds %struct.port_info, %struct.port_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %152, %120
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.port_info*, %struct.port_info** %6, align 8
  %127 = getelementptr inbounds %struct.port_info, %struct.port_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.port_info*, %struct.port_info** %6, align 8
  %130 = getelementptr inbounds %struct.port_info, %struct.port_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %128, %131
  %133 = icmp slt i32 %125, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %124
  %135 = load %struct.adapter*, %struct.adapter** %7, align 8
  %136 = getelementptr inbounds %struct.adapter, %struct.adapter* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i64, i64* @TXQ_ETH, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %11, align 8
  %151 = add nsw i64 %150, %149
  store i64 %151, i64* %11, align 8
  br label %152

152:                                              ; preds = %134
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %124

155:                                              ; preds = %124
  br label %156

156:                                              ; preds = %155, %113
  %157 = load i64, i64* %11, align 8
  store i64 %157, i64* %3, align 8
  br label %162

158:                                              ; preds = %2
  %159 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i64 @if_get_counter_default(%struct.ifnet* %159, i32 %160)
  store i64 %161, i64* %3, align 8
  br label %162

162:                                              ; preds = %158, %156, %109, %105, %101, %97, %93, %89, %65, %61, %29, %25
  %163 = load i64, i64* %3, align 8
  ret i64 %163
}

declare dso_local i32 @cxgb_refresh_stats(%struct.port_info*) #1

declare dso_local i64 @if_get_counter_default(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
