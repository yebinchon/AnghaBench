; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }
%struct.thread = type { i32 }
%struct.unpcb = type { i32, i32*, i32* }

@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"uipc_listen: unp == NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.thread*)* @uipc_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_listen(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.unpcb*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOCK_STREAM, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SOCK_SEQPACKET, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %22, i32* %4, align 4
  br label %71

23:                                               ; preds = %15, %3
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = call %struct.unpcb* @sotounpcb(%struct.socket* %24)
  store %struct.unpcb* %25, %struct.unpcb** %8, align 8
  %26 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %27 = icmp ne %struct.unpcb* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %31 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %30)
  %32 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %33 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %23
  %37 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %38 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @EDESTADDRREQ, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %9, align 4
  %47 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %48 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %71

50:                                               ; preds = %23
  %51 = load %struct.socket*, %struct.socket** %5, align 8
  %52 = call i32 @SOCK_LOCK(%struct.socket* %51)
  %53 = load %struct.socket*, %struct.socket** %5, align 8
  %54 = call i32 @solisten_proto_check(%struct.socket* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.thread*, %struct.thread** %7, align 8
  %59 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %60 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %59, i32 0, i32 0
  %61 = call i32 @cru2xt(%struct.thread* %58, i32* %60)
  %62 = load %struct.socket*, %struct.socket** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @solisten_proto(%struct.socket* %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %50
  %66 = load %struct.socket*, %struct.socket** %5, align 8
  %67 = call i32 @SOCK_UNLOCK(%struct.socket* %66)
  %68 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %69 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %65, %45, %21
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

declare dso_local i32 @UNP_PCB_UNLOCK(%struct.unpcb*) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @solisten_proto_check(%struct.socket*) #1

declare dso_local i32 @cru2xt(%struct.thread*, i32*) #1

declare dso_local i32 @solisten_proto(%struct.socket*, i32) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
