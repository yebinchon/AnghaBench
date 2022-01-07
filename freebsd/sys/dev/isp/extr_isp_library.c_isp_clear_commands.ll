; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_clear_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_clear_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32* }

@HBA_BUSRESET = common dso_local global i32 0, align 4
@CT_HBA_RESET = common dso_local global i8* null, align 8
@INI_ANY = common dso_local global i32 0, align 4
@ISPASYNC_TARGET_ACTION = common dso_local global i32 0, align 4
@ISPASYNC_TARGET_NOTIFY = common dso_local global i32 0, align 4
@LUN_ANY = common dso_local global i32 0, align 4
@NIL_HANDLE = common dso_local global i32 0, align 4
@NT_HBA_RESET = common dso_local global i32 0, align 4
@PORT_ANY = common dso_local global i8* null, align 8
@QENTRY_LEN = common dso_local global i32 0, align 4
@RQSTYPE_CTIO2 = common dso_local global i32 0, align 4
@RQSTYPE_CTIO7 = common dso_local global i32 0, align 4
@TAG_ANY = common dso_local global i32 0, align 4
@TGT_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_clear_commands(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %72, %1
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %10 = icmp ne %struct.TYPE_20__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i1 [ false, %6 ], [ %16, %11 ]
  br i1 %18, label %19, label %75

19:                                               ; preds = %17
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i64 %23
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %4, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ISP_H2HT(i32 %27)
  switch i32 %28, label %71 [
    i32 129, label %29
    i32 130, label %61
  ]

29:                                               ; preds = %19
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @XS_XFRLEN(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ISP_DMAFREE(%struct.TYPE_19__* %37, i32* %38, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @XS_XFRLEN(i32* %44)
  %46 = call i32 @XS_SET_RESID(i32* %43, i32 %45)
  br label %50

47:                                               ; preds = %29
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @XS_SET_RESID(i32* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %36
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @isp_destroy_handle(%struct.TYPE_19__* %51, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @HBA_BUSRESET, align 4
  %58 = call i32 @XS_SETERR(i32* %56, i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @isp_done(i32* %59)
  br label %71

61:                                               ; preds = %19
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @wakeup(i32* %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @isp_destroy_handle(%struct.TYPE_19__* %66, i32 %69)
  br label %71

71:                                               ; preds = %19, %61, %50
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %6

75:                                               ; preds = %17
  ret void
}

declare dso_local i32 @ISP_H2HT(i32) #1

declare dso_local i32 @XS_XFRLEN(i32*) #1

declare dso_local i32 @ISP_DMAFREE(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @XS_SET_RESID(i32*, i32) #1

declare dso_local i32 @isp_destroy_handle(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @XS_SETERR(i32*, i32) #1

declare dso_local i32 @isp_done(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
