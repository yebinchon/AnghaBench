; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_opendir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_opendir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_dirstream = type { i32, i32, %struct.udf_mnt*, %struct.udf_node* }
%struct.udf_node = type { i32 }
%struct.udf_mnt = type { i32 }

@udf_zone_ds = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udf_dirstream* (%struct.udf_node*, i32, i32, %struct.udf_mnt*)* @udf_opendir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udf_dirstream* @udf_opendir(%struct.udf_node* %0, i32 %1, i32 %2, %struct.udf_mnt* %3) #0 {
  %5 = alloca %struct.udf_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.udf_mnt*, align 8
  %9 = alloca %struct.udf_dirstream*, align 8
  store %struct.udf_node* %0, %struct.udf_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.udf_mnt* %3, %struct.udf_mnt** %8, align 8
  %10 = load i32, i32* @udf_zone_ds, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.udf_dirstream* @uma_zalloc(i32 %10, i32 %13)
  store %struct.udf_dirstream* %14, %struct.udf_dirstream** %9, align 8
  %15 = load %struct.udf_node*, %struct.udf_node** %5, align 8
  %16 = load %struct.udf_dirstream*, %struct.udf_dirstream** %9, align 8
  %17 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %16, i32 0, i32 3
  store %struct.udf_node* %15, %struct.udf_node** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.udf_dirstream*, %struct.udf_dirstream** %9, align 8
  %20 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.udf_mnt*, %struct.udf_mnt** %8, align 8
  %22 = load %struct.udf_dirstream*, %struct.udf_dirstream** %9, align 8
  %23 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %22, i32 0, i32 2
  store %struct.udf_mnt* %21, %struct.udf_mnt** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.udf_dirstream*, %struct.udf_dirstream** %9, align 8
  %26 = getelementptr inbounds %struct.udf_dirstream, %struct.udf_dirstream* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.udf_dirstream*, %struct.udf_dirstream** %9, align 8
  ret %struct.udf_dirstream* %27
}

declare dso_local %struct.udf_dirstream* @uma_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
