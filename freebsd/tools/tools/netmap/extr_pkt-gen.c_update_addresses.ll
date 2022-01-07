; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_update_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_update_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt = type { i32 }
%struct.targ = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkt*, %struct.targ*)* @update_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_addresses(%struct.pkt* %0, %struct.targ* %1) #0 {
  %3 = alloca %struct.pkt*, align 8
  %4 = alloca %struct.targ*, align 8
  store %struct.pkt* %0, %struct.pkt** %3, align 8
  store %struct.targ* %1, %struct.targ** %4, align 8
  %5 = load %struct.targ*, %struct.targ** %4, align 8
  %6 = getelementptr inbounds %struct.targ, %struct.targ* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AF_INET, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.pkt*, %struct.pkt** %3, align 8
  %14 = load %struct.targ*, %struct.targ** %4, align 8
  %15 = call i32 @update_ip(%struct.pkt* %13, %struct.targ* %14)
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.pkt*, %struct.pkt** %3, align 8
  %18 = load %struct.targ*, %struct.targ** %4, align 8
  %19 = call i32 @update_ip6(%struct.pkt* %17, %struct.targ* %18)
  br label %20

20:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @update_ip(%struct.pkt*, %struct.targ*) #1

declare dso_local i32 @update_ip6(%struct.pkt*, %struct.targ*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
