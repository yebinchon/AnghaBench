; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_Input.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_Input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.link = type { i32 }
%struct.mbuf = type { i32 }
%struct.physical = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"DecodePacket: Can't do MP inside MP !\0A\00", align 1
@MB_MPIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @mp_Input(%struct.bundle* %0, %struct.link* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.link*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.physical*, align 8
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store %struct.link* %1, %struct.link** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %9 = load %struct.link*, %struct.link** %6, align 8
  %10 = call %struct.physical* @link2physical(%struct.link* %9)
  store %struct.physical* %10, %struct.physical** %8, align 8
  %11 = load %struct.bundle*, %struct.bundle** %5, align 8
  %12 = getelementptr inbounds %struct.bundle, %struct.bundle* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %18, %struct.mbuf** %4, align 8
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.physical*, %struct.physical** %8, align 8
  %21 = icmp eq %struct.physical* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @LogWARN, align 4
  %24 = call i32 @log_Printf(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %26 = call i32 @m_freem(%struct.mbuf* %25)
  br label %37

27:                                               ; preds = %19
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = load i32, i32* @MB_MPIN, align 4
  %30 = call i32 @m_settype(%struct.mbuf* %28, i32 %29)
  %31 = load %struct.bundle*, %struct.bundle** %5, align 8
  %32 = getelementptr inbounds %struct.bundle, %struct.bundle* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %35 = load %struct.physical*, %struct.physical** %8, align 8
  %36 = call i32 @mp_Assemble(%struct.TYPE_4__* %33, %struct.mbuf* %34, %struct.physical* %35)
  br label %37

37:                                               ; preds = %27, %22
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %38

38:                                               ; preds = %37, %17
  %39 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %39
}

declare dso_local %struct.physical* @link2physical(%struct.link*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_settype(%struct.mbuf*, i32) #1

declare dso_local i32 @mp_Assemble(%struct.TYPE_4__*, %struct.mbuf*, %struct.physical*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
