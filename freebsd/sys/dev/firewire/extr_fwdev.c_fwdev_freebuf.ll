; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fwdev_freebuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fwdev_freebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xferq = type { i32, i32, i64, i32*, i32* }

@FWXFERQ_EXTBUF = common dso_local global i32 0, align 4
@M_FW = common dso_local global i32 0, align 4
@FWMAXQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_xferq*)* @fwdev_freebuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwdev_freebuf(%struct.fw_xferq* %0) #0 {
  %2 = alloca %struct.fw_xferq*, align 8
  store %struct.fw_xferq* %0, %struct.fw_xferq** %2, align 8
  %3 = load %struct.fw_xferq*, %struct.fw_xferq** %2, align 8
  %4 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @FWXFERQ_EXTBUF, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = load %struct.fw_xferq*, %struct.fw_xferq** %2, align 8
  %11 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.fw_xferq*, %struct.fw_xferq** %2, align 8
  %16 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @fwdma_free_multiseg(i32* %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.fw_xferq*, %struct.fw_xferq** %2, align 8
  %21 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.fw_xferq*, %struct.fw_xferq** %2, align 8
  %23 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @M_FW, align 4
  %26 = call i32 @free(i32* %24, i32 %25)
  %27 = load %struct.fw_xferq*, %struct.fw_xferq** %2, align 8
  %28 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @FWXFERQ_EXTBUF, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.fw_xferq*, %struct.fw_xferq** %2, align 8
  %32 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.fw_xferq*, %struct.fw_xferq** %2, align 8
  %36 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @FWMAXQUEUE, align 4
  %38 = load %struct.fw_xferq*, %struct.fw_xferq** %2, align 8
  %39 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %19, %1
  ret i32 0
}

declare dso_local i32 @fwdma_free_multiseg(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
