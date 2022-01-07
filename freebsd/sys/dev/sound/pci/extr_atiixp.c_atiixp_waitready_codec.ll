; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_waitready_codec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_waitready_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i32 }

@ATI_REG_PHYS_OUT_ADDR = common dso_local global i32 0, align 4
@ATI_REG_PHYS_OUT_ADDR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp_info*)* @atiixp_waitready_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_waitready_codec(%struct.atiixp_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atiixp_info*, align 8
  %4 = alloca i32, align 4
  store %struct.atiixp_info* %0, %struct.atiixp_info** %3, align 8
  store i32 500, i32* %4, align 4
  br label %5

5:                                                ; preds = %15, %1
  %6 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %7 = load i32, i32* @ATI_REG_PHYS_OUT_ADDR, align 4
  %8 = call i32 @atiixp_rd(%struct.atiixp_info* %6, i32 %7)
  %9 = load i32, i32* @ATI_REG_PHYS_OUT_ADDR_EN, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %20

13:                                               ; preds = %5
  %14 = call i32 @DELAY(i32 1)
  br label %15

15:                                               ; preds = %13
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %5, label %19

19:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @atiixp_rd(%struct.atiixp_info*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
