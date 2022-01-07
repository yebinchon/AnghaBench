; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_pptp.c_protohandlergreout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_pptp.c_protohandlergreout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32 }
%struct.alias_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.ip*, %struct.alias_data*)* @protohandlergreout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protohandlergreout(%struct.libalias* %0, %struct.ip* %1, %struct.alias_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca %struct.ip*, align 8
  %7 = alloca %struct.alias_data*, align 8
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store %struct.ip* %1, %struct.ip** %6, align 8
  store %struct.alias_data* %2, %struct.alias_data** %7, align 8
  %8 = load %struct.libalias*, %struct.libalias** %5, align 8
  %9 = load %struct.ip*, %struct.ip** %6, align 8
  %10 = call i64 @AliasHandlePptpGreOut(%struct.libalias* %8, %struct.ip* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

declare dso_local i64 @AliasHandlePptpGreOut(%struct.libalias*, %struct.ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
