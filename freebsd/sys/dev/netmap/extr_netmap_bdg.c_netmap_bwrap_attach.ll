; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i32 }
%struct.netmap_bdg_ops = type { i32 (i8*, %struct.netmap_adapter.0*)* }
%struct.netmap_adapter.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_bwrap_attach(i8* %0, %struct.netmap_adapter* %1, %struct.netmap_bdg_ops* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca %struct.netmap_bdg_ops*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.netmap_adapter* %1, %struct.netmap_adapter** %5, align 8
  store %struct.netmap_bdg_ops* %2, %struct.netmap_bdg_ops** %6, align 8
  %7 = load %struct.netmap_bdg_ops*, %struct.netmap_bdg_ops** %6, align 8
  %8 = getelementptr inbounds %struct.netmap_bdg_ops, %struct.netmap_bdg_ops* %7, i32 0, i32 0
  %9 = load i32 (i8*, %struct.netmap_adapter.0*)*, i32 (i8*, %struct.netmap_adapter.0*)** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %12 = bitcast %struct.netmap_adapter* %11 to %struct.netmap_adapter.0*
  %13 = call i32 %9(i8* %10, %struct.netmap_adapter.0* %12)
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
