; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_reset_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_reset_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ahci_reset_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_reset_to(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ahci_channel*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ahci_channel*
  store %struct.ahci_channel* %5, %struct.ahci_channel** %3, align 8
  %6 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %13 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %17 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %18 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 -1, i32 0
  %23 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %24 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 310, %25
  %27 = mul nsw i32 %26, 100
  %28 = call i64 @ahci_wait_ready(%struct.ahci_channel* %16, i32 %22, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %11
  %31 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %34 = call i32 @ahci_start(%struct.ahci_channel* %33, i32 1)
  %35 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %36 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @xpt_release_simq(i32 %37, i32 %38)
  br label %61

40:                                               ; preds = %11
  %41 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %42 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %47 = call i32 @ahci_clo(%struct.ahci_channel* %46)
  %48 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %49 = call i32 @ahci_start(%struct.ahci_channel* %48, i32 1)
  %50 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %51 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @xpt_release_simq(i32 %52, i32 %53)
  br label %61

55:                                               ; preds = %40
  %56 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %57 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %56, i32 0, i32 1
  %58 = load i32, i32* @hz, align 4
  %59 = sdiv i32 %58, 10
  %60 = call i32 @callout_schedule(i32* %57, i32 %59)
  br label %61

61:                                               ; preds = %55, %45, %30, %10
  ret void
}

declare dso_local i64 @ahci_wait_ready(%struct.ahci_channel*, i32, i32) #1

declare dso_local i32 @ahci_start(%struct.ahci_channel*, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @ahci_clo(%struct.ahci_channel*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
