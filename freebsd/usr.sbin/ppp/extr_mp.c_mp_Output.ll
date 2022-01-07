; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_Output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_Output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.bundle = type { i32 }
%struct.link = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.mbuf = type { i32 }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MP[frag %d]: Send %zd bytes on link `%s'\0A\00", align 1
@ST_OPENED = common dso_local global i64 0, align 8
@LogPHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: Not transmitting... waiting for CCP\0A\00", align 1
@PROTO_MP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp*, %struct.bundle*, %struct.link*, %struct.mbuf*, i32, i32)* @mp_Output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_Output(%struct.mp* %0, %struct.bundle* %1, %struct.link* %2, %struct.mbuf* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mp*, align 8
  %8 = alloca %struct.bundle*, align 8
  %9 = alloca %struct.link*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mp* %0, %struct.mp** %7, align 8
  store %struct.bundle* %1, %struct.bundle** %8, align 8
  store %struct.link* %2, %struct.link** %9, align 8
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.mp*, %struct.mp** %7, align 8
  %17 = getelementptr inbounds %struct.mp, %struct.mp* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %6
  %21 = load i32, i32* %11, align 4
  %22 = shl i32 %21, 15
  %23 = load i32, i32* %12, align 4
  %24 = shl i32 %23, 14
  %25 = or i32 %22, %24
  %26 = load %struct.mp*, %struct.mp** %7, align 8
  %27 = getelementptr inbounds %struct.mp, %struct.mp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = or i32 %25, %30
  store i32 %31, i32* %14, align 4
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %33 = call i32 @ua_htons(i32* %14, i8* %32)
  %34 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %36 = call %struct.mbuf* @m_prepend(%struct.mbuf* %34, i8* %35, i32 2, i32 0)
  store %struct.mbuf* %36, %struct.mbuf** %10, align 8
  br label %54

37:                                               ; preds = %6
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 %38, 31
  %40 = load i32, i32* %12, align 4
  %41 = shl i32 %40, 30
  %42 = or i32 %39, %41
  %43 = load %struct.mp*, %struct.mp** %7, align 8
  %44 = getelementptr inbounds %struct.mp, %struct.mp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = or i32 %42, %47
  store i32 %48, i32* %15, align 4
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %50 = call i32 @ua_htonl(i32* %15, i8* %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %53 = call %struct.mbuf* @m_prepend(%struct.mbuf* %51, i8* %52, i32 4, i32 0)
  store %struct.mbuf* %53, %struct.mbuf** %10, align 8
  br label %54

54:                                               ; preds = %37, %20
  %55 = load i32, i32* @LogDEBUG, align 4
  %56 = call i64 @log_IsKept(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i32, i32* @LogDEBUG, align 4
  %60 = load %struct.mp*, %struct.mp** %7, align 8
  %61 = getelementptr inbounds %struct.mp, %struct.mp* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %66 = call i32 @m_length(%struct.mbuf* %65)
  %67 = load %struct.link*, %struct.link** %9, align 8
  %68 = getelementptr inbounds %struct.link, %struct.link* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %58, %54
  %72 = load %struct.mp*, %struct.mp** %7, align 8
  %73 = getelementptr inbounds %struct.mp, %struct.mp* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.mp*, %struct.mp** %7, align 8
  %76 = getelementptr inbounds %struct.mp, %struct.mp* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @inc_seq(i64 %74, i64 %78)
  %80 = load %struct.mp*, %struct.mp** %7, align 8
  %81 = getelementptr inbounds %struct.mp, %struct.mp* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  %83 = load %struct.link*, %struct.link** %9, align 8
  %84 = getelementptr inbounds %struct.link, %struct.link* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ST_OPENED, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %71
  %91 = load %struct.link*, %struct.link** %9, align 8
  %92 = getelementptr inbounds %struct.link, %struct.link* %91, i32 0, i32 1
  %93 = call i64 @ccp_Required(%struct.TYPE_6__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @LogPHASE, align 4
  %97 = load %struct.link*, %struct.link** %9, align 8
  %98 = getelementptr inbounds %struct.link, %struct.link* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %110

101:                                              ; preds = %90, %71
  %102 = load %struct.link*, %struct.link** %9, align 8
  %103 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %104 = load %struct.bundle*, %struct.bundle** %8, align 8
  %105 = load %struct.link*, %struct.link** %9, align 8
  %106 = call i64 @LINK_QUEUES(%struct.link* %105)
  %107 = sub nsw i64 %106, 1
  %108 = load i32, i32* @PROTO_MP, align 4
  %109 = call i32 @link_PushPacket(%struct.link* %102, %struct.mbuf* %103, %struct.bundle* %104, i64 %107, i32 %108)
  br label %110

110:                                              ; preds = %101, %95
  ret void
}

declare dso_local i32 @ua_htons(i32*, i8*) #1

declare dso_local %struct.mbuf* @m_prepend(%struct.mbuf*, i8*, i32, i32) #1

declare dso_local i32 @ua_htonl(i32*, i8*) #1

declare dso_local i64 @log_IsKept(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @m_length(%struct.mbuf*) #1

declare dso_local i64 @inc_seq(i64, i64) #1

declare dso_local i64 @ccp_Required(%struct.TYPE_6__*) #1

declare dso_local i32 @link_PushPacket(%struct.link*, %struct.mbuf*, %struct.bundle*, i64, i32) #1

declare dso_local i64 @LINK_QUEUES(%struct.link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
