; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_feeder_printchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_feeder_printchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { %struct.pcm_feeder*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"feeder chain (head @%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s/%d @ %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"[end]\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @feeder_printchain(%struct.pcm_feeder* %0) #0 {
  %2 = alloca %struct.pcm_feeder*, align 8
  %3 = alloca %struct.pcm_feeder*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %2, align 8
  %4 = load %struct.pcm_feeder*, %struct.pcm_feeder** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.pcm_feeder* %4)
  %6 = load %struct.pcm_feeder*, %struct.pcm_feeder** %2, align 8
  store %struct.pcm_feeder* %6, %struct.pcm_feeder** %3, align 8
  br label %7

7:                                                ; preds = %10, %1
  %8 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %9 = icmp ne %struct.pcm_feeder* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %12 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %17 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %20, %struct.pcm_feeder* %21)
  %23 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %24 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %23, i32 0, i32 0
  %25 = load %struct.pcm_feeder*, %struct.pcm_feeder** %24, align 8
  store %struct.pcm_feeder* %25, %struct.pcm_feeder** %3, align 8
  br label %7

26:                                               ; preds = %7
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
