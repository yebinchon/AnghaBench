; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32 (i32)*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CMPCI_REG_INTR_STATUS = common dso_local global i32 0, align 4
@CMPCI_REG_ANY_INTR = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_INTR = common dso_local global i32 0, align 4
@CMPCI_REG_CH0_INTR_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_CH1_INTR = common dso_local global i32 0, align 4
@CMPCI_REG_CH1_INTR_ENABLE = common dso_local global i32 0, align 4
@CMPCI_REG_INTR_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sc_info*
  store %struct.sc_info* %7, %struct.sc_info** %3, align 8
  %8 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %9 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @snd_mtxlock(i32 %10)
  %12 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %13 = load i32, i32* @CMPCI_REG_INTR_STATUS, align 4
  %14 = call i32 @cmi_rd(%struct.sc_info* %12, i32 %13, i32 4)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CMPCI_REG_ANY_INTR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %80

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CMPCI_REG_CH0_INTR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @CMPCI_REG_CH0_INTR_ENABLE, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CMPCI_REG_CH1_INTR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @CMPCI_REG_CH1_INTR_ENABLE, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %42 = load i32, i32* @CMPCI_REG_INTR_CTRL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @cmi_clr4(%struct.sc_info* %41, i32 %42, i32 %43)
  %45 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snd_mtxunlock(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @CMPCI_REG_CH0_INTR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %40
  %54 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %55 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @chn_intr(i32 %57)
  br label %59

59:                                               ; preds = %53, %40
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @CMPCI_REG_CH1_INTR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %66 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @chn_intr(i32 %68)
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %72 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @snd_mtxlock(i32 %73)
  %75 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %76 = load i32, i32* @CMPCI_REG_INTR_CTRL, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @cmi_set4(%struct.sc_info* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %37
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %82 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %81, i32 0, i32 2
  %83 = load i32 (i32)*, i32 (i32)** %82, align 8
  %84 = icmp ne i32 (i32)* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %87 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %86, i32 0, i32 2
  %88 = load i32 (i32)*, i32 (i32)** %87, align 8
  %89 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %90 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 %88(i32 %91)
  br label %93

93:                                               ; preds = %85, %80
  %94 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %95 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @snd_mtxunlock(i32 %96)
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @cmi_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @cmi_clr4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @cmi_set4(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
