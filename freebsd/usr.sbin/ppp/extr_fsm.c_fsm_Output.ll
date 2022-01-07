; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.fsm*, %struct.fsmheader*, %struct.fsmheader*, i32, i32*)* }
%struct.fsmheader = type { i32, i32, i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s: Send%s(%d) state = %s\0A\00", align 1
@MODE_NOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"  [EMPTY]\0A\00", align 1
@LogDEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"fsm_Output\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsm_Output(%struct.fsm* %0, i32 %1, i32 %2, %struct.fsmheader* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fsm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsmheader*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fsmheader, align 4
  %15 = alloca %struct.mbuf*, align 8
  store %struct.fsm* %0, %struct.fsm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.fsmheader* %3, %struct.fsmheader** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.fsm*, %struct.fsm** %7, align 8
  %17 = getelementptr inbounds %struct.fsm, %struct.fsm* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @log_IsKept(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %6
  %22 = load %struct.fsm*, %struct.fsm** %7, align 8
  %23 = getelementptr inbounds %struct.fsm, %struct.fsm* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fsm*, %struct.fsm** %7, align 8
  %26 = getelementptr inbounds %struct.fsm, %struct.fsm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @Code2Nam(i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.fsm*, %struct.fsm** %7, align 8
  %34 = getelementptr inbounds %struct.fsm, %struct.fsm* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @State2Nam(i32 %35)
  %37 = call i32 (i32, i8*, ...) @log_Printf(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 %32, i32 %36)
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %62 [
    i32 128, label %39
    i32 131, label %39
    i32 129, label %39
    i32 130, label %39
  ]

39:                                               ; preds = %21, %21, %21, %21
  %40 = load %struct.fsm*, %struct.fsm** %7, align 8
  %41 = getelementptr inbounds %struct.fsm, %struct.fsm* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.fsm*, %struct.fsmheader*, %struct.fsmheader*, i32, i32*)*, i32 (%struct.fsm*, %struct.fsmheader*, %struct.fsmheader*, i32, i32*)** %43, align 8
  %45 = load %struct.fsm*, %struct.fsm** %7, align 8
  %46 = load %struct.fsmheader*, %struct.fsmheader** %10, align 8
  %47 = load %struct.fsmheader*, %struct.fsmheader** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %47, i64 %49
  %51 = load i32, i32* @MODE_NOP, align 4
  %52 = call i32 %44(%struct.fsm* %45, %struct.fsmheader* %46, %struct.fsmheader* %50, i32 %51, i32* null)
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %54, 4
  br i1 %55, label %56, label %61

56:                                               ; preds = %39
  %57 = load %struct.fsm*, %struct.fsm** %7, align 8
  %58 = getelementptr inbounds %struct.fsm, %struct.fsm* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @log_Printf(i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %39
  br label %62

62:                                               ; preds = %21, %61
  br label %63

63:                                               ; preds = %62, %6
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = add i64 12, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %8, align 4
  %69 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %14, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %14, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @htons(i32 %72)
  %74 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %14, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call %struct.mbuf* @m_get(i32 %75, i32 %76)
  store %struct.mbuf* %77, %struct.mbuf** %15, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %79 = call i64 @MBUF_CTOP(%struct.mbuf* %78)
  %80 = call i32 @memcpy(i64 %79, %struct.fsmheader* %14, i32 12)
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %63
  %84 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %85 = call i64 @MBUF_CTOP(%struct.mbuf* %84)
  %86 = add i64 %85, 12
  %87 = load %struct.fsmheader*, %struct.fsmheader** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @memcpy(i64 %86, %struct.fsmheader* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %63
  %91 = load i32, i32* @LogDEBUG, align 4
  %92 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %93 = call i32 @log_DumpBp(i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.mbuf* %92)
  %94 = load %struct.fsm*, %struct.fsm** %7, align 8
  %95 = getelementptr inbounds %struct.fsm, %struct.fsm* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %98 = load %struct.fsm*, %struct.fsm** %7, align 8
  %99 = getelementptr inbounds %struct.fsm, %struct.fsm* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.fsm*, %struct.fsm** %7, align 8
  %102 = getelementptr inbounds %struct.fsm, %struct.fsm* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = call i64 @LINK_QUEUES(%struct.TYPE_5__* %103)
  %105 = sub nsw i64 %104, 1
  %106 = load %struct.fsm*, %struct.fsm** %7, align 8
  %107 = getelementptr inbounds %struct.fsm, %struct.fsm* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @link_PushPacket(%struct.TYPE_5__* %96, %struct.mbuf* %97, i32 %100, i64 %105, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 129
  br i1 %111, label %112, label %118

112:                                              ; preds = %90
  %113 = load %struct.fsm*, %struct.fsm** %7, align 8
  %114 = getelementptr inbounds %struct.fsm, %struct.fsm* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = call i32 @lcp_SendIdentification(i32* %116)
  br label %118

118:                                              ; preds = %112, %90
  ret void
}

declare dso_local i64 @log_IsKept(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @Code2Nam(i32) #1

declare dso_local i32 @State2Nam(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @memcpy(i64, %struct.fsmheader*, i32) #1

declare dso_local i64 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @log_DumpBp(i32, i8*, %struct.mbuf*) #1

declare dso_local i32 @link_PushPacket(%struct.TYPE_5__*, %struct.mbuf*, i32, i64, i32) #1

declare dso_local i64 @LINK_QUEUES(%struct.TYPE_5__*) #1

declare dso_local i32 @lcp_SendIdentification(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
