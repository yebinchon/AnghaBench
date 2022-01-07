; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_bhndb.c_siba_bhndb_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_bhndb.c_siba_bhndb_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_bhndb_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @siba_bhndb_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_bhndb_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.siba_bhndb_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.siba_bhndb_softc* @device_get_softc(i32 %6)
  store %struct.siba_bhndb_softc* %7, %struct.siba_bhndb_softc** %4, align 8
  %8 = load %struct.siba_bhndb_softc*, %struct.siba_bhndb_softc** %4, align 8
  %9 = call i32 @siba_bhndb_wars_hwup(%struct.siba_bhndb_softc* %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @siba_resume(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %13, %11
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local %struct.siba_bhndb_softc* @device_get_softc(i32) #1

declare dso_local i32 @siba_bhndb_wars_hwup(%struct.siba_bhndb_softc*) #1

declare dso_local i32 @siba_resume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
