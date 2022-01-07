; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbuf = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sndbuf_clear(%struct.snd_dbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_dbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.snd_dbuf* %0, %struct.snd_dbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %50

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %14 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ugt i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %19 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %23 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sndbuf_zerodata(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %27 = call i32 @sndbuf_getfreeptr(%struct.snd_dbuf* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %29 = call i32* @sndbuf_getbuf(%struct.snd_dbuf* %28)
  store i32* %29, i32** %7, align 8
  br label %30

30:                                               ; preds = %49, %21
  %31 = load i32, i32* %4, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.snd_dbuf*, %struct.snd_dbuf** %3, align 8
  %45 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp uge i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %33
  br label %30

50:                                               ; preds = %10, %30
  ret void
}

declare dso_local i32 @sndbuf_zerodata(i32) #1

declare dso_local i32 @sndbuf_getfreeptr(%struct.snd_dbuf*) #1

declare dso_local i32* @sndbuf_getbuf(%struct.snd_dbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
