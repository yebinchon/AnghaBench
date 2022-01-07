; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_wrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_wrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@YDSXG_AC97WRITECMD = common dso_local global i32 0, align 4
@YDSXGR_AC97CMDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @ds_wrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_wrcd(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sc_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.sc_info*
  store %struct.sc_info* %15, %struct.sc_info** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 256
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi i32 [ %26, %22 ], [ 0, %27 ]
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %5, align 4
  br label %55

37:                                               ; preds = %32, %28
  %38 = load i32, i32* @YDSXG_AC97WRITECMD, align 4
  %39 = load i32, i32* %12, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = shl i32 %43, 16
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %49 = load i32, i32* @YDSXGR_AC97CMDDATA, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @ds_wr(%struct.sc_info* %48, i32 %49, i32 %50, i32 4)
  %52 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @ds_cdbusy(%struct.sc_info* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %37, %35
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @ds_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @ds_cdbusy(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
