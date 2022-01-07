; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_dump_up_cim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_dump_up_cim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.cudbg_init = type { i32 (i8*)*, i64 }
%struct.ireg_field = type { i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"BUSY timeout readingCIM_HOST_ACC_CTRL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.cudbg_init*, %struct.ireg_field*, i32*)* @dump_up_cim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_up_cim(%struct.adapter* %0, %struct.cudbg_init* %1, %struct.ireg_field* %2, i32* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.cudbg_init*, align 8
  %7 = alloca %struct.ireg_field*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.cudbg_init* %1, %struct.cudbg_init** %6, align 8
  store %struct.ireg_field* %2, %struct.ireg_field** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %44, %4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.ireg_field*, %struct.ireg_field** %7, align 8
  %14 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %11
  %18 = load %struct.adapter*, %struct.adapter** %5, align 8
  %19 = load %struct.ireg_field*, %struct.ireg_field** %7, align 8
  %20 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @cim_ha_rreg(%struct.adapter* %18, i64 %25, i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %17
  %31 = load %struct.cudbg_init*, %struct.cudbg_init** %6, align 8
  %32 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.cudbg_init*, %struct.cudbg_init** %6, align 8
  %37 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %36, i32 0, i32 0
  %38 = load i32 (i8*)*, i32 (i8*)** %37, align 8
  %39 = call i32 %38(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %30
  br label %48

41:                                               ; preds = %17
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %8, align 8
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %11

47:                                               ; preds = %11
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local i32 @cim_ha_rreg(%struct.adapter*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
