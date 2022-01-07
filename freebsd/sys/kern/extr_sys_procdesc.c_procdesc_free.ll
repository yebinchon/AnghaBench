; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procdesc = type { i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"procdesc_free: pd_proc != NULL\00", align 1
@PDF_CLOSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"procdesc_free: !PDF_CLOSED\00", align 1
@procdesc_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.procdesc*)* @procdesc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @procdesc_free(%struct.procdesc* %0) #0 {
  %2 = alloca %struct.procdesc*, align 8
  store %struct.procdesc* %0, %struct.procdesc** %2, align 8
  %3 = load %struct.procdesc*, %struct.procdesc** %2, align 8
  %4 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %3, i32 0, i32 3
  %5 = call i64 @refcount_release(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.procdesc*, %struct.procdesc** %2, align 8
  %9 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.procdesc*, %struct.procdesc** %2, align 8
  %15 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PDF_CLOSED, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.procdesc*, %struct.procdesc** %2, align 8
  %21 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @knlist_destroy(i32* %22)
  %24 = load %struct.procdesc*, %struct.procdesc** %2, align 8
  %25 = call i32 @PROCDESC_LOCK_DESTROY(%struct.procdesc* %24)
  %26 = load i32, i32* @procdesc_zone, align 4
  %27 = load %struct.procdesc*, %struct.procdesc** %2, align 8
  %28 = call i32 @uma_zfree(i32 %26, %struct.procdesc* %27)
  br label %29

29:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @PROCDESC_LOCK_DESTROY(%struct.procdesc*) #1

declare dso_local i32 @uma_zfree(i32, %struct.procdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
