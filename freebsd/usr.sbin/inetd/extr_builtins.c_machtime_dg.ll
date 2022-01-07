; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_builtins.c_machtime_dg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_builtins.c_machtime_dg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servtab = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.servtab*)* @machtime_dg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @machtime_dg(i32 %0, %struct.servtab* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.servtab*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.servtab* %1, %struct.servtab** %4, align 8
  store i32 4, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = bitcast i64* %5 to i8*
  %10 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %11 = call i64 @recvfrom(i32 %8, i8* %9, i32 8, i32 0, %struct.sockaddr* %10, i32* %7)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %27

14:                                               ; preds = %2
  %15 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %16 = load %struct.servtab*, %struct.servtab** %4, align 8
  %17 = call i64 @check_loop(%struct.sockaddr* %15, %struct.servtab* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %27

20:                                               ; preds = %14
  %21 = call i64 (...) @machtime()
  store i64 %21, i64* %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = bitcast i64* %5 to i8*
  %24 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @sendto(i32 %22, i8* %23, i32 8, i32 0, %struct.sockaddr* %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %19, %13
  ret void
}

declare dso_local i64 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @check_loop(%struct.sockaddr*, %struct.servtab*) #1

declare dso_local i64 @machtime(...) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
