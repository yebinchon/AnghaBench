; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_open_isodma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_open_isodma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i32, %struct.fw_xferq**, %struct.fw_xferq** }
%struct.fw_xferq = type { i32 }

@FWXFERQ_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no free dma channel (tx=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_open_isodma(%struct.firewire_comm* %0, i32 %1) #0 {
  %3 = alloca %struct.firewire_comm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_xferq**, align 8
  %6 = alloca %struct.fw_xferq*, align 8
  %7 = alloca i32, align 4
  store %struct.firewire_comm* %0, %struct.firewire_comm** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %12 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %11, i32 0, i32 2
  %13 = load %struct.fw_xferq**, %struct.fw_xferq*** %12, align 8
  %14 = getelementptr inbounds %struct.fw_xferq*, %struct.fw_xferq** %13, i64 0
  store %struct.fw_xferq** %14, %struct.fw_xferq*** %5, align 8
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %17 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %16, i32 0, i32 1
  %18 = load %struct.fw_xferq**, %struct.fw_xferq*** %17, align 8
  %19 = getelementptr inbounds %struct.fw_xferq*, %struct.fw_xferq** %18, i64 0
  store %struct.fw_xferq** %19, %struct.fw_xferq*** %5, align 8
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %22 = call i32 @FW_GLOCK(%struct.firewire_comm* %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %48, %20
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %26 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.fw_xferq**, %struct.fw_xferq*** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.fw_xferq*, %struct.fw_xferq** %30, i64 %32
  %34 = load %struct.fw_xferq*, %struct.fw_xferq** %33, align 8
  store %struct.fw_xferq* %34, %struct.fw_xferq** %6, align 8
  %35 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %36 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FWXFERQ_OPEN, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i32, i32* @FWXFERQ_OPEN, align 4
  %43 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %44 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %51

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %23

51:                                               ; preds = %41, %23
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %54 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 -1, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %62 = call i32 @FW_GUNLOCK(%struct.firewire_comm* %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @FW_GLOCK(%struct.firewire_comm*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @FW_GUNLOCK(%struct.firewire_comm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
