; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sowakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sowakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32*, %struct.sockbuf }
%struct.sockbuf = type { i32, i32 (%struct.socket.0*, i32, i32)*, i32, %struct.TYPE_3__*, i32 }
%struct.socket.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@PSOCK = common dso_local global i32 0, align 4
@SB_SEL = common dso_local global i32 0, align 4
@SB_WAIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@SU_ISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SO_SND upcall returned SU_ISCONNECTED\00", align 1
@SO_RCV = common dso_local global i32 0, align 4
@SU_OK = common dso_local global i32 0, align 4
@SB_AIO = common dso_local global i32 0, align 4
@SS_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sowakeup(%struct.socket* %0, %struct.sockbuf* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockbuf* %1, %struct.sockbuf** %4, align 8
  %6 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %7 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf* %6)
  %8 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %9 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load i32, i32* @PSOCK, align 4
  %12 = call i32 @selwakeuppri(%struct.TYPE_3__* %10, i32 %11)
  %13 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %14 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @SEL_WAITING(%struct.TYPE_3__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @SB_SEL, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %22 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %27 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SB_WAIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load i32, i32* @SB_WAIT, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %36 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %40 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %39, i32 0, i32 4
  %41 = call i32 @wakeup(i32* %40)
  br label %42

42:                                               ; preds = %32, %25
  %43 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %44 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @KNOTE_LOCKED(i32* %46, i32 0)
  %48 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %49 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %48, i32 0, i32 1
  %50 = load i32 (%struct.socket.0*, i32, i32)*, i32 (%struct.socket.0*, i32, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.socket.0*, i32, i32)* %50, null
  br i1 %51, label %52, label %77

52:                                               ; preds = %42
  %53 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %54 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %53, i32 0, i32 1
  %55 = load i32 (%struct.socket.0*, i32, i32)*, i32 (%struct.socket.0*, i32, i32)** %54, align 8
  %56 = load %struct.socket*, %struct.socket** %3, align 8
  %57 = bitcast %struct.socket* %56 to %struct.socket.0*
  %58 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %59 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @M_NOWAIT, align 4
  %62 = call i32 %55(%struct.socket.0* %57, i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SU_ISCONNECTED, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %52
  %67 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %68 = load %struct.socket*, %struct.socket** %3, align 8
  %69 = getelementptr inbounds %struct.socket, %struct.socket* %68, i32 0, i32 2
  %70 = icmp eq %struct.sockbuf* %67, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @KASSERT(i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.socket*, %struct.socket** %3, align 8
  %74 = load i32, i32* @SO_RCV, align 4
  %75 = call i32 @soupcall_clear(%struct.socket* %73, i32 %74)
  br label %76

76:                                               ; preds = %66, %52
  br label %79

77:                                               ; preds = %42
  %78 = load i32, i32* @SU_OK, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %81 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SB_AIO, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.socket*, %struct.socket** %3, align 8
  %88 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %89 = call i32 @sowakeup_aio(%struct.socket* %87, %struct.sockbuf* %88)
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %92 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @SU_ISCONNECTED, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.socket*, %struct.socket** %3, align 8
  %98 = call i32 @soisconnected(%struct.socket* %97)
  br label %99

99:                                               ; preds = %96, %90
  %100 = load %struct.socket*, %struct.socket** %3, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SS_ASYNC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load %struct.socket*, %struct.socket** %3, align 8
  %108 = getelementptr inbounds %struct.socket, %struct.socket* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.socket*, %struct.socket** %3, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 1
  %114 = load i32, i32* @SIGIO, align 4
  %115 = call i32 @pgsigio(i32** %113, i32 %114, i32 0)
  br label %116

116:                                              ; preds = %111, %106, %99
  %117 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %118 = call i32 @SOCKBUF_MTX(%struct.sockbuf* %117)
  %119 = load i32, i32* @MA_NOTOWNED, align 4
  %120 = call i32 @mtx_assert(i32 %118, i32 %119)
  ret void
}

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf*) #1

declare dso_local i32 @selwakeuppri(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @SEL_WAITING(%struct.TYPE_3__*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @soupcall_clear(%struct.socket*, i32) #1

declare dso_local i32 @sowakeup_aio(%struct.socket*, %struct.sockbuf*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.sockbuf*) #1

declare dso_local i32 @soisconnected(%struct.socket*) #1

declare dso_local i32 @pgsigio(i32**, i32, i32) #1

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local i32 @SOCKBUF_MTX(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
