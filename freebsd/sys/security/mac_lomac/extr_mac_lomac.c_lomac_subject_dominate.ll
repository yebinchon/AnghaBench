; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_subject_dominate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_subject_dominate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_lomac = type { i32, i32, i32 }

@MAC_LOMAC_FLAG_SINGLE = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"lomac_dominate_single: a not subject\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"lomac_dominate_single: b not single\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_lomac*, %struct.mac_lomac*)* @lomac_subject_dominate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_subject_dominate(%struct.mac_lomac* %0, %struct.mac_lomac* %1) #0 {
  %3 = alloca %struct.mac_lomac*, align 8
  %4 = alloca %struct.mac_lomac*, align 8
  store %struct.mac_lomac* %0, %struct.mac_lomac** %3, align 8
  store %struct.mac_lomac* %1, %struct.mac_lomac** %4, align 8
  %5 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %6 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %10 = load i32, i32* @MAC_LOMAC_FLAG_RANGE, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %17 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %25 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %24, i32 0, i32 2
  %26 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %27 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %26, i32 0, i32 1
  %28 = call i32 @lomac_dominate_element(i32* %25, i32* %27)
  ret i32 %28
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @lomac_dominate_element(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
