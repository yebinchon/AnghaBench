; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.procdesc*, i32 }
%struct.procdesc = type { i32, i32, %struct.TYPE_2__, i32, i32, %struct.proc* }
%struct.TYPE_2__ = type { i32 }

@procdesc_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PD_DAEMON = common dso_local global i32 0, align 4
@PDF_DAEMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procdesc_new(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.procdesc*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @procdesc_zone, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.procdesc* @uma_zalloc(i32 %6, i32 %9)
  store %struct.procdesc* %10, %struct.procdesc** %5, align 8
  %11 = load %struct.proc*, %struct.proc** %3, align 8
  %12 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %13 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %12, i32 0, i32 5
  store %struct.proc* %11, %struct.proc** %13, align 8
  %14 = load %struct.proc*, %struct.proc** %3, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %18 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %20 = load %struct.proc*, %struct.proc** %3, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 0
  store %struct.procdesc* %19, %struct.procdesc** %21, align 8
  %22 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %23 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %22, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PD_DAEMON, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* @PDF_DAEMON, align 4
  %30 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %31 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %2
  %35 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %36 = call i32 @PROCDESC_LOCK_INIT(%struct.procdesc* %35)
  %37 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %38 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %41 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %40, i32 0, i32 1
  %42 = call i32 @knlist_init_mtx(i32* %39, i32* %41)
  %43 = load %struct.procdesc*, %struct.procdesc** %5, align 8
  %44 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %43, i32 0, i32 0
  %45 = call i32 @refcount_init(i32* %44, i32 2)
  ret void
}

declare dso_local %struct.procdesc* @uma_zalloc(i32, i32) #1

declare dso_local i32 @PROCDESC_LOCK_INIT(%struct.procdesc*) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
