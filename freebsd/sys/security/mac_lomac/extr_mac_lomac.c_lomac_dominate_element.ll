; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_dominate_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_dominate_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_lomac_element = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"lomac_dominate_element: b->mle_type invalid\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"lomac_dominate_element: a->mle_type invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_lomac_element*, %struct.mac_lomac_element*)* @lomac_dominate_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_dominate_element(%struct.mac_lomac_element* %0, %struct.mac_lomac_element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac_lomac_element*, align 8
  %5 = alloca %struct.mac_lomac_element*, align 8
  store %struct.mac_lomac_element* %0, %struct.mac_lomac_element** %4, align 8
  store %struct.mac_lomac_element* %1, %struct.mac_lomac_element** %5, align 8
  %6 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %4, align 8
  %7 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %37 [
    i32 131, label %9
    i32 129, label %9
    i32 128, label %10
    i32 130, label %19
  ]

9:                                                ; preds = %2, %2
  store i32 1, i32* %3, align 4
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %5, align 8
  %12 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %16 [
    i32 130, label %14
    i32 129, label %14
    i32 131, label %15
    i32 128, label %15
  ]

14:                                               ; preds = %10, %10
  store i32 0, i32* %3, align 4
  br label %39

15:                                               ; preds = %10, %10
  store i32 1, i32* %3, align 4
  br label %39

16:                                               ; preds = %10
  %17 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %2, %18
  %20 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %5, align 8
  %21 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %34 [
    i32 131, label %23
    i32 128, label %23
    i32 129, label %24
    i32 130, label %25
  ]

23:                                               ; preds = %19, %19
  store i32 1, i32* %3, align 4
  br label %39

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %39

25:                                               ; preds = %19
  %26 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %4, align 8
  %27 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mac_lomac_element*, %struct.mac_lomac_element** %5, align 8
  %30 = getelementptr inbounds %struct.mac_lomac_element, %struct.mac_lomac_element* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %28, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %19
  %35 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %2, %36
  %38 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %9, %14, %15, %23, %24, %25, %37
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
