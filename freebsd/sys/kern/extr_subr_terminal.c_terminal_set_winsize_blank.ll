; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_terminal_set_winsize_blank.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_terminal.c_terminal_set_winsize_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { i32, %struct.TYPE_8__*, i32, %struct.winsize }
%struct.TYPE_8__ = type { i32 (%struct.terminal*, %struct.TYPE_9__*, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.winsize = type { i32, i32 }

@TF_MUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terminal_set_winsize_blank(%struct.terminal* %0, %struct.winsize* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.terminal*, align 8
  %6 = alloca %struct.winsize*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  store %struct.terminal* %0, %struct.terminal** %5, align 8
  store %struct.winsize* %1, %struct.winsize** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.terminal*, %struct.terminal** %5, align 8
  %11 = getelementptr inbounds %struct.terminal, %struct.terminal* %10, i32 0, i32 3
  %12 = load %struct.winsize*, %struct.winsize** %6, align 8
  %13 = bitcast %struct.winsize* %11 to i8*
  %14 = bitcast %struct.winsize* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.winsize*, %struct.winsize** %6, align 8
  %20 = getelementptr inbounds %struct.winsize, %struct.winsize* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.winsize*, %struct.winsize** %6, align 8
  %25 = getelementptr inbounds %struct.winsize, %struct.winsize* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.terminal*, %struct.terminal** %5, align 8
  %30 = call i32 @TERMINAL_LOCK(%struct.terminal* %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load %struct.terminal*, %struct.terminal** %5, align 8
  %35 = getelementptr inbounds %struct.terminal, %struct.terminal* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %37 = call i32 @teken_set_winsize_noreset(i32* %35, %struct.TYPE_10__* %36)
  br label %43

38:                                               ; preds = %4
  %39 = load %struct.terminal*, %struct.terminal** %5, align 8
  %40 = getelementptr inbounds %struct.terminal, %struct.terminal* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %42 = call i32 @teken_set_winsize(i32* %40, %struct.TYPE_10__* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.terminal*, %struct.terminal** %5, align 8
  %45 = call i32 @TERMINAL_UNLOCK(%struct.terminal* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.terminal*, %struct.terminal** %5, align 8
  %50 = getelementptr inbounds %struct.terminal, %struct.terminal* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TF_MUTE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %48
  %56 = load %struct.terminal*, %struct.terminal** %5, align 8
  %57 = getelementptr inbounds %struct.terminal, %struct.terminal* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32 (%struct.terminal*, %struct.TYPE_9__*, i32)*, i32 (%struct.terminal*, %struct.TYPE_9__*, i32)** %59, align 8
  %61 = load %struct.terminal*, %struct.terminal** %5, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @TCHAR_CREATE(i32 32, i32* %62)
  %64 = call i32 %60(%struct.terminal* %61, %struct.TYPE_9__* %9, i32 %63)
  br label %65

65:                                               ; preds = %55, %48, %43
  %66 = load %struct.terminal*, %struct.terminal** %5, align 8
  %67 = call i32 @terminal_sync_ttysize(%struct.terminal* %66)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TERMINAL_LOCK(%struct.terminal*) #2

declare dso_local i32 @teken_set_winsize_noreset(i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @teken_set_winsize(i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @TERMINAL_UNLOCK(%struct.terminal*) #2

declare dso_local i32 @TCHAR_CREATE(i32, i32*) #2

declare dso_local i32 @terminal_sync_ttysize(%struct.terminal*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
