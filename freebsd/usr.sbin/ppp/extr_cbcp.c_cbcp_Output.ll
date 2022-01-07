; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_Output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_Output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbcp = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cbcp_data = type { i64 }
%struct.cbcp_header = type { i32, i32, i32 }
%struct.mbuf = type { i32 }

@MB_CBCPOUT = common dso_local global i32 0, align 4
@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cbcp_Output\00", align 1
@PROTO_CBCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbcp*, i32, %struct.cbcp_data*)* @cbcp_Output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbcp_Output(%struct.cbcp* %0, i32 %1, %struct.cbcp_data* %2) #0 {
  %4 = alloca %struct.cbcp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cbcp_data*, align 8
  %7 = alloca %struct.cbcp_header*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.cbcp* %0, %struct.cbcp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cbcp_data* %2, %struct.cbcp_data** %6, align 8
  %9 = load %struct.cbcp_data*, %struct.cbcp_data** %6, align 8
  %10 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 12, %11
  %13 = load i32, i32* @MB_CBCPOUT, align 4
  %14 = call %struct.mbuf* @m_get(i64 %12, i32 %13)
  store %struct.mbuf* %14, %struct.mbuf** %8, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %16 = call i64 @MBUF_CTOP(%struct.mbuf* %15)
  %17 = inttoptr i64 %16 to %struct.cbcp_header*
  store %struct.cbcp_header* %17, %struct.cbcp_header** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.cbcp_header*, %struct.cbcp_header** %7, align 8
  %20 = getelementptr inbounds %struct.cbcp_header, %struct.cbcp_header* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.cbcp*, %struct.cbcp** %4, align 8
  %22 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cbcp_header*, %struct.cbcp_header** %7, align 8
  %26 = getelementptr inbounds %struct.cbcp_header, %struct.cbcp_header* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cbcp_data*, %struct.cbcp_data** %6, align 8
  %28 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 12, %29
  %31 = call i32 @htons(i64 %30)
  %32 = load %struct.cbcp_header*, %struct.cbcp_header** %7, align 8
  %33 = getelementptr inbounds %struct.cbcp_header, %struct.cbcp_header* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %35 = call i64 @MBUF_CTOP(%struct.mbuf* %34)
  %36 = add i64 %35, 12
  %37 = load %struct.cbcp_data*, %struct.cbcp_data** %6, align 8
  %38 = load %struct.cbcp_data*, %struct.cbcp_data** %6, align 8
  %39 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @memcpy(i64 %36, %struct.cbcp_data* %37, i64 %40)
  %42 = load i32, i32* @LogDEBUG, align 4
  %43 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %44 = call i32 @log_DumpBp(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %43)
  %45 = load %struct.cbcp*, %struct.cbcp** %4, align 8
  %46 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %50 = load %struct.cbcp*, %struct.cbcp** %4, align 8
  %51 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cbcp*, %struct.cbcp** %4, align 8
  %58 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i64 @LINK_QUEUES(i32* %60)
  %62 = sub nsw i64 %61, 1
  %63 = load i32, i32* @PROTO_CBCP, align 4
  %64 = call i32 @link_PushPacket(i32* %48, %struct.mbuf* %49, i32 %56, i64 %62, i32 %63)
  ret void
}

declare dso_local %struct.mbuf* @m_get(i64, i32) #1

declare dso_local i64 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @memcpy(i64, %struct.cbcp_data*, i64) #1

declare dso_local i32 @log_DumpBp(i32, i8*, %struct.mbuf*) #1

declare dso_local i32 @link_PushPacket(i32*, %struct.mbuf*, i32, i64, i32) #1

declare dso_local i64 @LINK_QUEUES(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
