; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_wrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_wrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@CS4281PCI_ACCAD = common dso_local global i32 0, align 4
@CS4281PCI_ACCDA = common dso_local global i32 0, align 4
@CS4281PCI_ACCTL = common dso_local global i32 0, align 4
@CS4281PCI_ACCTL_ESYN = common dso_local global i32 0, align 4
@CS4281PCI_ACCTL_VFRM = common dso_local global i32 0, align 4
@CS4281PCI_ACCTL_DCV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cs4281_wrcd: DCV did not go\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cs4281_wrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4281_wrcd(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sc_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sc_info*
  store %struct.sc_info* %12, %struct.sc_info** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 8
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %18 = load i32, i32* @CS4281PCI_ACCAD, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @cs4281_wr(%struct.sc_info* %17, i32 %18, i32 %19)
  %21 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %22 = load i32, i32* @CS4281PCI_ACCDA, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @cs4281_wr(%struct.sc_info* %21, i32 %22, i32 %23)
  %25 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %26 = load i32, i32* @CS4281PCI_ACCTL, align 4
  %27 = load i32, i32* @CS4281PCI_ACCTL_ESYN, align 4
  %28 = load i32, i32* @CS4281PCI_ACCTL_VFRM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CS4281PCI_ACCTL_DCV, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @cs4281_wr(%struct.sc_info* %25, i32 %26, i32 %31)
  %33 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %34 = load i32, i32* @CS4281PCI_ACCTL, align 4
  %35 = load i32, i32* @CS4281PCI_ACCTL_DCV, align 4
  %36 = call i64 @cs4281_waitclr(%struct.sc_info* %33, i32 %34, i32 %35, i32 250)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %40 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %4
  ret i32 0
}

declare dso_local i32 @cs4281_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i64 @cs4281_waitclr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
