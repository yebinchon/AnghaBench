; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_keysock.c_key_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_keysock.c_key_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.socket = type { i32, i32* }
%struct.thread = type { i32 }
%struct.keycb = type { %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"key_attach: so_pcb != NULL\00", align 1
@PRIV_NET_RAW = common dso_local global i32 0, align 4
@M_PCB = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@PF_KEY = common dso_local global i64 0, align 8
@V_key_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SO_USELOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.thread*)* @key_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.keycb*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.thread*, %struct.thread** %7, align 8
  %17 = icmp ne %struct.thread* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.thread*, %struct.thread** %7, align 8
  %20 = load i32, i32* @PRIV_NET_RAW, align 4
  %21 = call i32 @priv_check(%struct.thread* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %83

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* @M_PCB, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.keycb* @malloc(i32 24, i32 %28, i32 %31)
  store %struct.keycb* %32, %struct.keycb** %8, align 8
  %33 = load %struct.keycb*, %struct.keycb** %8, align 8
  %34 = icmp eq %struct.keycb* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOBUFS, align 4
  store i32 %36, i32* %4, align 4
  br label %83

37:                                               ; preds = %27
  %38 = load %struct.keycb*, %struct.keycb** %8, align 8
  %39 = bitcast %struct.keycb* %38 to i8*
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.socket*, %struct.socket** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @raw_attach(%struct.socket* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.socket*, %struct.socket** %5, align 8
  %47 = call i64 @sotorawcb(%struct.socket* %46)
  %48 = inttoptr i64 %47 to %struct.keycb*
  store %struct.keycb* %48, %struct.keycb** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load %struct.keycb*, %struct.keycb** %8, align 8
  %53 = load i32, i32* @M_PCB, align 4
  %54 = call i32 @free(%struct.keycb* %52, i32 %53)
  %55 = load %struct.socket*, %struct.socket** %5, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %83

58:                                               ; preds = %37
  %59 = load %struct.keycb*, %struct.keycb** %8, align 8
  %60 = getelementptr inbounds %struct.keycb, %struct.keycb* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.keycb*, %struct.keycb** %8, align 8
  %62 = getelementptr inbounds %struct.keycb, %struct.keycb* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.keycb*, %struct.keycb** %8, align 8
  %64 = getelementptr inbounds %struct.keycb, %struct.keycb* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PF_KEY, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_key_cb, i32 0, i32 1), align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_key_cb, i32 0, i32 1), align 4
  br label %73

73:                                               ; preds = %70, %58
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_key_cb, i32 0, i32 0), align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_key_cb, i32 0, i32 0), align 4
  %76 = load %struct.socket*, %struct.socket** %5, align 8
  %77 = call i32 @soisconnected(%struct.socket* %76)
  %78 = load i32, i32* @SO_USELOOPBACK, align 4
  %79 = load %struct.socket*, %struct.socket** %5, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %73, %51, %35, %24
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local %struct.keycb* @malloc(i32, i32, i32) #1

declare dso_local i32 @raw_attach(%struct.socket*, i32) #1

declare dso_local i64 @sotorawcb(%struct.socket*) #1

declare dso_local i32 @free(%struct.keycb*, i32) #1

declare dso_local i32 @soisconnected(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
