; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_fw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_fw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"load IV failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"load ExtIV failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*)* @bwi_mac_fw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_mac_fw_init(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %6 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %7 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @bwi_mac_fw_load_iv(%struct.bwi_mac* %11, i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %24 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %29 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %30 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @bwi_mac_fw_load_iv(%struct.bwi_mac* %28, i32* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %27
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @bwi_mac_fw_load_iv(%struct.bwi_mac*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
