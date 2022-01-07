; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_sin_2_v4mapsin6_in_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_sin_2_v4mapsin6_in_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@M_SONAME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_sin_2_v4mapsin6_in_sock(%struct.sockaddr** %0) #0 {
  %2 = alloca %struct.sockaddr**, align 8
  %3 = alloca %struct.sockaddr_in*, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr** %0, %struct.sockaddr*** %2, align 8
  %5 = load i32, i32* @M_SONAME, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = call %struct.sockaddr_in6* @malloc(i32 4, i32 %5, i32 %6)
  store %struct.sockaddr_in6* %7, %struct.sockaddr_in6** %4, align 8
  %8 = load %struct.sockaddr**, %struct.sockaddr*** %2, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %10, %struct.sockaddr_in** %3, align 8
  %11 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %12 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %13 = call i32 @in6_sin_2_v4mapsin6(%struct.sockaddr_in* %11, %struct.sockaddr_in6* %12)
  %14 = load %struct.sockaddr**, %struct.sockaddr*** %2, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %16 = load i32, i32* @M_SONAME, align 4
  %17 = call i32 @free(%struct.sockaddr* %15, i32 %16)
  %18 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %19 = bitcast %struct.sockaddr_in6* %18 to %struct.sockaddr*
  %20 = load %struct.sockaddr**, %struct.sockaddr*** %2, align 8
  store %struct.sockaddr* %19, %struct.sockaddr** %20, align 8
  ret void
}

declare dso_local %struct.sockaddr_in6* @malloc(i32, i32, i32) #1

declare dso_local i32 @in6_sin_2_v4mapsin6(%struct.sockaddr_in*, %struct.sockaddr_in6*) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
