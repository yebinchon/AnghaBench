; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_dominate_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_dominate_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_mls_element = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"mls_dominate_element: b->mme_type invalid\00", align 1
@MAC_MLS_MAX_COMPARTMENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"mls_dominate_element: a->mme_type invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_mls_element*, %struct.mac_mls_element*)* @mls_dominate_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_dominate_element(%struct.mac_mls_element* %0, %struct.mac_mls_element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac_mls_element*, align 8
  %5 = alloca %struct.mac_mls_element*, align 8
  %6 = alloca i32, align 4
  store %struct.mac_mls_element* %0, %struct.mac_mls_element** %4, align 8
  store %struct.mac_mls_element* %1, %struct.mac_mls_element** %5, align 8
  %7 = load %struct.mac_mls_element*, %struct.mac_mls_element** %4, align 8
  %8 = getelementptr inbounds %struct.mac_mls_element, %struct.mac_mls_element* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %62 [
    i32 131, label %10
    i32 130, label %10
    i32 128, label %11
    i32 129, label %20
  ]

10:                                               ; preds = %2, %2
  store i32 1, i32* %3, align 4
  br label %65

11:                                               ; preds = %2
  %12 = load %struct.mac_mls_element*, %struct.mac_mls_element** %5, align 8
  %13 = getelementptr inbounds %struct.mac_mls_element, %struct.mac_mls_element* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %17 [
    i32 129, label %15
    i32 130, label %15
    i32 131, label %16
    i32 128, label %16
  ]

15:                                               ; preds = %11, %11
  store i32 0, i32* %3, align 4
  br label %65

16:                                               ; preds = %11, %11
  store i32 1, i32* %3, align 4
  br label %65

17:                                               ; preds = %11
  %18 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %2, %19
  %21 = load %struct.mac_mls_element*, %struct.mac_mls_element** %5, align 8
  %22 = getelementptr inbounds %struct.mac_mls_element, %struct.mac_mls_element* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %59 [
    i32 131, label %24
    i32 128, label %24
    i32 130, label %25
    i32 129, label %26
  ]

24:                                               ; preds = %20, %20
  store i32 1, i32* %3, align 4
  br label %65

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %65

26:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %47, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MAC_MLS_MAX_COMPARTMENTS, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.mac_mls_element*, %struct.mac_mls_element** %4, align 8
  %34 = getelementptr inbounds %struct.mac_mls_element, %struct.mac_mls_element* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MAC_MLS_BIT_TEST(i32 %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.mac_mls_element*, %struct.mac_mls_element** %5, align 8
  %41 = getelementptr inbounds %struct.mac_mls_element, %struct.mac_mls_element* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @MAC_MLS_BIT_TEST(i32 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %65

46:                                               ; preds = %38, %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load %struct.mac_mls_element*, %struct.mac_mls_element** %4, align 8
  %52 = getelementptr inbounds %struct.mac_mls_element, %struct.mac_mls_element* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mac_mls_element*, %struct.mac_mls_element** %5, align 8
  %55 = getelementptr inbounds %struct.mac_mls_element, %struct.mac_mls_element* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %53, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %65

59:                                               ; preds = %20
  %60 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %2, %61
  %63 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %50, %45, %25, %24, %16, %15, %10
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @MAC_MLS_BIT_TEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
