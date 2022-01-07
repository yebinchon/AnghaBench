; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_copy_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_copy_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_lomac = type { i32, i32, i32 }

@MAC_LOMAC_FLAG_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"lomac_copy_range: labelfrom not range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mac_lomac*, %struct.mac_lomac*)* @lomac_copy_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lomac_copy_range(%struct.mac_lomac* %0, %struct.mac_lomac* %1) #0 {
  %3 = alloca %struct.mac_lomac*, align 8
  %4 = alloca %struct.mac_lomac*, align 8
  store %struct.mac_lomac* %0, %struct.mac_lomac** %3, align 8
  store %struct.mac_lomac* %1, %struct.mac_lomac** %4, align 8
  %5 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %6 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MAC_LOMAC_FLAG_RANGE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %14 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %17 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %19 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %22 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @MAC_LOMAC_FLAG_RANGE, align 4
  %24 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %25 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
