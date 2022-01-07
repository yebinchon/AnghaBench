; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendrecord_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendrecord_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { %struct.mbuf* }
%struct.mbuf = type { i32, %struct.mbuf* }

@M_EOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbappendrecord_locked(%struct.sockbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %6 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %7 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf* %6)
  %8 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %9 = icmp eq %struct.mbuf* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %56

11:                                               ; preds = %2
  %12 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %13 = call i32 @m_clrprotoflags(%struct.mbuf* %12)
  %14 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = call i32 @sballoc(%struct.sockbuf* %14, %struct.mbuf* %15)
  %17 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %18 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %17)
  %19 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %21 = call i32 @SBLINKRECORD(%struct.sockbuf* %19, %struct.mbuf* %20)
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %24 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %23, i32 0, i32 0
  store %struct.mbuf* %22, %struct.mbuf** %24, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 1
  %27 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  store %struct.mbuf* %27, %struct.mbuf** %5, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %29, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %31 = icmp ne %struct.mbuf* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %11
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @M_EOR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load i32, i32* @M_EOR, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @M_EOR, align 4
  %47 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %39, %32, %11
  %52 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %55 = call i32 @sbcompress(%struct.sockbuf* %52, %struct.mbuf* %53, %struct.mbuf* %54)
  br label %56

56:                                               ; preds = %51, %10
  ret void
}

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf*) #1

declare dso_local i32 @m_clrprotoflags(%struct.mbuf*) #1

declare dso_local i32 @sballoc(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @SBLASTRECORDCHK(%struct.sockbuf*) #1

declare dso_local i32 @SBLINKRECORD(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @sbcompress(%struct.sockbuf*, %struct.mbuf*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
