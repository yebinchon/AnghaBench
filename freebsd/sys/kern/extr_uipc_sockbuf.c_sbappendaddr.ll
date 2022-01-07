; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbappendaddr(%struct.sockbuf* %0, %struct.sockaddr* %1, %struct.mbuf* %2, %struct.mbuf* %3) #0 {
  %5 = alloca %struct.sockbuf*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.sockbuf* %0, %struct.sockbuf** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store %struct.mbuf* %3, %struct.mbuf** %8, align 8
  %10 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %11 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %10)
  %12 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %16 = call i32 @sbappendaddr_locked(%struct.sockbuf* %12, %struct.sockaddr* %13, %struct.mbuf* %14, %struct.mbuf* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %18 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %17)
  %19 = load i32, i32* %9, align 4
  ret i32 %19
}

declare dso_local i32 @SOCKBUF_LOCK(%struct.sockbuf*) #1

declare dso_local i32 @sbappendaddr_locked(%struct.sockbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
