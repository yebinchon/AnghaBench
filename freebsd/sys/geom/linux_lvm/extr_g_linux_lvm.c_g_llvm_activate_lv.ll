; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_g_llvm_activate_lv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_g_llvm_activate_lv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_llvm_vg = type { i32, i32, i32, %struct.g_geom* }
%struct.g_geom = type { i32 }
%struct.g_llvm_lv = type { i64, i64, %struct.g_provider*, i64, i32 }
%struct.g_provider = type { i32, i32, %struct.g_llvm_lv*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"segment missing\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"linux_lvm/%s-%s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Created %s, %juM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_llvm_vg*, %struct.g_llvm_lv*)* @g_llvm_activate_lv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_llvm_activate_lv(%struct.g_llvm_vg* %0, %struct.g_llvm_lv* %1) #0 {
  %3 = alloca %struct.g_llvm_vg*, align 8
  %4 = alloca %struct.g_llvm_lv*, align 8
  %5 = alloca %struct.g_geom*, align 8
  %6 = alloca %struct.g_provider*, align 8
  store %struct.g_llvm_vg* %0, %struct.g_llvm_vg** %3, align 8
  store %struct.g_llvm_lv* %1, %struct.g_llvm_lv** %4, align 8
  %7 = call i32 (...) @g_topology_assert()
  %8 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %4, align 8
  %9 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %4, align 8
  %12 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %3, align 8
  %18 = getelementptr inbounds %struct.g_llvm_vg, %struct.g_llvm_vg* %17, i32 0, i32 3
  %19 = load %struct.g_geom*, %struct.g_geom** %18, align 8
  store %struct.g_geom* %19, %struct.g_geom** %5, align 8
  %20 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %21 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %3, align 8
  %22 = getelementptr inbounds %struct.g_llvm_vg, %struct.g_llvm_vg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %4, align 8
  %25 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.g_provider* @g_new_providerf(%struct.g_geom* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26)
  store %struct.g_provider* %27, %struct.g_provider** %6, align 8
  %28 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %3, align 8
  %29 = getelementptr inbounds %struct.g_llvm_vg, %struct.g_llvm_vg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %4, align 8
  %32 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = mul nsw i32 %30, %34
  %36 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %37 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %3, align 8
  %39 = getelementptr inbounds %struct.g_llvm_vg, %struct.g_llvm_vg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %42 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %44 = call i32 @g_error_provider(%struct.g_provider* %43, i32 0)
  %45 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %46 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %4, align 8
  %47 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %46, i32 0, i32 2
  store %struct.g_provider* %45, %struct.g_provider** %47, align 8
  %48 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %4, align 8
  %49 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %50 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %49, i32 0, i32 2
  store %struct.g_llvm_lv* %48, %struct.g_llvm_lv** %50, align 8
  %51 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %52 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %55 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 1048576
  %58 = call i32 @G_LLVM_DEBUG(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %57)
  ret i32 0
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.g_provider* @g_new_providerf(%struct.g_geom*, i8*, i32, i32) #1

declare dso_local i32 @g_error_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @G_LLVM_DEBUG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
