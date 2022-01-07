; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmpci_rate_to_regvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmpci_rate_to_regvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_CMI_RATES = common dso_local global i32 0, align 4
@cmi_rates = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"cmpci_rate_to_regvalue: %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cmpci_rate_to_regvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpci_rate_to_regvalue(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NUM_CMI_RATES, align 4
  %8 = sub nsw i32 %7, 1
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  %11 = load i32, i32* %2, align 4
  %12 = load i32*, i32** @cmi_rates, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @cmi_rates, align 8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %16, %22
  %24 = sdiv i32 %23, 2
  %25 = icmp slt i32 %11, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  br label %31

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %5

31:                                               ; preds = %26, %5
  %32 = load i32, i32* %2, align 4
  %33 = load i32*, i32** @cmi_rates, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37)
  %39 = call i32 @DEB(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = ashr i32 %40, 1
  %42 = load i32, i32* %3, align 4
  %43 = shl i32 %42, 2
  %44 = or i32 %41, %43
  %45 = and i32 %44, 7
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
