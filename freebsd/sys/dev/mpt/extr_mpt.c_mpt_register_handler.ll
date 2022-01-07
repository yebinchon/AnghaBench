; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_register_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_register_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MPT_HANDLER_ID_NONE = common dso_local global i64 0, align 8
@MPT_NUM_REPLY_HANDLERS = common dso_local global i64 0, align 8
@mpt_reply_handlers = common dso_local global i32* null, align 8
@mpt_default_reply_handler = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mpt_register_handler unknown type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_register_handler(%struct.mpt_softc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca %struct.mpt_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %69 [
    i32 128, label %14
  ]

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %75

19:                                               ; preds = %14
  %20 = load i64, i64* @MPT_HANDLER_ID_NONE, align 8
  store i64 %20, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %51, %19
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @MPT_NUM_REPLY_HANDLERS, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load i32*, i32** @mpt_reply_handlers, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @MPT_CBI_TO_HID(i64 %34)
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %75

37:                                               ; preds = %25
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @MPT_HANDLER_ID_NONE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32*, i32** @mpt_reply_handlers, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @mpt_default_reply_handler, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %48, %41, %37
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %21

54:                                               ; preds = %21
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @MPT_HANDLER_ID_NONE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %5, align 4
  br label %75

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** @mpt_reply_handlers, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %62, i32* %65, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @MPT_CBI_TO_HID(i64 %66)
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  br label %74

69:                                               ; preds = %4
  %70 = load %struct.mpt_softc*, %struct.mpt_softc** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @mpt_prt(%struct.mpt_softc* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %5, align 4
  br label %75

74:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %69, %58, %33, %17
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @MPT_CBI_TO_HID(i64) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
