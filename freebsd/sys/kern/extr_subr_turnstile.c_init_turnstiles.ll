; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_init_turnstiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_init_turnstiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@TC_TABLESIZE = common dso_local global i32 0, align 4
@turnstile_chains = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"turnstile chain\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@td_contested_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"td_contested\00", align 1
@thread0 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_turnstiles() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %20, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @TC_TABLESIZE, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @turnstile_chains, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = call i32 @LIST_INIT(i32* %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @turnstile_chains, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* @MTX_SPIN, align 4
  %19 = call i32 @mtx_init(i32* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %18)
  br label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %2

23:                                               ; preds = %2
  %24 = load i32, i32* @MTX_SPIN, align 4
  %25 = call i32 @mtx_init(i32* @td_contested_lock, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %24)
  %26 = call i32 @LIST_INIT(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @thread0, i32 0, i32 1))
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @thread0, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
