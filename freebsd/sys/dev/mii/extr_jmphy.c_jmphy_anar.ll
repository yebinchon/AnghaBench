; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_anar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_anar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmedia_entry = type { i32 }

@ANAR_TX_FD = common dso_local global i32 0, align 4
@ANAR_TX = common dso_local global i32 0, align 4
@ANAR_10_FD = common dso_local global i32 0, align 4
@ANAR_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmedia_entry*)* @jmphy_anar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmphy_anar(%struct.ifmedia_entry* %0) #0 {
  %2 = alloca %struct.ifmedia_entry*, align 8
  %3 = alloca i32, align 4
  store %struct.ifmedia_entry* %0, %struct.ifmedia_entry** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %2, align 8
  %5 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @IFM_SUBTYPE(i32 %6)
  switch i32 %7, label %31 [
    i32 128, label %8
    i32 131, label %18
    i32 130, label %19
    i32 129, label %25
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @ANAR_TX_FD, align 4
  %10 = load i32, i32* @ANAR_TX, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ANAR_10_FD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ANAR_10, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %1
  br label %32

19:                                               ; preds = %1
  %20 = load i32, i32* @ANAR_TX, align 4
  %21 = load i32, i32* @ANAR_TX_FD, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %1
  %26 = load i32, i32* @ANAR_10, align 4
  %27 = load i32, i32* @ANAR_10_FD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %31, %25, %19, %18, %8
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @IFM_SUBTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
