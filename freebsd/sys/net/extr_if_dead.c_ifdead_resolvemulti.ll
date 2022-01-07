; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_dead.c_ifdead_resolvemulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_dead.c_ifdead_resolvemulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.sockaddr**, %struct.sockaddr*)* @ifdead_resolvemulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifdead_resolvemulti(%struct.ifnet* %0, %struct.sockaddr** %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.sockaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %7 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %7, align 8
  %8 = load i32, i32* @ENXIO, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
