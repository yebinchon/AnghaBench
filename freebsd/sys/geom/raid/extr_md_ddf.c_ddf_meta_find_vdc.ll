; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_find_vdc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_find_vdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddf_vdc_record = type { i32, i32 }
%struct.ddf_meta = type { i32 }

@DDF_VDCR_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ddf_vdc_record* (%struct.ddf_meta*, i32*)* @ddf_meta_find_vdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ddf_vdc_record* @ddf_meta_find_vdc(%struct.ddf_meta* %0, i32* %1) #0 {
  %3 = alloca %struct.ddf_vdc_record*, align 8
  %4 = alloca %struct.ddf_meta*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ddf_vdc_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ddf_meta* %0, %struct.ddf_meta** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %10 = call i32 @GETCRNUM(%struct.ddf_meta* %9)
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %57, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %11
  %16 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.ddf_vdc_record* @GETVDCPTR(%struct.ddf_meta* %16, i32 %17)
  store %struct.ddf_vdc_record* %18, %struct.ddf_vdc_record** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %23 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %6, align 8
  %24 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GET32D(%struct.ddf_meta* %22, i32 %25)
  %27 = load i32, i32* @DDF_VDCR_SIGNATURE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %6, align 8
  %31 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @memcmp(i32 %32, i32* %33, i32 24)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %6, align 8
  store %struct.ddf_vdc_record* %37, %struct.ddf_vdc_record** %3, align 8
  br label %61

38:                                               ; preds = %29, %21
  br label %56

39:                                               ; preds = %15
  %40 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %41 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %6, align 8
  %42 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @GET32D(%struct.ddf_meta* %40, i32 %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %48 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %6, align 8
  %49 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @GET32D(%struct.ddf_meta* %47, i32 %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46, %39
  %54 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %6, align 8
  store %struct.ddf_vdc_record* %54, %struct.ddf_vdc_record** %3, align 8
  br label %61

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %11

60:                                               ; preds = %11
  store %struct.ddf_vdc_record* null, %struct.ddf_vdc_record** %3, align 8
  br label %61

61:                                               ; preds = %60, %53, %36
  %62 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %3, align 8
  ret %struct.ddf_vdc_record* %62
}

declare dso_local i32 @GETCRNUM(%struct.ddf_meta*) #1

declare dso_local %struct.ddf_vdc_record* @GETVDCPTR(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GET32D(%struct.ddf_meta*, i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
