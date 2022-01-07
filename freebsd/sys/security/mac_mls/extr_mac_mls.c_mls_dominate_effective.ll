; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_dominate_effective.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_dominate_effective.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_mls = type { i32, i32 }

@MAC_MLS_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"mls_dominate_effective: a not effective\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"mls_dominate_effective: b not effective\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_mls*, %struct.mac_mls*)* @mls_dominate_effective to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_dominate_effective(%struct.mac_mls* %0, %struct.mac_mls* %1) #0 {
  %3 = alloca %struct.mac_mls*, align 8
  %4 = alloca %struct.mac_mls*, align 8
  store %struct.mac_mls* %0, %struct.mac_mls** %3, align 8
  store %struct.mac_mls* %1, %struct.mac_mls** %4, align 8
  %5 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %6 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MAC_MLS_FLAG_EFFECTIVE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mac_mls*, %struct.mac_mls** %4, align 8
  %14 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAC_MLS_FLAG_EFFECTIVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %22 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %21, i32 0, i32 1
  %23 = load %struct.mac_mls*, %struct.mac_mls** %4, align 8
  %24 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %23, i32 0, i32 1
  %25 = call i32 @mls_dominate_element(i32* %22, i32* %24)
  ret i32 %25
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mls_dominate_element(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
