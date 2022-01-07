; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_subject_dominate_high.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_subject_dominate_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_biba = type { i32, %struct.mac_biba_element }
%struct.mac_biba_element = type { i64 }

@MAC_BIBA_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"biba_effective_in_range: mb not effective\00", align 1
@MAC_BIBA_TYPE_EQUAL = common dso_local global i64 0, align 8
@MAC_BIBA_TYPE_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_biba*)* @biba_subject_dominate_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_subject_dominate_high(%struct.mac_biba* %0) #0 {
  %2 = alloca %struct.mac_biba*, align 8
  %3 = alloca %struct.mac_biba_element*, align 8
  store %struct.mac_biba* %0, %struct.mac_biba** %2, align 8
  %4 = load %struct.mac_biba*, %struct.mac_biba** %2, align 8
  %5 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MAC_BIBA_FLAG_EFFECTIVE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.mac_biba*, %struct.mac_biba** %2, align 8
  %13 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %12, i32 0, i32 1
  store %struct.mac_biba_element* %13, %struct.mac_biba_element** %3, align 8
  %14 = load %struct.mac_biba_element*, %struct.mac_biba_element** %3, align 8
  %15 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAC_BIBA_TYPE_EQUAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.mac_biba_element*, %struct.mac_biba_element** %3, align 8
  %21 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAC_BIBA_TYPE_HIGH, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %19, %1
  %26 = phi i1 [ true, %1 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
