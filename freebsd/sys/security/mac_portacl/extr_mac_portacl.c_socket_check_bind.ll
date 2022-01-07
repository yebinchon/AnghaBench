; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_portacl/extr_mac_portacl.c_socket_check_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_portacl/extr_mac_portacl.c_socket_check_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.socket = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.label = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.inpcb = type { i32 }

@portacl_enabled = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@portacl_autoport_exempt = common dso_local global i64 0, align 8
@INP_LOWPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.socket*, %struct.label*, %struct.sockaddr*)* @socket_check_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_check_bind(%struct.ucred* %0, %struct.socket* %1, %struct.label* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.inpcb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.label* %2, %struct.label** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  %15 = load i64, i64* @portacl_enabled, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %105

18:                                               ; preds = %4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PF_INET, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PF_INET6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %105

39:                                               ; preds = %28, %18
  %40 = load %struct.socket*, %struct.socket** %7, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SOCK_DGRAM, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.socket*, %struct.socket** %7, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SOCK_STREAM, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %105

52:                                               ; preds = %45, %39
  %53 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AF_INET, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %60 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AF_INET6, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %5, align 4
  br label %105

66:                                               ; preds = %58, %52
  %67 = load %struct.socket*, %struct.socket** %7, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %12, align 4
  %74 = load %struct.socket*, %struct.socket** %7, align 8
  %75 = getelementptr inbounds %struct.socket, %struct.socket* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %13, align 4
  %77 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %78 = bitcast %struct.sockaddr* %77 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %78, %struct.sockaddr_in** %10, align 8
  %79 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ntohs(i32 %81)
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* @portacl_autoport_exempt, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %66
  %86 = load i64, i64* %14, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load %struct.socket*, %struct.socket** %7, align 8
  %90 = call %struct.inpcb* @sotoinpcb(%struct.socket* %89)
  store %struct.inpcb* %90, %struct.inpcb** %11, align 8
  %91 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  %92 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @INP_LOWPORT, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %105

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %85, %66
  %100 = load %struct.ucred*, %struct.ucred** %6, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @rules_check(%struct.ucred* %100, i32 %101, i32 %102, i64 %103)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %99, %97, %64, %51, %38, %17
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @rules_check(%struct.ucred*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
