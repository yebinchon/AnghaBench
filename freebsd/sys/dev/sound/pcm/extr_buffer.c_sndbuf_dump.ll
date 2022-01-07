; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_buffer.c_sndbuf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbuf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%s: [\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c" bufsize: %d, maxsize: %d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c" dl: %d, rp: %d, rl: %d, hp: %d\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c" total: %ju, prev_total: %ju, xrun: %d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" fmt: 0x%x, spd: %d\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c" blksz: %d, blkcnt: %d, flags: 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" ]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sndbuf_dump(%struct.snd_dbuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_dbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_dbuf* %0, %struct.snd_dbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %14 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %17 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %12, %3
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %26 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %29 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %32 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %35 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %24, %20
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %44 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %48 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %47, i32 0, i32 12
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %52 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %42, %38
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %61 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %64 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %59, %55
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 16
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %73 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %76 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.snd_dbuf*, %struct.snd_dbuf** %4, align 8
  %79 = getelementptr inbounds %struct.snd_dbuf, %struct.snd_dbuf* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %74, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %71, %67
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
