; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_seltdinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_seltdinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.seltd* }
%struct.seltd = type { i32, i64, i32, i32 }

@M_SELECT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sellck\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @seltdinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seltdinit(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.seltd*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %6 = load %struct.seltd*, %struct.seltd** %5, align 8
  store %struct.seltd* %6, %struct.seltd** %3, align 8
  %7 = icmp ne %struct.seltd* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @M_SELECT, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.seltd* @malloc(i32 24, i32 %10, i32 %13)
  store %struct.seltd* %14, %struct.seltd** %3, align 8
  %15 = load %struct.thread*, %struct.thread** %2, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  store %struct.seltd* %14, %struct.seltd** %16, align 8
  %17 = load %struct.seltd*, %struct.seltd** %3, align 8
  %18 = getelementptr inbounds %struct.seltd, %struct.seltd* %17, i32 0, i32 3
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %19)
  %21 = load %struct.seltd*, %struct.seltd** %3, align 8
  %22 = getelementptr inbounds %struct.seltd, %struct.seltd* %21, i32 0, i32 2
  %23 = call i32 @cv_init(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %9, %8
  %25 = load %struct.seltd*, %struct.seltd** %3, align 8
  %26 = getelementptr inbounds %struct.seltd, %struct.seltd* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.seltd*, %struct.seltd** %3, align 8
  %28 = getelementptr inbounds %struct.seltd, %struct.seltd* %27, i32 0, i32 0
  %29 = call i32 @STAILQ_INIT(i32* %28)
  ret void
}

declare dso_local %struct.seltd* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
