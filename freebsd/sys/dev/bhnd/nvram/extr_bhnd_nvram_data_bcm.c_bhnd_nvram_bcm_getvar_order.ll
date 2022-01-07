; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcm.c_bhnd_nvram_bcm_getvar_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcm.c_bhnd_nvram_bcm_getvar_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%struct.bhnd_nvram_bcm = type { i32 }
%struct.bhnd_nvram_bcm_hvar = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_data*, i8*, i8*)* @bhnd_nvram_bcm_getvar_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_bcm_getvar_order(%struct.bhnd_nvram_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_nvram_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bhnd_nvram_bcm*, align 8
  %9 = alloca %struct.bhnd_nvram_bcm_hvar*, align 8
  %10 = alloca %struct.bhnd_nvram_bcm_hvar*, align 8
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %5, align 8
  %12 = bitcast %struct.bhnd_nvram_data* %11 to %struct.bhnd_nvram_bcm*
  store %struct.bhnd_nvram_bcm* %12, %struct.bhnd_nvram_bcm** %8, align 8
  %13 = load %struct.bhnd_nvram_bcm*, %struct.bhnd_nvram_bcm** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.bhnd_nvram_bcm_hvar* @bhnd_nvram_bcm_to_hdrvar(%struct.bhnd_nvram_bcm* %13, i8* %14)
  store %struct.bhnd_nvram_bcm_hvar* %15, %struct.bhnd_nvram_bcm_hvar** %9, align 8
  %16 = load %struct.bhnd_nvram_bcm*, %struct.bhnd_nvram_bcm** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call %struct.bhnd_nvram_bcm_hvar* @bhnd_nvram_bcm_to_hdrvar(%struct.bhnd_nvram_bcm* %16, i8* %17)
  store %struct.bhnd_nvram_bcm_hvar* %18, %struct.bhnd_nvram_bcm_hvar** %10, align 8
  %19 = load %struct.bhnd_nvram_bcm_hvar*, %struct.bhnd_nvram_bcm_hvar** %9, align 8
  %20 = icmp ne %struct.bhnd_nvram_bcm_hvar* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.bhnd_nvram_bcm_hvar*, %struct.bhnd_nvram_bcm_hvar** %10, align 8
  %23 = icmp eq %struct.bhnd_nvram_bcm_hvar* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %44

25:                                               ; preds = %21, %3
  %26 = load %struct.bhnd_nvram_bcm_hvar*, %struct.bhnd_nvram_bcm_hvar** %9, align 8
  %27 = icmp eq %struct.bhnd_nvram_bcm_hvar* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.bhnd_nvram_bcm_hvar*, %struct.bhnd_nvram_bcm_hvar** %10, align 8
  %30 = icmp ne %struct.bhnd_nvram_bcm_hvar* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %44

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ugt i8* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %44

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42, %37, %31, %24
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.bhnd_nvram_bcm_hvar* @bhnd_nvram_bcm_to_hdrvar(%struct.bhnd_nvram_bcm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
