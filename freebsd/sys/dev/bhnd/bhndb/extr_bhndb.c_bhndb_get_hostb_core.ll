; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_get_hostb_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_get_hostb_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_info = type { i32 }
%struct.bhndb_softc = type { %struct.bhnd_core_info }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.bhnd_core_info*)* @bhndb_get_hostb_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_get_hostb_core(i32 %0, i32 %1, %struct.bhnd_core_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_core_info*, align 8
  %7 = alloca %struct.bhndb_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.bhnd_core_info* %2, %struct.bhnd_core_info** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.bhndb_softc* @device_get_softc(i32 %8)
  store %struct.bhndb_softc* %9, %struct.bhndb_softc** %7, align 8
  %10 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %6, align 8
  %11 = load %struct.bhndb_softc*, %struct.bhndb_softc** %7, align 8
  %12 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %11, i32 0, i32 0
  %13 = bitcast %struct.bhnd_core_info* %10 to i8*
  %14 = bitcast %struct.bhnd_core_info* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  ret i32 0
}

declare dso_local %struct.bhndb_softc* @device_get_softc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
