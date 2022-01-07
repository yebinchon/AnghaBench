; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_clone = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@SND_CLONE_MAXUNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid typemask: 0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"maxunit overflow: typemask=0x%08x maxunit=%d\00", align 1
@SND_CLONE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid clone flags=0x%08x\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_clone* @snd_clone_create(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_clone*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SND_CLONE_MAXUNIT, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @SND_CLONE_ASSERT(i32 %16, i8* %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %33, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @SND_CLONE_MAXUNIT, align 4
  %28 = and i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %23, %4
  %34 = phi i1 [ true, %4 ], [ %32, %23 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @SND_CLONE_ASSERT(i32 %35, i8* %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SND_CLONE_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @SND_CLONE_ASSERT(i32 %47, i8* %50)
  %52 = load i32, i32* @M_DEVBUF, align 4
  %53 = load i32, i32* @M_WAITOK, align 4
  %54 = load i32, i32* @M_ZERO, align 4
  %55 = or i32 %53, %54
  %56 = call %struct.snd_clone* @malloc(i32 40, i32 %52, i32 %55)
  store %struct.snd_clone* %56, %struct.snd_clone** %9, align 8
  %57 = load %struct.snd_clone*, %struct.snd_clone** %9, align 8
  %58 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load %struct.snd_clone*, %struct.snd_clone** %9, align 8
  %60 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %59, i32 0, i32 6
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.snd_clone*, %struct.snd_clone** %9, align 8
  %63 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %71

66:                                               ; preds = %33
  %67 = load i32, i32* %5, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* @SND_CLONE_MAXUNIT, align 4
  %70 = and i32 %68, %69
  br label %73

71:                                               ; preds = %33
  %72 = load i32, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %66
  %74 = phi i32 [ %70, %66 ], [ %72, %71 ]
  %75 = load %struct.snd_clone*, %struct.snd_clone** %9, align 8
  %76 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.snd_clone*, %struct.snd_clone** %9, align 8
  %79 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.snd_clone*, %struct.snd_clone** %9, align 8
  %82 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.snd_clone*, %struct.snd_clone** %9, align 8
  %84 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %83, i32 0, i32 5
  %85 = call i32 @snd_timestamp(i32* %84)
  %86 = load %struct.snd_clone*, %struct.snd_clone** %9, align 8
  %87 = getelementptr inbounds %struct.snd_clone, %struct.snd_clone* %86, i32 0, i32 4
  %88 = call i32 @TAILQ_INIT(i32* %87)
  %89 = load %struct.snd_clone*, %struct.snd_clone** %9, align 8
  ret %struct.snd_clone* %89
}

declare dso_local i32 @SND_CLONE_ASSERT(i32, i8*) #1

declare dso_local %struct.snd_clone* @malloc(i32, i32, i32) #1

declare dso_local i32 @snd_timestamp(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
