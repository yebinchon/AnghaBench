; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_PushPacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_PushPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i32, i32*)* }
%struct.mbuf = type { i64 }
%struct.bundle = type { i32 }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"link_PushPacket: Transmit proto 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_PushPacket(%struct.link* %0, %struct.mbuf* %1, %struct.bundle* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.link*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.bundle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.bundle* %2, %struct.bundle** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.link*, %struct.link** %6, align 8
  %17 = call i32 @LINK_QUEUES(%struct.link* %16)
  %18 = icmp uge i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %5
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %19, %14
  %21 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.link*, %struct.link** %6, align 8
  %24 = getelementptr inbounds %struct.link, %struct.link* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %63, %20
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %31 = icmp ne %struct.mbuf* %30, null
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %66

34:                                               ; preds = %32
  %35 = load %struct.link*, %struct.link** %6, align 8
  %36 = getelementptr inbounds %struct.link, %struct.link* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i32, i32*)*, %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i32, i32*)** %43, align 8
  %45 = icmp ne %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i32, i32*)* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %34
  %47 = load %struct.link*, %struct.link** %6, align 8
  %48 = getelementptr inbounds %struct.link, %struct.link* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i32, i32*)*, %struct.mbuf* (%struct.bundle*, %struct.link*, %struct.mbuf*, i32, i32*)** %55, align 8
  %57 = load %struct.bundle*, %struct.bundle** %8, align 8
  %58 = load %struct.link*, %struct.link** %6, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call %struct.mbuf* %56(%struct.bundle* %57, %struct.link* %58, %struct.mbuf* %59, i32 %60, i32* %10)
  store %struct.mbuf* %61, %struct.mbuf** %7, align 8
  br label %62

62:                                               ; preds = %46, %34
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %11, align 4
  br label %26

66:                                               ; preds = %32
  %67 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %68 = icmp ne %struct.mbuf* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load %struct.link*, %struct.link** %6, align 8
  %71 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %72 = call i32 @m_length(%struct.mbuf* %71)
  %73 = call i32 @link_AddOutOctets(%struct.link* %70, i32 %72)
  %74 = load i32, i32* @LogDEBUG, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @log_Printf(i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.link*, %struct.link** %6, align 8
  %78 = getelementptr inbounds %struct.link, %struct.link* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %84 = call i32 @m_pullup(%struct.mbuf* %83)
  %85 = call i32 @m_enqueue(i64 %82, i32 %84)
  br label %86

86:                                               ; preds = %69, %66
  ret void
}

declare dso_local i32 @LINK_QUEUES(%struct.link*) #1

declare dso_local i32 @link_AddOutOctets(%struct.link*, i32) #1

declare dso_local i32 @m_length(%struct.mbuf*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @m_enqueue(i64, i32) #1

declare dso_local i32 @m_pullup(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
