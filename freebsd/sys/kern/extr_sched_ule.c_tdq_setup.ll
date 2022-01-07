; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_tdq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdq = type { i32, i32, i32, i32, i32, i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"ULE: setup cpu %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sched lock %d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sched lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tdq*, i32)* @tdq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tdq_setup(%struct.tdq* %0, i32 %1) #0 {
  %3 = alloca %struct.tdq*, align 8
  %4 = alloca i32, align 4
  store %struct.tdq* %0, %struct.tdq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @bootverbose, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.tdq*, %struct.tdq** %3, align 8
  %12 = getelementptr inbounds %struct.tdq, %struct.tdq* %11, i32 0, i32 6
  %13 = call i32 @runq_init(i32* %12)
  %14 = load %struct.tdq*, %struct.tdq** %3, align 8
  %15 = getelementptr inbounds %struct.tdq, %struct.tdq* %14, i32 0, i32 5
  %16 = call i32 @runq_init(i32* %15)
  %17 = load %struct.tdq*, %struct.tdq** %3, align 8
  %18 = getelementptr inbounds %struct.tdq, %struct.tdq* %17, i32 0, i32 4
  %19 = call i32 @runq_init(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.tdq*, %struct.tdq** %3, align 8
  %22 = getelementptr inbounds %struct.tdq, %struct.tdq* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.tdq*, %struct.tdq** %3, align 8
  %24 = getelementptr inbounds %struct.tdq, %struct.tdq* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tdq*, %struct.tdq** %3, align 8
  %27 = call i64 @TDQ_ID(%struct.tdq* %26)
  %28 = trunc i64 %27 to i32
  %29 = call i32 @snprintf(i32 %25, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.tdq*, %struct.tdq** %3, align 8
  %31 = getelementptr inbounds %struct.tdq, %struct.tdq* %30, i32 0, i32 3
  %32 = load %struct.tdq*, %struct.tdq** %3, align 8
  %33 = getelementptr inbounds %struct.tdq, %struct.tdq* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MTX_SPIN, align 4
  %36 = load i32, i32* @MTX_RECURSE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @mtx_init(i32* %31, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @runq_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @TDQ_ID(%struct.tdq*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
