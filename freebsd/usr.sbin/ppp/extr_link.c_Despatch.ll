; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_Despatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_Despatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*)*, i32 }
%struct.bundle = type { i32 }
%struct.link = type { i32 }
%struct.mbuf = type { i32 }
%struct.physical = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@DSIZE = common dso_local global i32 0, align 4
@despatcher = common dso_local global %struct.TYPE_8__* null, align 8
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s protocol 0x%04x (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Unexpected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bundle*, %struct.link*, %struct.mbuf*, i32)* @Despatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Despatch(%struct.bundle* %0, %struct.link* %1, %struct.mbuf* %2, i32 %3) #0 {
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.link*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.physical*, align 8
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store %struct.link* %1, %struct.link** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %36, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @DSIZE, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @despatcher, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %15
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @despatcher, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*)*, %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*)** %29, align 8
  %31 = load %struct.bundle*, %struct.bundle** %5, align 8
  %32 = load %struct.link*, %struct.link** %6, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %34 = call %struct.mbuf* %30(%struct.bundle* %31, %struct.link* %32, %struct.mbuf* %33)
  store %struct.mbuf* %34, %struct.mbuf** %7, align 8
  br label %39

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %11

39:                                               ; preds = %24, %11
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = icmp ne %struct.mbuf* %40, null
  br i1 %41, label %42, label %85

42:                                               ; preds = %39
  %43 = load %struct.link*, %struct.link** %6, align 8
  %44 = call %struct.physical* @link2physical(%struct.link* %43)
  store %struct.physical* %44, %struct.physical** %10, align 8
  %45 = load i32, i32* @LogPHASE, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @DSIZE, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @hdlc_Protocol2Nam(i32 %52)
  %54 = call i32 @log_Printf(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %50, i32 %51, i32 %53)
  %55 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @proto_Prepend(%struct.mbuf* %55, i32 %56, i32 0, i32 0)
  %58 = call %struct.mbuf* @m_pullup(i32 %57)
  store %struct.mbuf* %58, %struct.mbuf** %7, align 8
  %59 = load %struct.link*, %struct.link** %6, align 8
  %60 = getelementptr inbounds %struct.link, %struct.link* %59, i32 0, i32 0
  %61 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %62 = call i32 @MBUF_CTOP(%struct.mbuf* %61)
  %63 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @lcp_SendProtoRej(i32* %60, i32 %62, i32 %65)
  %67 = load %struct.physical*, %struct.physical** %10, align 8
  %68 = icmp ne %struct.physical* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %42
  %70 = load %struct.physical*, %struct.physical** %10, align 8
  %71 = getelementptr inbounds %struct.physical, %struct.physical* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.physical*, %struct.physical** %10, align 8
  %77 = getelementptr inbounds %struct.physical, %struct.physical* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %69, %42
  %83 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %84 = call i32 @m_freem(%struct.mbuf* %83)
  br label %85

85:                                               ; preds = %82, %39
  ret void
}

declare dso_local %struct.physical* @link2physical(%struct.link*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @hdlc_Protocol2Nam(i32) #1

declare dso_local %struct.mbuf* @m_pullup(i32) #1

declare dso_local i32 @proto_Prepend(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @lcp_SendProtoRej(i32*, i32, i32) #1

declare dso_local i32 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
