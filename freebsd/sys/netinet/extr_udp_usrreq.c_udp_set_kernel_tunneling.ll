; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_udp_usrreq.c_udp_set_kernel_tunneling.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_udp_usrreq.c_udp_set_kernel_tunneling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }
%struct.inpcb = type { i32 }
%struct.udpcb = type { i8*, i32*, i32* }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"udp_set_kernel_tunneling: !dgram\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"udp_set_kernel_tunneling: inp == NULL\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_set_kernel_tunneling(%struct.socket* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inpcb*, align 8
  %11 = alloca %struct.udpcb*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOCK_DGRAM, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = call %struct.inpcb* @sotoinpcb(%struct.socket* %19)
  store %struct.inpcb* %20, %struct.inpcb** %10, align 8
  %21 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %22 = icmp ne %struct.inpcb* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %26 = call i32 @INP_WLOCK(%struct.inpcb* %25)
  %27 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %28 = call %struct.udpcb* @intoudpcb(%struct.inpcb* %27)
  store %struct.udpcb* %28, %struct.udpcb** %11, align 8
  %29 = load %struct.udpcb*, %struct.udpcb** %11, align 8
  %30 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %4
  %34 = load %struct.udpcb*, %struct.udpcb** %11, align 8
  %35 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %4
  %39 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %40 = call i32 @INP_WUNLOCK(%struct.inpcb* %39)
  %41 = load i32, i32* @EBUSY, align 4
  store i32 %41, i32* %5, align 4
  br label %54

42:                                               ; preds = %33
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.udpcb*, %struct.udpcb** %11, align 8
  %45 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.udpcb*, %struct.udpcb** %11, align 8
  %48 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.udpcb*, %struct.udpcb** %11, align 8
  %51 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %53 = call i32 @INP_WUNLOCK(%struct.inpcb* %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %42, %38
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local %struct.udpcb* @intoudpcb(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
