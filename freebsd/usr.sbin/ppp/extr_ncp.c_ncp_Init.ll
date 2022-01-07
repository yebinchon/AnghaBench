; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp = type { i32, i32, i32, %struct.TYPE_10__, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32*, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.bundle = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@NDEFTCPPORTS = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ncp_Init: Out of memory allocating urgent ports\0A\00", align 1
@default_urgent_tcp_ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncp_Init(%struct.ncp* %0, %struct.bundle* %1) #0 {
  %3 = alloca %struct.ncp*, align 8
  %4 = alloca %struct.bundle*, align 8
  store %struct.ncp* %0, %struct.ncp** %3, align 8
  store %struct.bundle* %1, %struct.bundle** %4, align 8
  %5 = load i32, i32* @AF_INET, align 4
  %6 = load %struct.ncp*, %struct.ncp** %3, align 8
  %7 = getelementptr inbounds %struct.ncp, %struct.ncp* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 8
  %8 = load %struct.ncp*, %struct.ncp** %3, align 8
  %9 = getelementptr inbounds %struct.ncp, %struct.ncp* %8, i32 0, i32 4
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* @NDEFTCPPORTS, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i64 @malloc(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  %16 = load %struct.ncp*, %struct.ncp** %3, align 8
  %17 = getelementptr inbounds %struct.ncp, %struct.ncp* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32* %15, i32** %20, align 8
  %21 = load %struct.ncp*, %struct.ncp** %3, align 8
  %22 = getelementptr inbounds %struct.ncp, %struct.ncp* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load i32, i32* @LogERROR, align 4
  %30 = call i32 @log_Printf(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ncp*, %struct.ncp** %3, align 8
  %32 = getelementptr inbounds %struct.ncp, %struct.ncp* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.ncp*, %struct.ncp** %3, align 8
  %37 = getelementptr inbounds %struct.ncp, %struct.ncp* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %65

41:                                               ; preds = %2
  %42 = load i32, i32* @NDEFTCPPORTS, align 4
  %43 = load %struct.ncp*, %struct.ncp** %3, align 8
  %44 = getelementptr inbounds %struct.ncp, %struct.ncp* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %42, i32* %47, align 4
  %48 = load %struct.ncp*, %struct.ncp** %3, align 8
  %49 = getelementptr inbounds %struct.ncp, %struct.ncp* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %42, i32* %52, align 8
  %53 = load %struct.ncp*, %struct.ncp** %3, align 8
  %54 = getelementptr inbounds %struct.ncp, %struct.ncp* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @default_urgent_tcp_ports, align 4
  %60 = load i32, i32* @NDEFTCPPORTS, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i32* %58, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %41, %28
  %66 = load %struct.ncp*, %struct.ncp** %3, align 8
  %67 = getelementptr inbounds %struct.ncp, %struct.ncp* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.ncp*, %struct.ncp** %3, align 8
  %71 = getelementptr inbounds %struct.ncp, %struct.ncp* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.ncp*, %struct.ncp** %3, align 8
  %76 = getelementptr inbounds %struct.ncp, %struct.ncp* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.ncp*, %struct.ncp** %3, align 8
  %81 = getelementptr inbounds %struct.ncp, %struct.ncp* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  %85 = load %struct.ncp*, %struct.ncp** %3, align 8
  %86 = getelementptr inbounds %struct.ncp, %struct.ncp* %85, i32 0, i32 2
  %87 = load %struct.bundle*, %struct.bundle** %4, align 8
  %88 = call i32 @mp_Init(i32* %86, %struct.bundle* %87)
  %89 = load %struct.ncp*, %struct.ncp** %3, align 8
  %90 = getelementptr inbounds %struct.ncp, %struct.ncp* %89, i32 0, i32 1
  %91 = load %struct.bundle*, %struct.bundle** %4, align 8
  %92 = load %struct.bundle*, %struct.bundle** %4, align 8
  %93 = getelementptr inbounds %struct.bundle, %struct.bundle* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.bundle*, %struct.bundle** %4, align 8
  %99 = getelementptr inbounds %struct.bundle, %struct.bundle* %98, i32 0, i32 0
  %100 = call i32 @ipcp_Init(i32* %90, %struct.bundle* %91, i32* %97, i32* %99)
  %101 = load %struct.ncp*, %struct.ncp** %3, align 8
  %102 = getelementptr inbounds %struct.ncp, %struct.ncp* %101, i32 0, i32 0
  %103 = load %struct.bundle*, %struct.bundle** %4, align 8
  %104 = load %struct.bundle*, %struct.bundle** %4, align 8
  %105 = getelementptr inbounds %struct.bundle, %struct.bundle* %104, i32 0, i32 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.bundle*, %struct.bundle** %4, align 8
  %111 = getelementptr inbounds %struct.bundle, %struct.bundle* %110, i32 0, i32 0
  %112 = call i32 @ipv6cp_Init(i32* %102, %struct.bundle* %103, i32* %109, i32* %111)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mp_Init(i32*, %struct.bundle*) #1

declare dso_local i32 @ipcp_Init(i32*, %struct.bundle*, i32*, i32*) #1

declare dso_local i32 @ipv6cp_Init(i32*, %struct.bundle*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
