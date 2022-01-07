; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_inet.c_sotoxsocket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_inet.c_sotoxsocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.xsocket = type { i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.protosw = type { i32, i64, i32 }
%struct.domain = type { i32, i64, i32 }

@SO_ACCEPTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sotoxsocket(%struct.socket* %0, %struct.xsocket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.xsocket*, align 8
  %6 = alloca %struct.protosw, align 8
  %7 = alloca %struct.domain, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.xsocket* %1, %struct.xsocket** %5, align 8
  %8 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %9 = call i32 @bzero(%struct.xsocket* %8, i32 88)
  %10 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %11 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %10, i32 0, i32 0
  store i32 88, i32* %11, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = ptrtoint %struct.socket* %12 to i64
  %14 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %15 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.socket*, %struct.socket** %4, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 13
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %20 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %19, i32 0, i32 16
  store i32 %18, i32* %20, align 8
  %21 = load %struct.socket*, %struct.socket** %4, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %25 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %30 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %29, i32 0, i32 15
  store i32 %28, i32* %30, align 4
  %31 = load %struct.socket*, %struct.socket** %4, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %35 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %34, i32 0, i32 14
  store i32 %33, i32* %35, align 8
  %36 = load %struct.socket*, %struct.socket** %4, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %40 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.socket*, %struct.socket** %4, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @kread(i64 %43, %struct.protosw* %6, i32 24)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %112

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.protosw, %struct.protosw* %6, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %51 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %50, i32 0, i32 13
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.protosw, %struct.protosw* %6, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = bitcast %struct.domain* %7 to %struct.protosw*
  %55 = call i64 @kread(i64 %53, %struct.protosw* %54, i32 24)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %112

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.domain, %struct.domain* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %62 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %61, i32 0, i32 12
  store i32 %60, i32* %62, align 8
  %63 = load %struct.socket*, %struct.socket** %4, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %67 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 4
  %68 = load %struct.socket*, %struct.socket** %4, align 8
  %69 = getelementptr inbounds %struct.socket, %struct.socket* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %72 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 8
  %73 = load %struct.socket*, %struct.socket** %4, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SO_ACCEPTCONN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %58
  %80 = load %struct.socket*, %struct.socket** %4, align 8
  %81 = getelementptr inbounds %struct.socket, %struct.socket* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %84 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  %85 = load %struct.socket*, %struct.socket** %4, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %89 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 8
  %90 = load %struct.socket*, %struct.socket** %4, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %94 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  br label %111

95:                                               ; preds = %58
  %96 = load %struct.socket*, %struct.socket** %4, align 8
  %97 = getelementptr inbounds %struct.socket, %struct.socket* %96, i32 0, i32 3
  %98 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %99 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %98, i32 0, i32 6
  %100 = call i32 @sbtoxsockbuf(i32* %97, i32* %99)
  %101 = load %struct.socket*, %struct.socket** %4, align 8
  %102 = getelementptr inbounds %struct.socket, %struct.socket* %101, i32 0, i32 2
  %103 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %104 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %103, i32 0, i32 5
  %105 = call i32 @sbtoxsockbuf(i32* %102, i32* %104)
  %106 = load %struct.socket*, %struct.socket** %4, align 8
  %107 = getelementptr inbounds %struct.socket, %struct.socket* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.xsocket*, %struct.xsocket** %5, align 8
  %110 = getelementptr inbounds %struct.xsocket, %struct.xsocket* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %95, %79
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %57, %46
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @bzero(%struct.xsocket*, i32) #1

declare dso_local i64 @kread(i64, %struct.protosw*, i32) #1

declare dso_local i32 @sbtoxsockbuf(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
