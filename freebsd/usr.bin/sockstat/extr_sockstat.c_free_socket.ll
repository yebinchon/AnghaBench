; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_free_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_free_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sock*, %struct.sock*, %struct.sock* }
%struct.addr = type { %struct.addr*, %struct.addr*, %struct.addr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @free_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_socket(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.addr*, align 8
  %4 = alloca %struct.addr*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 2
  %7 = load %struct.sock*, %struct.sock** %6, align 8
  %8 = bitcast %struct.sock* %7 to %struct.addr*
  store %struct.addr* %8, %struct.addr** %3, align 8
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.addr*, %struct.addr** %3, align 8
  %11 = icmp ne %struct.addr* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.addr*, %struct.addr** %3, align 8
  %14 = getelementptr inbounds %struct.addr, %struct.addr* %13, i32 0, i32 0
  %15 = load %struct.addr*, %struct.addr** %14, align 8
  store %struct.addr* %15, %struct.addr** %4, align 8
  %16 = load %struct.addr*, %struct.addr** %3, align 8
  %17 = bitcast %struct.addr* %16 to %struct.sock*
  %18 = call i32 @free(%struct.sock* %17)
  %19 = load %struct.addr*, %struct.addr** %4, align 8
  store %struct.addr* %19, %struct.addr** %3, align 8
  br label %9

20:                                               ; preds = %9
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 1
  %23 = load %struct.sock*, %struct.sock** %22, align 8
  %24 = bitcast %struct.sock* %23 to %struct.addr*
  store %struct.addr* %24, %struct.addr** %3, align 8
  br label %25

25:                                               ; preds = %28, %20
  %26 = load %struct.addr*, %struct.addr** %3, align 8
  %27 = icmp ne %struct.addr* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.addr*, %struct.addr** %3, align 8
  %30 = getelementptr inbounds %struct.addr, %struct.addr* %29, i32 0, i32 0
  %31 = load %struct.addr*, %struct.addr** %30, align 8
  store %struct.addr* %31, %struct.addr** %4, align 8
  %32 = load %struct.addr*, %struct.addr** %3, align 8
  %33 = bitcast %struct.addr* %32 to %struct.sock*
  %34 = call i32 @free(%struct.sock* %33)
  %35 = load %struct.addr*, %struct.addr** %4, align 8
  store %struct.addr* %35, %struct.addr** %3, align 8
  br label %25

36:                                               ; preds = %25
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = call i32 @free(%struct.sock* %37)
  ret void
}

declare dso_local i32 @free(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
