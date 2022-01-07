; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i64, %struct.ixl_vsi }
%struct.ixl_vsi = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"ixl_if_stop: begin\0A\00", align 1
@ixl_enable_iwarp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_if_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ixl_pf* @iflib_get_softc(i32 %5)
  store %struct.ixl_pf* %6, %struct.ixl_pf** %3, align 8
  %7 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %8 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %7, i32 0, i32 2
  store %struct.ixl_vsi* %8, %struct.ixl_vsi** %4, align 8
  %9 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %11 = call i32 @ixl_disable_rings_intr(%struct.ixl_vsi* %10)
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %13 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %15 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %14, i32 0, i32 0
  %16 = call i32 @ixl_disable_rings(%struct.ixl_pf* %12, %struct.ixl_vsi* %13, i32* %15)
  ret void
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @ixl_disable_rings_intr(%struct.ixl_vsi*) #1

declare dso_local i32 @ixl_disable_rings(%struct.ixl_pf*, %struct.ixl_vsi*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
