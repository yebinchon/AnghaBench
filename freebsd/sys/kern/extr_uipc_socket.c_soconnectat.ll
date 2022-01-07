; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soconnectat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soconnectat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, %struct.sockaddr*, %struct.thread*)*, {}* }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }

@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SS_ISCONNECTING = common dso_local global i32 0, align 4
@PR_CONNREQUIRED = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soconnectat(i32 %0, %struct.socket* %1, %struct.sockaddr* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = load %struct.socket*, %struct.socket** %7, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SO_ACCEPTCONN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %18, i32* %5, align 4
  br label %83

19:                                               ; preds = %4
  %20 = load %struct.socket*, %struct.socket** %7, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @CURVNET_SET(i32 %22)
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SS_ISCONNECTED, align 4
  %28 = load i32, i32* @SS_ISCONNECTING, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %19
  %33 = load %struct.socket*, %struct.socket** %7, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PR_CONNREQUIRED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load %struct.socket*, %struct.socket** %7, align 8
  %43 = call i32 @sodisconnect(%struct.socket* %42)
  store i32 %43, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %32
  %46 = load i32, i32* @EISCONN, align 4
  store i32 %46, i32* %10, align 4
  br label %80

47:                                               ; preds = %41, %19
  %48 = load %struct.socket*, %struct.socket** %7, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @AT_FDCWD, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load %struct.socket*, %struct.socket** %7, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.socket*, %struct.sockaddr*, %struct.thread*)*, i32 (%struct.socket*, %struct.sockaddr*, %struct.thread*)** %59, align 8
  %61 = load %struct.socket*, %struct.socket** %7, align 8
  %62 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %63 = load %struct.thread*, %struct.thread** %9, align 8
  %64 = call i32 %60(%struct.socket* %61, %struct.sockaddr* %62, %struct.thread* %63)
  store i32 %64, i32* %10, align 4
  br label %79

65:                                               ; preds = %47
  %66 = load %struct.socket*, %struct.socket** %7, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = bitcast {}** %71 to i32 (i32, %struct.socket*, %struct.sockaddr*, %struct.thread*)**
  %73 = load i32 (i32, %struct.socket*, %struct.sockaddr*, %struct.thread*)*, i32 (i32, %struct.socket*, %struct.sockaddr*, %struct.thread*)** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.socket*, %struct.socket** %7, align 8
  %76 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %77 = load %struct.thread*, %struct.thread** %9, align 8
  %78 = call i32 %73(i32 %74, %struct.socket* %75, %struct.sockaddr* %76, %struct.thread* %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %65, %53
  br label %80

80:                                               ; preds = %79, %45
  %81 = call i32 (...) @CURVNET_RESTORE()
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %17
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @sodisconnect(%struct.socket*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
