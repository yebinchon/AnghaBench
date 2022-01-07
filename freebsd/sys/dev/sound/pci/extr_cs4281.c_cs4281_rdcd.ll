; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_rdcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_rdcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@CS4281PCI_ACSDA = common dso_local global i32 0, align 4
@CS4281PCI_ACCAD = common dso_local global i32 0, align 4
@CS4281PCI_ACCDA = common dso_local global i32 0, align 4
@CS4281PCI_ACCTL = common dso_local global i32 0, align 4
@CS4281PCI_ACCTL_ESYN = common dso_local global i32 0, align 4
@CS4281PCI_ACCTL_VFRM = common dso_local global i32 0, align 4
@CS4281PCI_ACCTL_DCV = common dso_local global i32 0, align 4
@CS4281PCI_ACCTL_CRW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cs4281_rdcd: DCV did not go\0A\00", align 1
@CS4281PCI_ACSTS = common dso_local global i32 0, align 4
@CS4281PCI_ACSTS_VSTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cs4281_rdcd: VSTS did not come\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @cs4281_rdcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4281_rdcd(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.sc_info*
  store %struct.sc_info* %11, %struct.sc_info** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = ashr i32 %12, 8
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %17 = load i32, i32* @CS4281PCI_ACSDA, align 4
  %18 = call i32 @cs4281_rd(%struct.sc_info* %16, i32 %17)
  %19 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %20 = load i32, i32* @CS4281PCI_ACCAD, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @cs4281_wr(%struct.sc_info* %19, i32 %20, i32 %21)
  %23 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %24 = load i32, i32* @CS4281PCI_ACCDA, align 4
  %25 = call i32 @cs4281_wr(%struct.sc_info* %23, i32 %24, i32 0)
  %26 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %27 = load i32, i32* @CS4281PCI_ACCTL, align 4
  %28 = load i32, i32* @CS4281PCI_ACCTL_ESYN, align 4
  %29 = load i32, i32* @CS4281PCI_ACCTL_VFRM, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CS4281PCI_ACCTL_DCV, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CS4281PCI_ACCTL_CRW, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cs4281_wr(%struct.sc_info* %26, i32 %27, i32 %34)
  %36 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %37 = load i32, i32* @CS4281PCI_ACCTL, align 4
  %38 = load i32, i32* @CS4281PCI_ACCTL_DCV, align 4
  %39 = call i64 @cs4281_waitclr(%struct.sc_info* %36, i32 %37, i32 %38, i32 250)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %3
  %42 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %43 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %61

46:                                               ; preds = %3
  %47 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %48 = load i32, i32* @CS4281PCI_ACSTS, align 4
  %49 = load i32, i32* @CS4281PCI_ACSTS_VSTS, align 4
  %50 = call i64 @cs4281_waitset(%struct.sc_info* %47, i32 %48, i32 %49, i32 250)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %54 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %61

57:                                               ; preds = %46
  %58 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %59 = load i32, i32* @CS4281PCI_ACSDA, align 4
  %60 = call i32 @cs4281_rd(%struct.sc_info* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %52, %41
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @cs4281_rd(%struct.sc_info*, i32) #1

declare dso_local i32 @cs4281_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i64 @cs4281_waitclr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @cs4281_waitset(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
