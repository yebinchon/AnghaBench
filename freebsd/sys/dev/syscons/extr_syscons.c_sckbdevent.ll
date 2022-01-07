; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sckbdevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sckbdevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i8* (%struct.TYPE_9__*, i32)*, i64 (%struct.TYPE_9__*, i32, %struct.tty*)* }
%struct.tty = type { i32 }

@Giant = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCGETC_NONBLOCK = common dso_local global i32 0, align 4
@NOKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\1B[Z\00", align 1
@MOUSE_HIDDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @sckbdevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sckbdevent(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.tty*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %7, align 8
  %15 = call i32 @mtx_lock(i32* @Giant)
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %28 [
    i32 130, label %17
    i32 129, label %18
  ]

17:                                               ; preds = %3
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @kbd_release(i32* %23, i8* %26)
  br label %129

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %10, align 4
  br label %129

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %118, %64, %48, %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = load i32, i32* @SCGETC_NONBLOCK, align 4
  %34 = call i32 @scgetc(%struct.TYPE_8__* %32, i32 %33, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @NOKEY, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %121

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.tty* @SC_DEV(%struct.TYPE_8__* %38, i32 %43)
  store %struct.tty* %44, %struct.tty** %8, align 8
  %45 = load %struct.tty*, %struct.tty** %8, align 8
  %46 = call i32 @tty_opened_ns(%struct.tty* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  br label %31

49:                                               ; preds = %37
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64 (%struct.TYPE_9__*, i32, %struct.tty*)*, i64 (%struct.TYPE_9__*, i32, %struct.tty*)** %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.tty*, %struct.tty** %8, align 8
  %62 = call i64 %56(%struct.TYPE_9__* %59, i32 %60, %struct.tty* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  br label %31

65:                                               ; preds = %49
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @KEYFLAGS(i32 %66)
  switch i32 %67, label %118 [
    i32 0, label %68
    i32 131, label %73
    i32 128, label %108
    i32 132, label %115
  ]

68:                                               ; preds = %65
  %69 = load %struct.tty*, %struct.tty** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @KEYCHAR(i32 %70)
  %72 = call i32 @ttydisc_rint(%struct.tty* %69, i32 %71, i32 0)
  br label %118

73:                                               ; preds = %65
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i8* (%struct.TYPE_9__*, i32)*, i8* (%struct.TYPE_9__*, i32)** %79, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i8* %80(%struct.TYPE_9__* %83, i32 %84)
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %73
  %89 = load %struct.tty*, %struct.tty** %8, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = call i32 @ttydisc_rint_simple(%struct.tty* %89, i8* %90, i32 %92)
  br label %118

94:                                               ; preds = %73
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @KEYCHAR(i32 %96)
  %98 = call i8* @kbdd_get_fkeystr(i32* %95, i32 %97, i64* %11)
  store i8* %98, i8** %12, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.tty*, %struct.tty** %8, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i64, i64* %11, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @ttydisc_rint_simple(%struct.tty* %102, i8* %103, i32 %105)
  br label %107

107:                                              ; preds = %101, %94
  br label %118

108:                                              ; preds = %65
  %109 = load %struct.tty*, %struct.tty** %8, align 8
  %110 = call i32 @ttydisc_rint(%struct.tty* %109, i32 27, i32 0)
  %111 = load %struct.tty*, %struct.tty** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @KEYCHAR(i32 %112)
  %114 = call i32 @ttydisc_rint(%struct.tty* %111, i32 %113, i32 0)
  br label %118

115:                                              ; preds = %65
  %116 = load %struct.tty*, %struct.tty** %8, align 8
  %117 = call i32 @ttydisc_rint_simple(%struct.tty* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  br label %118

118:                                              ; preds = %65, %115, %108, %107, %88, %68
  %119 = load %struct.tty*, %struct.tty** %8, align 8
  %120 = call i32 @ttydisc_rint_done(%struct.tty* %119)
  br label %31

121:                                              ; preds = %31
  %122 = load i32, i32* @MOUSE_HIDDEN, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %122
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %121, %28, %18
  %130 = call i32 @mtx_unlock(i32* @Giant)
  %131 = load i32, i32* %10, align 4
  ret i32 %131
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @kbd_release(i32*, i8*) #1

declare dso_local i32 @scgetc(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local %struct.tty* @SC_DEV(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @tty_opened_ns(%struct.tty*) #1

declare dso_local i32 @KEYFLAGS(i32) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i32, i32) #1

declare dso_local i32 @KEYCHAR(i32) #1

declare dso_local i32 @ttydisc_rint_simple(%struct.tty*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kbdd_get_fkeystr(i32*, i32, i64*) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
