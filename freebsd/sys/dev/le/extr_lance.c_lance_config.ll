; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.lance_softc* }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@lance_start = common dso_local global i32 0, align 4
@lance_ioctl = common dso_local global i32 0, align 4
@lance_init = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@lance_mediachange = common dso_local global i32 0, align 4
@lance_mediastatus = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_MANUAL = common dso_local global i32 0, align 4
@LEBLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%d receive buffers, %d transmit buffers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lance_config(%struct.lance_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lance_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lance_softc* %0, %struct.lance_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %12 = call i64 @LE_LOCK_INITIALIZED(%struct.lance_softc* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %4, align 4
  br label %184

16:                                               ; preds = %3
  %17 = load i32, i32* @IFT_ETHER, align 4
  %18 = call %struct.ifnet* @if_alloc(i32 %17)
  %19 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %20 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %19, i32 0, i32 9
  store %struct.ifnet* %18, %struct.ifnet** %20, align 8
  store %struct.ifnet* %18, %struct.ifnet** %8, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %22 = icmp eq %struct.ifnet* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOSPC, align 4
  store i32 %24, i32* %4, align 4
  br label %184

25:                                               ; preds = %16
  %26 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %27 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %26, i32 0, i32 8
  %28 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %29 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %28, i32 0, i32 7
  %30 = call i32 @callout_init_mtx(i32* %27, i32* %29, i32 0)
  %31 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %32 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 6
  store %struct.lance_softc* %31, %struct.lance_softc** %33, align 8
  %34 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @if_initname(%struct.ifnet* %34, i8* %35, i32 %36)
  %38 = load i32, i32* @lance_start, align 4
  %39 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @lance_ioctl, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @lance_init, align 4
  %45 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @IFF_BROADCAST, align 4
  %48 = load i32, i32* @IFF_SIMPLEX, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @IFF_MULTICAST, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = call i32 @IF_Mbps(i32 10)
  %55 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 1
  %59 = load i32, i32* @ifqmaxlen, align 4
  %60 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %58, i32 %59)
  %61 = load i32, i32* @ifqmaxlen, align 4
  %62 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 1
  %67 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %66)
  %68 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %69 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %68, i32 0, i32 4
  %70 = load i32, i32* @lance_mediachange, align 4
  %71 = load i32, i32* @lance_mediastatus, align 4
  %72 = call i32 @ifmedia_init(i32* %69, i32 0, i32 %70, i32 %71)
  %73 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %74 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %105

77:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %95, %77
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %81 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %86 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %85, i32 0, i32 4
  %87 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %88 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ifmedia_add(i32* %86, i32 %93, i32 0, i32* null)
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %78

98:                                               ; preds = %78
  %99 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %100 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %99, i32 0, i32 4
  %101 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %102 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ifmedia_set(i32* %100, i32 %103)
  br label %118

105:                                              ; preds = %25
  %106 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %107 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %106, i32 0, i32 4
  %108 = load i32, i32* @IFM_ETHER, align 4
  %109 = load i32, i32* @IFM_MANUAL, align 4
  %110 = call i32 @IFM_MAKEWORD(i32 %108, i32 %109, i32 0, i32 0)
  %111 = call i32 @ifmedia_add(i32* %107, i32 %110, i32 0, i32* null)
  %112 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %113 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %112, i32 0, i32 4
  %114 = load i32, i32* @IFM_ETHER, align 4
  %115 = load i32, i32* @IFM_MANUAL, align 4
  %116 = call i32 @IFM_MAKEWORD(i32 %114, i32 %115, i32 0, i32 0)
  %117 = call i32 @ifmedia_set(i32* %113, i32 %116)
  br label %118

118:                                              ; preds = %105, %98
  %119 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %120 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %152 [
    i32 8192, label %122
    i32 16384, label %127
    i32 32768, label %132
    i32 65536, label %137
    i32 131072, label %142
    i32 262144, label %147
  ]

122:                                              ; preds = %118
  %123 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %124 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %123, i32 0, i32 2
  store i32 4, i32* %124, align 8
  %125 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %126 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %125, i32 0, i32 3
  store i32 1, i32* %126, align 4
  br label %169

127:                                              ; preds = %118
  %128 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %129 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %128, i32 0, i32 2
  store i32 8, i32* %129, align 8
  %130 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %131 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %130, i32 0, i32 3
  store i32 2, i32* %131, align 4
  br label %169

132:                                              ; preds = %118
  %133 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %134 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %133, i32 0, i32 2
  store i32 16, i32* %134, align 8
  %135 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %136 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %135, i32 0, i32 3
  store i32 4, i32* %136, align 4
  br label %169

137:                                              ; preds = %118
  %138 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %139 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %138, i32 0, i32 2
  store i32 32, i32* %139, align 8
  %140 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %141 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %140, i32 0, i32 3
  store i32 8, i32* %141, align 4
  br label %169

142:                                              ; preds = %118
  %143 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %144 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %143, i32 0, i32 2
  store i32 64, i32* %144, align 8
  %145 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %146 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %145, i32 0, i32 3
  store i32 16, i32* %146, align 4
  br label %169

147:                                              ; preds = %118
  %148 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %149 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %148, i32 0, i32 2
  store i32 128, i32* %149, align 8
  %150 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %151 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %150, i32 0, i32 3
  store i32 32, i32* %151, align 4
  br label %169

152:                                              ; preds = %118
  %153 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %154 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @LEBLEN, align 4
  %157 = sdiv i32 %155, %156
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sdiv i32 %158, 5
  %160 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %161 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %164 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %162, %165
  %167 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %168 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %152, %147, %142, %137, %132, %127, %122
  %170 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %171 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %172 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %175 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @if_printf(%struct.ifnet* %170, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %173, i32 %176)
  %178 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %179 = call i32 @LE_LOCK(%struct.lance_softc* %178)
  %180 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %181 = call i32 @lance_stop(%struct.lance_softc* %180)
  %182 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %183 = call i32 @LE_UNLOCK(%struct.lance_softc* %182)
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %169, %23, %14
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i64 @LE_LOCK_INITIALIZED(%struct.lance_softc*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @IF_Mbps(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @IFM_MAKEWORD(i32, i32, i32, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32, i32) #1

declare dso_local i32 @LE_LOCK(%struct.lance_softc*) #1

declare dso_local i32 @lance_stop(%struct.lance_softc*) #1

declare dso_local i32 @LE_UNLOCK(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
