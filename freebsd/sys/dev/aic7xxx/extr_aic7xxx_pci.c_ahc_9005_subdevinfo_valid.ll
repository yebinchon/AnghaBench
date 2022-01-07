; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_9005_subdevinfo_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_9005_subdevinfo_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEVID_9005_TYPE_HBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ahc_9005_subdevinfo_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_9005_subdevinfo_valid(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 36869
  br i1 %11, label %12, label %37

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 36869
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @SUBID_9005_TYPE_KNOWN(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @SUBID_9005_TYPE(i32 %24)
  switch i32 %25, label %35 [
    i32 129, label %26
    i32 131, label %27
    i32 130, label %27
    i32 128, label %34
  ]

26:                                               ; preds = %23
  br label %36

27:                                               ; preds = %23, %23
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @DEVID_9005_TYPE(i32 %28)
  %30 = load i32, i32* @DEVID_9005_TYPE_HBA, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %27
  br label %36

34:                                               ; preds = %23
  br label %36

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %34, %33, %26
  br label %37

37:                                               ; preds = %36, %19, %15, %12, %4
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i64 @SUBID_9005_TYPE_KNOWN(i32) #1

declare dso_local i32 @SUBID_9005_TYPE(i32) #1

declare dso_local i32 @DEVID_9005_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
