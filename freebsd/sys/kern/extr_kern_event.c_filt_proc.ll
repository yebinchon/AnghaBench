; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.proc* }
%struct.proc = type { i32, i32 }

@NOTE_PCTRLMASK = common dso_local global i32 0, align 4
@NOTE_EXIT = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@EV_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @filt_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_proc(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.knote*, %struct.knote** %4, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.proc*, %struct.proc** %10, align 8
  store %struct.proc* %11, %struct.proc** %6, align 8
  %12 = load %struct.proc*, %struct.proc** %6, align 8
  %13 = icmp eq %struct.proc* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @NOTE_PCTRLMASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.knote*, %struct.knote** %4, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.knote*, %struct.knote** %4, align 8
  %29 = getelementptr inbounds %struct.knote, %struct.knote* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %15
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @NOTE_EXIT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %32
  %37 = load i32, i32* @EV_EOF, align 4
  %38 = load i32, i32* @EV_ONESHOT, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.knote*, %struct.knote** %4, align 8
  %41 = getelementptr inbounds %struct.knote, %struct.knote* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.knote*, %struct.knote** %4, align 8
  %45 = getelementptr inbounds %struct.knote, %struct.knote* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.proc* null, %struct.proc** %46, align 8
  %47 = load %struct.knote*, %struct.knote** %4, align 8
  %48 = getelementptr inbounds %struct.knote, %struct.knote* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NOTE_EXIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %36
  %54 = load %struct.proc*, %struct.proc** %6, align 8
  %55 = getelementptr inbounds %struct.proc, %struct.proc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.proc*, %struct.proc** %6, align 8
  %58 = getelementptr inbounds %struct.proc, %struct.proc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @KW_EXITCODE(i32 %56, i32 %59)
  %61 = load %struct.knote*, %struct.knote** %4, align 8
  %62 = getelementptr inbounds %struct.knote, %struct.knote* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %53, %36
  %64 = load %struct.knote*, %struct.knote** %4, align 8
  %65 = getelementptr inbounds %struct.knote, %struct.knote* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @EV_DROP, align 4
  %70 = load %struct.knote*, %struct.knote** %4, align 8
  %71 = getelementptr inbounds %struct.knote, %struct.knote* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %63
  store i32 1, i32* %3, align 4
  br label %81

75:                                               ; preds = %32
  %76 = load %struct.knote*, %struct.knote** %4, align 8
  %77 = getelementptr inbounds %struct.knote, %struct.knote* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %74, %14
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @KW_EXITCODE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
