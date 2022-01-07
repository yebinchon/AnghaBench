; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fuser.c_printflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fuser.c_printflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.consumer = type { i32, i32 }

@NUFLAGS = common dso_local global i32 0, align 4
@uflags = common dso_local global %struct.TYPE_3__* null, align 8
@stderr = common dso_local global i32 0, align 4
@NFFLAGS = common dso_local global i32 0, align 4
@fflags = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consumer*)* @printflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printflags(%struct.consumer* %0) #0 {
  %2 = alloca %struct.consumer*, align 8
  %3 = alloca i32, align 4
  store %struct.consumer* %0, %struct.consumer** %2, align 8
  %4 = load %struct.consumer*, %struct.consumer** %2, align 8
  %5 = call i32 @assert(%struct.consumer* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NUFLAGS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.consumer*, %struct.consumer** %2, align 8
  %12 = getelementptr inbounds %struct.consumer, %struct.consumer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @uflags, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %13, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %10
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @uflags, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fputc(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %10
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %6

35:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @NFFLAGS, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load %struct.consumer*, %struct.consumer** %2, align 8
  %42 = getelementptr inbounds %struct.consumer, %struct.consumer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fflags, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %43, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %40
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fflags, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fputc(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %40
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %36

65:                                               ; preds = %36
  ret void
}

declare dso_local i32 @assert(%struct.consumer*) #1

declare dso_local i32 @fputc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
