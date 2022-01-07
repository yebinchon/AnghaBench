; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_range_in_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_range_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_lomac = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_lomac*, %struct.mac_lomac*)* @lomac_range_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_range_in_range(%struct.mac_lomac* %0, %struct.mac_lomac* %1) #0 {
  %3 = alloca %struct.mac_lomac*, align 8
  %4 = alloca %struct.mac_lomac*, align 8
  store %struct.mac_lomac* %0, %struct.mac_lomac** %3, align 8
  store %struct.mac_lomac* %1, %struct.mac_lomac** %4, align 8
  %5 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %6 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %5, i32 0, i32 1
  %7 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %8 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %7, i32 0, i32 1
  %9 = call i64 @lomac_dominate_element(i32* %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %13 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %12, i32 0, i32 0
  %14 = load %struct.mac_lomac*, %struct.mac_lomac** %4, align 8
  %15 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %14, i32 0, i32 0
  %16 = call i64 @lomac_dominate_element(i32* %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i1 [ false, %2 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i64 @lomac_dominate_element(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
