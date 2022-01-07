; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_cngetc_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_cngetc_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fkeytab = type { i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32* (%struct.TYPE_10__*, i32)* }
%struct.sc_cnstate = type { i64 }

@sc_cngetc_locked.fkey = internal global %struct.fkeytab zeroinitializer, align 8
@sc_cngetc_locked.fkeycp = internal global i32 0, align 4
@sc_console = common dso_local global %struct.TYPE_12__* null, align 8
@SCGETC_CN = common dso_local global i32 0, align 4
@SCGETC_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_cnstate*)* @sc_cngetc_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_cngetc_locked(%struct.sc_cnstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_cnstate*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.sc_cnstate* %0, %struct.sc_cnstate** %3, align 8
  %7 = load %struct.sc_cnstate*, %struct.sc_cnstate** %3, align 8
  %8 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @sc_touch_scrn_saver()
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sc_console, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %4, align 8
  %19 = load %struct.sc_cnstate*, %struct.sc_cnstate** %3, align 8
  %20 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = call i32 @sccnupdate(%struct.TYPE_10__* %24)
  br label %26

26:                                               ; preds = %23, %13
  %27 = load i32, i32* @sc_cngetc_locked.fkeycp, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.fkeytab, %struct.fkeytab* @sc_cngetc_locked.fkey, i32 0, i32 0), align 8
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32*, i32** getelementptr inbounds (%struct.fkeytab, %struct.fkeytab* @sc_cngetc_locked.fkey, i32 0, i32 1), align 8
  %32 = load i32, i32* @sc_cngetc_locked.fkeycp, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @sc_cngetc_locked.fkeycp, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %99

37:                                               ; preds = %26
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = load i32, i32* @SCGETC_CN, align 4
  %42 = load i32, i32* @SCGETC_NONBLOCK, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.sc_cnstate*, %struct.sc_cnstate** %3, align 8
  %45 = call i32 @scgetc(%struct.TYPE_11__* %40, i32 %43, %struct.sc_cnstate* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @KEYFLAGS(i32 %46)
  switch i32 %47, label %98 [
    i32 0, label %48
    i32 129, label %51
    i32 128, label %97
    i32 130, label %97
  ]

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @KEYCHAR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %99

51:                                               ; preds = %37
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32* (%struct.TYPE_10__*, i32)*, i32* (%struct.TYPE_10__*, i32)** %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32* %56(%struct.TYPE_10__* %57, i32 %58)
  store i32* %59, i32** %5, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %51
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @strlen(i32* %63)
  store i32 %64, i32* getelementptr inbounds (%struct.fkeytab, %struct.fkeytab* @sc_cngetc_locked.fkey, i32 0, i32 0), align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** getelementptr inbounds (%struct.fkeytab, %struct.fkeytab* @sc_cngetc_locked.fkey, i32 0, i32 1), align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.fkeytab, %struct.fkeytab* @sc_cngetc_locked.fkey, i32 0, i32 0), align 8
  %68 = call i32 @bcopy(i32* %65, i32* %66, i32 %67)
  store i32 1, i32* @sc_cngetc_locked.fkeycp, align 4
  %69 = load i32*, i32** getelementptr inbounds (%struct.fkeytab, %struct.fkeytab* @sc_cngetc_locked.fkey, i32 0, i32 1), align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %2, align 4
  br label %99

72:                                               ; preds = %51
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @KEYCHAR(i32 %78)
  %80 = call i32* @kbdd_get_fkeystr(i32 %77, i32 %79, i64* bitcast (i32* @sc_cngetc_locked.fkeycp to i64*))
  store i32* %80, i32** %5, align 8
  %81 = load i32, i32* @sc_cngetc_locked.fkeycp, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.fkeytab, %struct.fkeytab* @sc_cngetc_locked.fkey, i32 0, i32 0), align 8
  %82 = load i32*, i32** %5, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %72
  %85 = load i32, i32* getelementptr inbounds (%struct.fkeytab, %struct.fkeytab* @sc_cngetc_locked.fkey, i32 0, i32 0), align 8
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** getelementptr inbounds (%struct.fkeytab, %struct.fkeytab* @sc_cngetc_locked.fkey, i32 0, i32 1), align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.fkeytab, %struct.fkeytab* @sc_cngetc_locked.fkey, i32 0, i32 0), align 8
  %91 = call i32 @bcopy(i32* %88, i32* %89, i32 %90)
  store i32 1, i32* @sc_cngetc_locked.fkeycp, align 4
  %92 = load i32*, i32** getelementptr inbounds (%struct.fkeytab, %struct.fkeytab* @sc_cngetc_locked.fkey, i32 0, i32 1), align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %2, align 4
  br label %99

95:                                               ; preds = %84, %72
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %99

97:                                               ; preds = %37, %37
  br label %98

98:                                               ; preds = %37, %97
  store i32 -1, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %95, %87, %62, %48, %30
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @sc_touch_scrn_saver(...) #1

declare dso_local i32 @sccnupdate(%struct.TYPE_10__*) #1

declare dso_local i32 @scgetc(%struct.TYPE_11__*, i32, %struct.sc_cnstate*) #1

declare dso_local i32 @KEYFLAGS(i32) #1

declare dso_local i32 @KEYCHAR(i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32* @kbdd_get_fkeystr(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
