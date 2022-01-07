; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_generic.c___rpc_sockisbound.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_generic.c___rpc_sockisbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, %struct.sockaddr**)* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_un = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_sockisbound(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @CURVNET_SET(i32 %9)
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %16, align 8
  %18 = load %struct.socket*, %struct.socket** %3, align 8
  %19 = call i32 %17(%struct.socket* %18, %struct.sockaddr** %4)
  store i32 %19, i32* %5, align 4
  %20 = call i32 (...) @CURVNET_RESTORE()
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

24:                                               ; preds = %1
  %25 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %45 [
    i32 130, label %28
    i32 128, label %35
  ]

28:                                               ; preds = %24
  %29 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %30 = bitcast %struct.sockaddr* %29 to %struct.sockaddr_in*
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  br label %47

35:                                               ; preds = %24
  %36 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %37 = bitcast %struct.sockaddr* %36 to %struct.sockaddr_un*
  %38 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %47

45:                                               ; preds = %24
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %35, %28
  %48 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %49 = load i32, i32* @M_SONAME, align 4
  %50 = call i32 @free(%struct.sockaddr* %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %23
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
