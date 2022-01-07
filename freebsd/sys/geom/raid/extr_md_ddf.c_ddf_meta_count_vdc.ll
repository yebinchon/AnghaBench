; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_count_vdc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_count_vdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddf_meta = type { i32 }
%struct.ddf_vdc_record = type { i32, i32 }

@DDF_VDCR_SIGNATURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddf_meta*, i32*)* @ddf_meta_count_vdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddf_meta_count_vdc(%struct.ddf_meta* %0, i32* %1) #0 {
  %3 = alloca %struct.ddf_meta*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ddf_vdc_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ddf_meta* %0, %struct.ddf_meta** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %10 = call i32 @GETCRNUM(%struct.ddf_meta* %9)
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.ddf_vdc_record* @GETVDCPTR(%struct.ddf_meta* %16, i32 %17)
  store %struct.ddf_vdc_record* %18, %struct.ddf_vdc_record** %5, align 8
  %19 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %20 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %5, align 8
  %21 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @GET32D(%struct.ddf_meta* %19, i32 %22)
  %24 = load i64, i64* @DDF_VDCR_SIGNATURE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %41

27:                                               ; preds = %15
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %5, align 8
  %32 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @memcmp(i32 %33, i32* %34, i32 24)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %11

44:                                               ; preds = %11
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @GETCRNUM(%struct.ddf_meta*) #1

declare dso_local %struct.ddf_vdc_record* @GETVDCPTR(%struct.ddf_meta*, i32) #1

declare dso_local i64 @GET32D(%struct.ddf_meta*, i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
