; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_pci_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_pci_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATI_IXP_CHN_RUNNING = common dso_local global i32 0, align 4
@PCMTRIG_STOP = common dso_local global i32 0, align 4
@ATI_IXP_CHN_SUSPEND = common dso_local global i32 0, align 4
@ATI_REG_CMD = common dso_local global i32 0, align 4
@ATI_REG_CMD_POWERDOWN = common dso_local global i32 0, align 4
@ATI_REG_CMD_AC_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atiixp_pci_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_pci_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atiixp_info*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.atiixp_info* @pcm_getdevinfo(i32 %5)
  store %struct.atiixp_info* %6, %struct.atiixp_info** %3, align 8
  %7 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %8 = call i32 @atiixp_lock(%struct.atiixp_info* %7)
  %9 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %10 = call i32 @atiixp_disable_interrupts(%struct.atiixp_info* %9)
  %11 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %12 = call i32 @atiixp_unlock(%struct.atiixp_info* %11)
  %13 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %14 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATI_IXP_CHN_RUNNING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %22 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %21, i32 0, i32 1
  %23 = load i32, i32* @PCMTRIG_STOP, align 4
  %24 = call i32 @atiixp_chan_trigger(i32* null, %struct.TYPE_2__* %22, i32 %23)
  %25 = load i32, i32* @ATI_IXP_CHN_SUSPEND, align 4
  %26 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %27 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %20, %1
  %32 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %33 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ATI_IXP_CHN_RUNNING, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %41 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %40, i32 0, i32 0
  %42 = load i32, i32* @PCMTRIG_STOP, align 4
  %43 = call i32 @atiixp_chan_trigger(i32* null, %struct.TYPE_2__* %41, i32 %42)
  %44 = load i32, i32* @ATI_IXP_CHN_SUSPEND, align 4
  %45 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %46 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %39, %31
  %51 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %52 = call i32 @atiixp_lock(%struct.atiixp_info* %51)
  %53 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %54 = load i32, i32* @ATI_REG_CMD, align 4
  %55 = call i32 @atiixp_rd(%struct.atiixp_info* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @ATI_REG_CMD_POWERDOWN, align 4
  %57 = load i32, i32* @ATI_REG_CMD_AC_RESET, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %62 = load i32, i32* @ATI_REG_CMD, align 4
  %63 = load i32, i32* @ATI_REG_CMD_POWERDOWN, align 4
  %64 = call i32 @atiixp_wr(%struct.atiixp_info* %61, i32 %62, i32 %63)
  %65 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %66 = call i32 @atiixp_unlock(%struct.atiixp_info* %65)
  ret i32 0
}

declare dso_local %struct.atiixp_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @atiixp_lock(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_disable_interrupts(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_unlock(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_chan_trigger(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @atiixp_rd(%struct.atiixp_info*, i32) #1

declare dso_local i32 @atiixp_wr(%struct.atiixp_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
