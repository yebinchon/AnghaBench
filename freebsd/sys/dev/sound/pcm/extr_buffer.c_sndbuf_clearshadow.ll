; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_clearshadow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_clearshadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbuf = type { i64, i32, i32* }

@.str = private unnamed_addr constant [20 x i8] c"b is a null pointer\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"illegal shadow length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sndbuf_clearshadow(%struct.snd_dbuf* %0) #0 {
  %2 = alloca %struct.snd_dbuf*, align 8
  store %struct.snd_dbuf* %0, %struct.snd_dbuf** %2, align 8
  %3 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %4 = icmp ne %struct.snd_dbuf* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @KASSERT(i32 %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %8 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %14 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %19 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %24 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %27 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sndbuf_zerodata(i32 %28)
  %30 = load %struct.snd_dbuf*, %struct.snd_dbuf** %2, align 8
  %31 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @memset(i32* %25, i32 %29, i64 %32)
  br label %34

34:                                               ; preds = %22, %17, %1
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @sndbuf_zerodata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
