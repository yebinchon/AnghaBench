; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_cmpdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_cmpdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feederdesc = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feederdesc*, %struct.pcm_feederdesc*)* @cmpdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpdesc(%struct.pcm_feederdesc* %0, %struct.pcm_feederdesc* %1) #0 {
  %3 = alloca %struct.pcm_feederdesc*, align 8
  %4 = alloca %struct.pcm_feederdesc*, align 8
  store %struct.pcm_feederdesc* %0, %struct.pcm_feederdesc** %3, align 8
  store %struct.pcm_feederdesc* %1, %struct.pcm_feederdesc** %4, align 8
  %5 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %3, align 8
  %6 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %4, align 8
  %9 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %3, align 8
  %14 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %3, align 8
  %19 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %4, align 8
  %22 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %17, %12
  %26 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %3, align 8
  %27 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %3, align 8
  %32 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %4, align 8
  %35 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30, %25
  %39 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %3, align 8
  %40 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %4, align 8
  %43 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br label %46

46:                                               ; preds = %38, %30, %17, %2
  %47 = phi i1 [ false, %30 ], [ false, %17 ], [ false, %2 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
