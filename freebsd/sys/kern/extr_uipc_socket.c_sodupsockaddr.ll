; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sodupsockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sodupsockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@M_SONAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sockaddr* @sodupsockaddr(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %7 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @M_SONAME, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.sockaddr* @malloc(i32 %8, i32 %9, i32 %10)
  store %struct.sockaddr* %11, %struct.sockaddr** %5, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = icmp ne %struct.sockaddr* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bcopy(%struct.sockaddr* %15, %struct.sockaddr* %16, i32 %19)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  ret %struct.sockaddr* %22
}

declare dso_local %struct.sockaddr* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
