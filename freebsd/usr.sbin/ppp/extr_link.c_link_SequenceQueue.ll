; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_SequenceQueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_SequenceQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.mqueue* }
%struct.mqueue = type { i64 }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"link_SequenceQueue\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_SequenceQueue(%struct.link* %0) #0 {
  %2 = alloca %struct.link*, align 8
  %3 = alloca %struct.mqueue*, align 8
  %4 = alloca %struct.mqueue*, align 8
  store %struct.link* %0, %struct.link** %2, align 8
  %5 = load i32, i32* @LogDEBUG, align 4
  %6 = call i32 @log_Printf(i32 %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.link*, %struct.link** %2, align 8
  %8 = call %struct.mqueue* @LINK_HIGHQ(%struct.link* %7)
  store %struct.mqueue* %8, %struct.mqueue** %4, align 8
  %9 = load %struct.link*, %struct.link** %2, align 8
  %10 = getelementptr inbounds %struct.link, %struct.link* %9, i32 0, i32 0
  %11 = load %struct.mqueue*, %struct.mqueue** %10, align 8
  store %struct.mqueue* %11, %struct.mqueue** %3, align 8
  br label %12

12:                                               ; preds = %28, %1
  %13 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %14 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %15 = icmp ult %struct.mqueue* %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %19 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %24 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %25 = call i32 @m_dequeue(%struct.mqueue* %24)
  %26 = call i32 @m_enqueue(%struct.mqueue* %23, i32 %25)
  br label %17

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %30 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %29, i32 1
  store %struct.mqueue* %30, %struct.mqueue** %3, align 8
  br label %12

31:                                               ; preds = %12
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local %struct.mqueue* @LINK_HIGHQ(%struct.link*) #1

declare dso_local i32 @m_enqueue(%struct.mqueue*, i32) #1

declare dso_local i32 @m_dequeue(%struct.mqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
