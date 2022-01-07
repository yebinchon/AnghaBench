; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd.c_agp_amd_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd.c_agp_amd_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"AMD 751 host to AGP bridge\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"AMD 761 host to AGP bridge\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"AMD 762 host to AGP bridge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @agp_amd_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @agp_amd_match(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pci_get_class(i32 %4)
  %6 = load i64, i64* @PCIC_BRIDGE, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_subclass(i32 %9)
  %11 = load i64, i64* @PCIS_BRIDGE_HOST, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i8* null, i8** %2, align 8
  br label %26

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @agp_find_caps(i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %26

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_get_devid(i32 %20)
  switch i32 %21, label %25 [
    i32 1879445538, label %22
    i32 1879969826, label %23
    i32 1879838754, label %24
  ]

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %26

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %26

24:                                               ; preds = %19
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %26

25:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %26

26:                                               ; preds = %25, %24, %23, %22, %18, %13
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @agp_find_caps(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
