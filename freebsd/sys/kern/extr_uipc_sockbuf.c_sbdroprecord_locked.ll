; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbdroprecord_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbdroprecord_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbdroprecord_locked(%struct.sockbuf* %0) #0 {
  %2 = alloca %struct.sockbuf*, align 8
  %3 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %2, align 8
  %4 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %5 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf* %4)
  %6 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %7 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %6, i32 0, i32 0
  %8 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %8, %struct.mbuf** %3, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %10 = icmp ne %struct.mbuf* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 0
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %15 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %16 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %15, i32 0, i32 0
  store %struct.mbuf* %14, %struct.mbuf** %16, align 8
  br label %17

17:                                               ; preds = %23, %11
  %18 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %20 = call i32 @sbfree(%struct.sockbuf* %18, %struct.mbuf* %19)
  %21 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %22 = call %struct.mbuf* @m_free(%struct.mbuf* %21)
  store %struct.mbuf* %22, %struct.mbuf** %3, align 8
  br label %23

23:                                               ; preds = %17
  %24 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %25 = icmp ne %struct.mbuf* %24, null
  br i1 %25, label %17, label %26

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %29 = call i32 @SB_EMPTY_FIXUP(%struct.sockbuf* %28)
  ret void
}

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf*) #1

declare dso_local i32 @sbfree(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_free(%struct.mbuf*) #1

declare dso_local i32 @SB_EMPTY_FIXUP(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
