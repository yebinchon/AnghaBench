; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendcontrol_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendcontrol_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }
%struct.TYPE_2__ = type { %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbappendcontrol_locked(%struct.sockbuf* %0, %struct.mbuf* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %10 = call i32 @m_clrprotoflags(%struct.mbuf* %9)
  %11 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %13 = call %struct.TYPE_2__* @m_last(%struct.mbuf* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.mbuf* %11, %struct.mbuf** %14, align 8
  %15 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %16 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %15)
  %17 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %17, %struct.mbuf** %7, align 8
  br label %18

18:                                               ; preds = %27, %3
  %19 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %22 = icmp ne %struct.mbuf* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %26 = call i32 @sballoc(%struct.sockbuf* %24, %struct.mbuf* %25)
  br label %27

27:                                               ; preds = %23
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load %struct.mbuf*, %struct.mbuf** %29, align 8
  store %struct.mbuf* %30, %struct.mbuf** %7, align 8
  br label %18

31:                                               ; preds = %18
  %32 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %34 = call i32 @sballoc(%struct.sockbuf* %32, %struct.mbuf* %33)
  %35 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %35, %struct.mbuf** %8, align 8
  %36 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %38 = call i32 @SBLINKRECORD(%struct.sockbuf* %36, %struct.mbuf* %37)
  %39 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %40 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %41 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %40, i32 0, i32 0
  store %struct.mbuf* %39, %struct.mbuf** %41, align 8
  %42 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %43 = call i32 @SBLASTMBUFCHK(%struct.sockbuf* %42)
  %44 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %45 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %44)
  ret void
}

declare dso_local i32 @m_clrprotoflags(%struct.mbuf*) #1

declare dso_local %struct.TYPE_2__* @m_last(%struct.mbuf*) #1

declare dso_local i32 @SBLASTRECORDCHK(%struct.sockbuf*) #1

declare dso_local i32 @sballoc(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @SBLINKRECORD(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @SBLASTMBUFCHK(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
