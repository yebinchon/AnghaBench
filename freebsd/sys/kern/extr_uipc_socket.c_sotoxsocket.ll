; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sotoxsocket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_sotoxsocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i64, i32, i64, i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__*, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xsocket = type { i32, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sotoxsocket(%struct.socket* %0, %struct.xsocket* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.xsocket*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.xsocket* %1, %struct.xsocket** %4, align 8
  %5 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %6 = call i32 @bzero(%struct.xsocket* %5, i32 104)
  %7 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %8 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %7, i32 0, i32 0
  store i32 104, i32* %8, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = ptrtoint %struct.socket* %9 to i64
  %11 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %12 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 16
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %17 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %16, i32 0, i32 18
  store i32 %15, i32* %17, align 4
  %18 = load %struct.socket*, %struct.socket** %3, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %22 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %21, i32 0, i32 17
  store i32 %20, i32* %22, align 8
  %23 = load %struct.socket*, %struct.socket** %3, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 14
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %27 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %26, i32 0, i32 16
  store i32 %25, i32* %27, align 4
  %28 = load %struct.socket*, %struct.socket** %3, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %32 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load %struct.socket*, %struct.socket** %3, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 12
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %37 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.socket*, %struct.socket** %3, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 11
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %44 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %43, i32 0, i32 15
  store i32 %42, i32* %44, align 8
  %45 = load %struct.socket*, %struct.socket** %3, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 11
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %53 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %52, i32 0, i32 14
  store i32 %51, i32* %53, align 4
  %54 = load %struct.socket*, %struct.socket** %3, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %58 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 8
  %59 = load %struct.socket*, %struct.socket** %3, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %63 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %62, i32 0, i32 12
  store i32 %61, i32* %63, align 4
  %64 = load %struct.socket*, %struct.socket** %3, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %70 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %69, i32 0, i32 11
  store i32 %68, i32* %70, align 8
  %71 = load %struct.socket*, %struct.socket** %3, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 7
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = icmp ne %struct.TYPE_8__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %2
  %76 = load %struct.socket*, %struct.socket** %3, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 7
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  br label %82

81:                                               ; preds = %2
  br label %82

82:                                               ; preds = %81, %75
  %83 = phi i32 [ %80, %75 ], [ 0, %81 ]
  %84 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %85 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %84, i32 0, i32 10
  store i32 %83, i32* %85, align 4
  %86 = load %struct.socket*, %struct.socket** %3, align 8
  %87 = call i64 @SOLISTENING(%struct.socket* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %82
  %90 = load %struct.socket*, %struct.socket** %3, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %94 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %93, i32 0, i32 8
  store i64 %92, i64* %94, align 8
  %95 = load %struct.socket*, %struct.socket** %3, align 8
  %96 = getelementptr inbounds %struct.socket, %struct.socket* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %99 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %98, i32 0, i32 7
  store i64 %97, i64* %99, align 8
  %100 = load %struct.socket*, %struct.socket** %3, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %104 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %103, i32 0, i32 6
  store i64 %102, i64* %104, align 8
  %105 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %106 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  br label %136

107:                                              ; preds = %82
  %108 = load %struct.socket*, %struct.socket** %3, align 8
  %109 = getelementptr inbounds %struct.socket, %struct.socket* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %112 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %116 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %115, i32 0, i32 6
  store i64 0, i64* %116, align 8
  %117 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %118 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %117, i32 0, i32 7
  store i64 0, i64* %118, align 8
  %119 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %120 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %119, i32 0, i32 8
  store i64 0, i64* %120, align 8
  %121 = load %struct.socket*, %struct.socket** %3, align 8
  %122 = getelementptr inbounds %struct.socket, %struct.socket* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %125 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %124, i32 0, i32 5
  store i64 %123, i64* %125, align 8
  %126 = load %struct.socket*, %struct.socket** %3, align 8
  %127 = getelementptr inbounds %struct.socket, %struct.socket* %126, i32 0, i32 1
  %128 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %129 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %128, i32 0, i32 4
  %130 = call i32 @sbtoxsockbuf(i32* %127, i32* %129)
  %131 = load %struct.socket*, %struct.socket** %3, align 8
  %132 = getelementptr inbounds %struct.socket, %struct.socket* %131, i32 0, i32 0
  %133 = load %struct.xsocket*, %struct.xsocket** %4, align 8
  %134 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %133, i32 0, i32 3
  %135 = call i32 @sbtoxsockbuf(i32* %132, i32* %134)
  br label %136

136:                                              ; preds = %107, %89
  ret void
}

declare dso_local i32 @bzero(%struct.xsocket*, i32) #1

declare dso_local i64 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @sbtoxsockbuf(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
