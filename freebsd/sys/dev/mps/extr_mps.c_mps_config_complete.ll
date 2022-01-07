; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_config_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_config_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32 }
%struct.mps_command = type { i32, i64, i32, i32*, %struct.mps_config_params* }
%struct.mps_config_params = type { i32 (%struct.mps_softc*, %struct.mps_config_params*)*, %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, i8* }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MPS_CM_FLAGS_ERROR_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_BUSY = common dso_local global i8* null, align 8
@MPI2_CONFIG_PAGETYPE_EXTENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mps_softc*, %struct.mps_command*)* @mps_config_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_config_complete(%struct.mps_softc* %0, %struct.mps_command* %1) #0 {
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca %struct.mps_command*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.mps_config_params*, align 8
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  store %struct.mps_command* %1, %struct.mps_command** %4, align 8
  %7 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %8 = call i32 @MPS_FUNCTRACE(%struct.mps_softc* %7)
  %9 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %10 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %9, i32 0, i32 4
  %11 = load %struct.mps_config_params*, %struct.mps_config_params** %10, align 8
  store %struct.mps_config_params* %11, %struct.mps_config_params** %6, align 8
  %12 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %13 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %21 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %24 = call i32 @bus_dmamap_sync(i32 %19, i32 %22, i32 %23)
  %25 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %29 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bus_dmamap_unload(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %16, %2
  %33 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %34 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MPS_CM_FLAGS_ERROR_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i8*, i8** @MPI2_IOCSTATUS_BUSY, align 8
  %41 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %42 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %140

43:                                               ; preds = %32
  %44 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %45 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %5, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = icmp eq %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i8*, i8** @MPI2_IOCSTATUS_BUSY, align 8
  %52 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %53 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %140

54:                                               ; preds = %43
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %59 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %61 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MPI2_CONFIG_PAGETYPE_EXTENDED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %106

67:                                               ; preds = %54
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %72 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  store i32 %70, i32* %74, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %79 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store i32 %77, i32* %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %87 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i64 %85, i64* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %95 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %93, i32* %97, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %103 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 8
  br label %139

106:                                              ; preds = %54
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %112 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i64 %110, i64* %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %120 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  store i32 %118, i32* %122, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %128 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  store i32 %126, i32* %130, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %136 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 8
  br label %139

139:                                              ; preds = %106, %67
  br label %140

140:                                              ; preds = %139, %50, %39
  %141 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %142 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %143 = call i32 @mps_free_command(%struct.mps_softc* %141, %struct.mps_command* %142)
  %144 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %145 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %144, i32 0, i32 0
  %146 = load i32 (%struct.mps_softc*, %struct.mps_config_params*)*, i32 (%struct.mps_softc*, %struct.mps_config_params*)** %145, align 8
  %147 = icmp ne i32 (%struct.mps_softc*, %struct.mps_config_params*)* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %140
  %149 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %150 = getelementptr inbounds %struct.mps_config_params, %struct.mps_config_params* %149, i32 0, i32 0
  %151 = load i32 (%struct.mps_softc*, %struct.mps_config_params*)*, i32 (%struct.mps_softc*, %struct.mps_config_params*)** %150, align 8
  %152 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %153 = load %struct.mps_config_params*, %struct.mps_config_params** %6, align 8
  %154 = call i32 %151(%struct.mps_softc* %152, %struct.mps_config_params* %153)
  br label %155

155:                                              ; preds = %148, %140
  ret void
}

declare dso_local i32 @MPS_FUNCTRACE(%struct.mps_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @mps_free_command(%struct.mps_softc*, %struct.mps_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
