; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sccnopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sccnopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32*, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.sc_cnstate = type { i8*, i32, i32, i8*, i8* }

@FALSE = common dso_local global i8* null, align 8
@K_XLATE = common dso_local global i32 0, align 4
@KDSKBMODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@cold = common dso_local global i32 0, align 4
@sc_console = common dso_local global %struct.TYPE_14__* null, align 8
@VT_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.sc_cnstate*, i32)* @sccnopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccnopen(%struct.TYPE_13__* %0, %struct.sc_cnstate* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.sc_cnstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.sc_cnstate* %1, %struct.sc_cnstate** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** @FALSE, align 8
  %9 = load %struct.sc_cnstate*, %struct.sc_cnstate** %5, align 8
  %10 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @FALSE, align 8
  %12 = load %struct.sc_cnstate*, %struct.sc_cnstate** %5, align 8
  %13 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @FALSE, align 8
  %15 = load %struct.sc_cnstate*, %struct.sc_cnstate** %5, align 8
  %16 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %3
  br label %53

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = load %struct.sc_cnstate*, %struct.sc_cnstate** %5, align 8
  %29 = call i32 @sccnkbdlock(%struct.TYPE_13__* %27, %struct.sc_cnstate* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kbdd_enable(i32* %32)
  %34 = load i32, i32* @K_XLATE, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @KDSKBMODE, align 4
  %39 = ptrtoint i32* %7 to i32
  %40 = call i32 @kbdd_ioctl(i32* %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i8*, i8** @TRUE, align 8
  %49 = call i32 @kbdd_poll(i32* %47, i8* %48)
  %50 = load i8*, i8** @TRUE, align 8
  %51 = load %struct.sc_cnstate*, %struct.sc_cnstate** %5, align 8
  %52 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %26, %25
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = load %struct.sc_cnstate*, %struct.sc_cnstate** %5, align 8
  %56 = call i32 @sccnscrlock(%struct.TYPE_13__* %54, %struct.sc_cnstate* %55)
  %57 = load %struct.sc_cnstate*, %struct.sc_cnstate** %5, align 8
  %58 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load %struct.sc_cnstate*, %struct.sc_cnstate** %5, align 8
  %63 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %110

67:                                               ; preds = %61, %53
  %68 = load i8*, i8** @TRUE, align 8
  %69 = load %struct.sc_cnstate*, %struct.sc_cnstate** %5, align 8
  %70 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %110

75:                                               ; preds = %67
  %76 = load i32, i32* @cold, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %110, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sc_console, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %78
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VT_AUTO, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %88
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sc_console, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VT_AUTO, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sc_console, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @sc_switch_scr(%struct.TYPE_13__* %105, i64 %108)
  br label %110

110:                                              ; preds = %66, %74, %104, %97, %88, %78, %75
  ret void
}

declare dso_local i32 @sccnkbdlock(%struct.TYPE_13__*, %struct.sc_cnstate*) #1

declare dso_local i32 @kbdd_enable(i32*) #1

declare dso_local i32 @kbdd_ioctl(i32*, i32, i32) #1

declare dso_local i32 @kbdd_poll(i32*, i8*) #1

declare dso_local i32 @sccnscrlock(%struct.TYPE_13__*, %struct.sc_cnstate*) #1

declare dso_local i32 @sc_switch_scr(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
