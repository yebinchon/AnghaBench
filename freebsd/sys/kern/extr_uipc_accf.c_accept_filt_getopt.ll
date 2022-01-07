; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_accf.c_accept_filt_getopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_accf.c_accept_filt_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.sockopt = type { i32 }
%struct.accept_filter_arg = type { i32, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @accept_filt_getopt(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockopt*, align 8
  %5 = alloca %struct.accept_filter_arg*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockopt* %1, %struct.sockopt** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @M_TEMP, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.accept_filter_arg* @malloc(i32 8, i32 %7, i32 %10)
  store %struct.accept_filter_arg* %11, %struct.accept_filter_arg** %5, align 8
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = call i32 @SOCK_LOCK(%struct.socket* %12)
  %14 = load %struct.socket*, %struct.socket** %3, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SO_ACCEPTCONN, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %6, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.socket*, %struct.socket** %3, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp eq %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %6, align 4
  br label %52

29:                                               ; preds = %22
  %30 = load %struct.accept_filter_arg*, %struct.accept_filter_arg** %5, align 8
  %31 = getelementptr inbounds %struct.accept_filter_arg, %struct.accept_filter_arg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.socket*, %struct.socket** %3, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @strcpy(i32 %32, i32* %37)
  %39 = load %struct.socket*, %struct.socket** %3, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %29
  %44 = load %struct.accept_filter_arg*, %struct.accept_filter_arg** %5, align 8
  %45 = getelementptr inbounds %struct.accept_filter_arg, %struct.accept_filter_arg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.socket*, %struct.socket** %3, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @strcpy(i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %43, %29
  br label %52

52:                                               ; preds = %51, %27, %20
  %53 = load %struct.socket*, %struct.socket** %3, align 8
  %54 = call i32 @SOCK_UNLOCK(%struct.socket* %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %59 = load %struct.accept_filter_arg*, %struct.accept_filter_arg** %5, align 8
  %60 = call i32 @sooptcopyout(%struct.sockopt* %58, %struct.accept_filter_arg* %59, i32 8)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.accept_filter_arg*, %struct.accept_filter_arg** %5, align 8
  %63 = load i32, i32* @M_TEMP, align 4
  %64 = call i32 @free(%struct.accept_filter_arg* %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.accept_filter_arg* @malloc(i32, i32, i32) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @strcpy(i32, i32*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, %struct.accept_filter_arg*, i32) #1

declare dso_local i32 @free(%struct.accept_filter_arg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
