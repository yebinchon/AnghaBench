; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_deregister_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_deregister_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MPT_NUM_REPLY_HANDLERS = common dso_local global i64 0, align 8
@mpt_reply_handlers = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@mpt_default_reply_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"mpt_deregister_handler unknown type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_deregister_handler(%struct.mpt_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca %struct.mpt_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %34 [
    i32 128, label %13
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @MPT_CBI(i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @MPT_NUM_REPLY_HANDLERS, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = load i32*, i32** @mpt_reply_handlers, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19, %13
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %5, align 4
  br label %40

29:                                               ; preds = %19
  %30 = load i32, i32* @mpt_default_reply_handler, align 4
  %31 = load i32*, i32** @mpt_reply_handlers, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %30, i32* %33, align 4
  br label %39

34:                                               ; preds = %4
  %35 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @mpt_prt(%struct.mpt_softc* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %34, %27
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @MPT_CBI(i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
