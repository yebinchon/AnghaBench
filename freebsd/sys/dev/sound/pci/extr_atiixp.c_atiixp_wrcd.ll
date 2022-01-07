; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_wrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_wrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i32 }

@ATI_REG_PHYS_OUT_DATA_SHIFT = common dso_local global i32 0, align 4
@ATI_REG_PHYS_OUT_ADDR_SHIFT = common dso_local global i32 0, align 4
@ATI_REG_PHYS_OUT_ADDR_EN = common dso_local global i32 0, align 4
@ATI_REG_PHYS_OUT_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @atiixp_wrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_wrcd(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.atiixp_info*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.atiixp_info*
  store %struct.atiixp_info* %12, %struct.atiixp_info** %10, align 8
  %13 = load %struct.atiixp_info*, %struct.atiixp_info** %10, align 8
  %14 = call i64 @atiixp_waitready_codec(%struct.atiixp_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %35

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @ATI_REG_PHYS_OUT_DATA_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ATI_REG_PHYS_OUT_ADDR_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load i32, i32* @ATI_REG_PHYS_OUT_ADDR_EN, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.atiixp_info*, %struct.atiixp_info** %10, align 8
  %28 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.atiixp_info*, %struct.atiixp_info** %10, align 8
  %32 = load i32, i32* @ATI_REG_PHYS_OUT_ADDR, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @atiixp_wr(%struct.atiixp_info* %31, i32 %32, i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %17, %16
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @atiixp_waitready_codec(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_wr(%struct.atiixp_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
