; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_atphy.c_atphy_anar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_atphy.c_atphy_anar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmedia_entry = type { i32 }

@ANAR_TX_FD = common dso_local global i32 0, align 4
@ANAR_TX = common dso_local global i32 0, align 4
@ANAR_10_FD = common dso_local global i32 0, align 4
@ANAR_10 = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmedia_entry*)* @atphy_anar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atphy_anar(%struct.ifmedia_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifmedia_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.ifmedia_entry* %0, %struct.ifmedia_entry** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %6 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @IFM_SUBTYPE(i32 %7)
  switch i32 %8, label %30 [
    i32 128, label %9
    i32 131, label %20
    i32 130, label %22
    i32 129, label %26
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @ANAR_TX_FD, align 4
  %11 = load i32, i32* @ANAR_TX, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ANAR_10_FD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ANAR_10, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load i32, i32* @ANAR_TX, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load i32, i32* @ANAR_10, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

31:                                               ; preds = %26, %22
  %32 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %33 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFM_FDX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %40 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IFM_SUBTYPE(i32 %41)
  %43 = icmp eq i32 %42, 130
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @ANAR_TX_FD, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @ANAR_10_FD, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %30, %20, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @IFM_SUBTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
