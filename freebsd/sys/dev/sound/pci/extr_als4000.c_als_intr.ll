; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IRQ_STAT = common dso_local global i32 0, align 4
@ALS_IRQ_STATUS8 = common dso_local global i32 0, align 4
@ALS_ESP_RD_STATUS8 = common dso_local global i32 0, align 4
@ALS_IRQ_STATUS16 = common dso_local global i32 0, align 4
@ALS_ESP_RD_STATUS16 = common dso_local global i32 0, align 4
@ALS_IRQ_MPUIN = common dso_local global i32 0, align 4
@ALS_MIDI_DATA = common dso_local global i32 0, align 4
@ALS_IRQ_CR1E = common dso_local global i32 0, align 4
@ALS_CR1E_ACK_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @als_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @als_intr(i8* %0) #0 {
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
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @snd_mtxlock(i32 %10)
  %12 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %13 = call i32 @als_intr_rd(%struct.sc_info* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snd_mtxunlock(i32 %20)
  %22 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @chn_intr(i32 %25)
  %27 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snd_mtxlock(i32 %29)
  br label %31

31:                                               ; preds = %17, %1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 64
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @snd_mtxunlock(i32 %38)
  %40 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %41 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @chn_intr(i32 %43)
  %45 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snd_mtxlock(i32 %47)
  br label %49

49:                                               ; preds = %35, %31
  %50 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @als_intr_wr(%struct.sc_info* %50, i32 %51)
  %53 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %54 = load i32, i32* @IRQ_STAT, align 4
  %55 = call i32 @als_mix_rd(%struct.sc_info* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @ALS_IRQ_STATUS8, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %62 = load i32, i32* @ALS_ESP_RD_STATUS8, align 4
  %63 = call i32 @als_ack_read(%struct.sc_info* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %49
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @ALS_IRQ_STATUS16, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %71 = load i32, i32* @ALS_ESP_RD_STATUS16, align 4
  %72 = call i32 @als_ack_read(%struct.sc_info* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @ALS_IRQ_MPUIN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %80 = load i32, i32* @ALS_MIDI_DATA, align 4
  %81 = call i32 @als_ack_read(%struct.sc_info* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @ALS_IRQ_CR1E, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %89 = load i32, i32* @ALS_CR1E_ACK_PORT, align 4
  %90 = call i32 @als_ack_read(%struct.sc_info* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %82
  %92 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %93 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @snd_mtxunlock(i32 %94)
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @als_intr_rd(%struct.sc_info*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @als_intr_wr(%struct.sc_info*, i32) #1

declare dso_local i32 @als_mix_rd(%struct.sc_info*, i32) #1

declare dso_local i32 @als_ack_read(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
