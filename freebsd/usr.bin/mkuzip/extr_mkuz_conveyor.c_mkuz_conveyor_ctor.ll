; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_conveyor.c_mkuz_conveyor_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_conveyor.c_mkuz_conveyor_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkuz_conveyor = type { i32*, i8*, i8* }
%struct.mkuz_cfg = type { i32 }
%struct.cw_args = type { %struct.mkuz_conveyor*, %struct.mkuz_cfg* }

@cworker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"mkuz_conveyor_ctor: pthread_create() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mkuz_conveyor* @mkuz_conveyor_ctor(%struct.mkuz_cfg* %0) #0 {
  %2 = alloca %struct.mkuz_cfg*, align 8
  %3 = alloca %struct.mkuz_conveyor*, align 8
  %4 = alloca %struct.cw_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mkuz_cfg* %0, %struct.mkuz_cfg** %2, align 8
  %7 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %2, align 8
  %8 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = add i64 24, %11
  %13 = trunc i64 %12 to i32
  %14 = call i8* @mkuz_safe_zmalloc(i32 %13)
  %15 = bitcast i8* %14 to %struct.mkuz_conveyor*
  store %struct.mkuz_conveyor* %15, %struct.mkuz_conveyor** %3, align 8
  %16 = call i8* @mkuz_fqueue_ctor(i32 1)
  %17 = load %struct.mkuz_conveyor*, %struct.mkuz_conveyor** %3, align 8
  %18 = getelementptr inbounds %struct.mkuz_conveyor, %struct.mkuz_conveyor* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = call i8* @mkuz_fqueue_ctor(i32 1)
  %20 = load %struct.mkuz_conveyor*, %struct.mkuz_conveyor** %3, align 8
  %21 = getelementptr inbounds %struct.mkuz_conveyor, %struct.mkuz_conveyor* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %52, %1
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %2, align 8
  %25 = getelementptr inbounds %struct.mkuz_cfg, %struct.mkuz_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %22
  %29 = call i8* @mkuz_safe_zmalloc(i32 16)
  %30 = bitcast i8* %29 to %struct.cw_args*
  store %struct.cw_args* %30, %struct.cw_args** %4, align 8
  %31 = load %struct.mkuz_cfg*, %struct.mkuz_cfg** %2, align 8
  %32 = load %struct.cw_args*, %struct.cw_args** %4, align 8
  %33 = getelementptr inbounds %struct.cw_args, %struct.cw_args* %32, i32 0, i32 1
  store %struct.mkuz_cfg* %31, %struct.mkuz_cfg** %33, align 8
  %34 = load %struct.mkuz_conveyor*, %struct.mkuz_conveyor** %3, align 8
  %35 = load %struct.cw_args*, %struct.cw_args** %4, align 8
  %36 = getelementptr inbounds %struct.cw_args, %struct.cw_args* %35, i32 0, i32 0
  store %struct.mkuz_conveyor* %34, %struct.mkuz_conveyor** %36, align 8
  %37 = load %struct.mkuz_conveyor*, %struct.mkuz_conveyor** %3, align 8
  %38 = getelementptr inbounds %struct.mkuz_conveyor, %struct.mkuz_conveyor* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* @cworker, align 4
  %44 = load %struct.cw_args*, %struct.cw_args** %4, align 8
  %45 = bitcast %struct.cw_args* %44 to i8*
  %46 = call i32 @pthread_create(i32* %42, i32* null, i32 %43, i8* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %28
  %50 = call i32 @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %28
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %22

55:                                               ; preds = %22
  %56 = load %struct.mkuz_conveyor*, %struct.mkuz_conveyor** %3, align 8
  ret %struct.mkuz_conveyor* %56
}

declare dso_local i8* @mkuz_safe_zmalloc(i32) #1

declare dso_local i8* @mkuz_fqueue_ctor(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
