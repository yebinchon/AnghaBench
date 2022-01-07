; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanstats/extr_wlanstats.c_wlan_setifname.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanstats/extr_wlanstats.c_wlan_setifname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlanstatfoo = type { i32 }
%struct.wlanstatfoo_p = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlanstatfoo*, i8*)* @wlan_setifname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_setifname(%struct.wlanstatfoo* %0, i8* %1) #0 {
  %3 = alloca %struct.wlanstatfoo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wlanstatfoo_p*, align 8
  store %struct.wlanstatfoo* %0, %struct.wlanstatfoo** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.wlanstatfoo*, %struct.wlanstatfoo** %3, align 8
  %7 = bitcast %struct.wlanstatfoo* %6 to %struct.wlanstatfoo_p*
  store %struct.wlanstatfoo_p* %7, %struct.wlanstatfoo_p** %5, align 8
  %8 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %5, align 8
  %9 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strncpy(i32 %11, i8* %12, i32 4)
  %14 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %5, align 8
  %15 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strncpy(i32 %17, i8* %18, i32 4)
  ret void
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
