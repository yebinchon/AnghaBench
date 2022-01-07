; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_g_part_ldm_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_g_part_ldm_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.g_part_parms = type { i32 }
%struct.g_part_ldm_table = type { i32, i64 }
%struct.g_provider = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.g_provider* }

@ENOSYS = common dso_local global i32 0, align 4
@ldm_ph_off = common dso_local global i32* null, align 8
@LDM_DB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_parms*)* @g_part_ldm_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_ldm_destroy(%struct.g_part_table* %0, %struct.g_part_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_part_parms*, align 8
  %6 = alloca %struct.g_part_ldm_table*, align 8
  %7 = alloca %struct.g_provider*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_part_parms* %1, %struct.g_part_parms** %5, align 8
  %8 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %9 = bitcast %struct.g_part_table* %8 to %struct.g_part_ldm_table*
  store %struct.g_part_ldm_table* %9, %struct.g_part_ldm_table** %6, align 8
  %10 = load %struct.g_part_ldm_table*, %struct.g_part_ldm_table** %6, align 8
  %11 = getelementptr inbounds %struct.g_part_ldm_table, %struct.g_part_ldm_table* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOSYS, align 4
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %18 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call %struct.TYPE_4__* @LIST_FIRST(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.g_provider*, %struct.g_provider** %22, align 8
  store %struct.g_provider* %23, %struct.g_provider** %7, align 8
  %24 = load i32*, i32** @ldm_ph_off, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %27, 1
  %29 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %30 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.g_part_ldm_table*, %struct.g_part_ldm_table** %6, align 8
  %32 = getelementptr inbounds %struct.g_part_ldm_table, %struct.g_part_ldm_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @LDM_DB_SIZE, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %37 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %40 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %38, %41
  %43 = icmp eq i32 %35, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %16
  %45 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %46 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %16
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_4__* @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
