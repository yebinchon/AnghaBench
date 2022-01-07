; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rmx.c_in6_mtutimo_setwa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rmx.c_in6_mtutimo_setwa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rib_head = type { i32 }
%struct.mtuex_arg = type { %struct.rib_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rib_head*, i32, i32, i8*)* @in6_mtutimo_setwa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_mtutimo_setwa(%struct.rib_head* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.rib_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mtuex_arg*, align 8
  store %struct.rib_head* %0, %struct.rib_head** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.mtuex_arg*
  store %struct.mtuex_arg* %11, %struct.mtuex_arg** %9, align 8
  %12 = load %struct.rib_head*, %struct.rib_head** %5, align 8
  %13 = load %struct.mtuex_arg*, %struct.mtuex_arg** %9, align 8
  %14 = getelementptr inbounds %struct.mtuex_arg, %struct.mtuex_arg* %13, i32 0, i32 0
  store %struct.rib_head* %12, %struct.rib_head** %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
