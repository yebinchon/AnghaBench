; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcm.c_bhnd_nvram_bcm_to_hdrvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcm.c_bhnd_nvram_bcm_to_hdrvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_bcm_hvar = type { i32 }
%struct.bhnd_nvram_bcm = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bhnd_nvram_bcm_hvar* (%struct.bhnd_nvram_bcm*, i8*)* @bhnd_nvram_bcm_to_hdrvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bhnd_nvram_bcm_hvar* @bhnd_nvram_bcm_to_hdrvar(%struct.bhnd_nvram_bcm* %0, i8* %1) #0 {
  %3 = alloca %struct.bhnd_nvram_bcm_hvar*, align 8
  %4 = alloca %struct.bhnd_nvram_bcm*, align 8
  %5 = alloca i8*, align 8
  store %struct.bhnd_nvram_bcm* %0, %struct.bhnd_nvram_bcm** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.bhnd_nvram_bcm*, %struct.bhnd_nvram_bcm** %4, align 8
  %7 = getelementptr inbounds %struct.bhnd_nvram_bcm, %struct.bhnd_nvram_bcm* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @nitems(i32* %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.bhnd_nvram_bcm_hvar* null, %struct.bhnd_nvram_bcm_hvar** %3, align 8
  br label %39

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.bhnd_nvram_bcm*, %struct.bhnd_nvram_bcm** %4, align 8
  %15 = getelementptr inbounds %struct.bhnd_nvram_bcm, %struct.bhnd_nvram_bcm* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = bitcast i32* %17 to i8*
  %19 = icmp ult i8* %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store %struct.bhnd_nvram_bcm_hvar* null, %struct.bhnd_nvram_bcm_hvar** %3, align 8
  br label %39

21:                                               ; preds = %12
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.bhnd_nvram_bcm*, %struct.bhnd_nvram_bcm** %4, align 8
  %24 = getelementptr inbounds %struct.bhnd_nvram_bcm, %struct.bhnd_nvram_bcm* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.bhnd_nvram_bcm*, %struct.bhnd_nvram_bcm** %4, align 8
  %27 = getelementptr inbounds %struct.bhnd_nvram_bcm, %struct.bhnd_nvram_bcm* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @nitems(i32* %28)
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = bitcast i32* %32 to i8*
  %34 = icmp ugt i8* %22, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store %struct.bhnd_nvram_bcm_hvar* null, %struct.bhnd_nvram_bcm_hvar** %3, align 8
  br label %39

36:                                               ; preds = %21
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to %struct.bhnd_nvram_bcm_hvar*
  store %struct.bhnd_nvram_bcm_hvar* %38, %struct.bhnd_nvram_bcm_hvar** %3, align 8
  br label %39

39:                                               ; preds = %36, %35, %20, %11
  %40 = load %struct.bhnd_nvram_bcm_hvar*, %struct.bhnd_nvram_bcm_hvar** %3, align 8
  ret %struct.bhnd_nvram_bcm_hvar* %40
}

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
