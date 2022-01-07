; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_free_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_free_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32 }
%struct.chipc_region = type { i64, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"chipc %s%u.%u region has %u active references\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@M_BHND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chipc_free_region(%struct.chipc_softc* %0, %struct.chipc_region* %1) #0 {
  %3 = alloca %struct.chipc_softc*, align 8
  %4 = alloca %struct.chipc_region*, align 8
  store %struct.chipc_softc* %0, %struct.chipc_softc** %3, align 8
  store %struct.chipc_region* %1, %struct.chipc_region** %4, align 8
  %5 = load %struct.chipc_region*, %struct.chipc_region** %4, align 8
  %6 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = load %struct.chipc_region*, %struct.chipc_region** %4, align 8
  %11 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bhnd_port_type_name(i32 %12)
  %14 = load %struct.chipc_region*, %struct.chipc_region** %4, align 8
  %15 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.chipc_region*, %struct.chipc_region** %4, align 8
  %18 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.chipc_region*, %struct.chipc_region** %4, align 8
  %21 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %9, i8* %23)
  %25 = load %struct.chipc_region*, %struct.chipc_region** %4, align 8
  %26 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = load %struct.chipc_region*, %struct.chipc_region** %4, align 8
  %35 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.chipc_region*, %struct.chipc_region** %4, align 8
  %38 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @bhnd_release_resource(i32 %32, i32 %33, i32 %36, i32* %39)
  br label %41

41:                                               ; preds = %29, %2
  %42 = load %struct.chipc_region*, %struct.chipc_region** %4, align 8
  %43 = load i32, i32* @M_BHND, align 4
  %44 = call i32 @free(%struct.chipc_region* %42, i32 %43)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_port_type_name(i32) #1

declare dso_local i32 @bhnd_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.chipc_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
