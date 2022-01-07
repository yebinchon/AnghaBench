; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_rm_init_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c_rm_init_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class = type { i32 }
%struct.rmlock = type { i32, i32, i32, i32, i32 }

@RM_NOWITNESS = common dso_local global i32 0, align 4
@LO_WITNESS = common dso_local global i32 0, align 4
@RM_RECURSE = common dso_local global i32 0, align 4
@LO_RECURSABLE = common dso_local global i32 0, align 4
@RM_NEW = common dso_local global i32 0, align 4
@LO_NEW = common dso_local global i32 0, align 4
@all_cpus = common dso_local global i32 0, align 4
@RM_SLEEPABLE = common dso_local global i32 0, align 4
@LO_SLEEPABLE = common dso_local global i32 0, align 4
@lock_class_rm_sleepable = common dso_local global %struct.lock_class zeroinitializer, align 4
@SX_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rmlock_sx\00", align 1
@SX_NOWITNESS = common dso_local global i32 0, align 4
@lock_class_rm = common dso_local global %struct.lock_class zeroinitializer, align 4
@MTX_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rmlock_mtx\00", align 1
@MTX_NOWITNESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rm_init_flags(%struct.rmlock* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rmlock*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lock_class*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rmlock* %0, %struct.rmlock** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @RM_NOWITNESS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @LO_WITNESS, align 4
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @RM_RECURSE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @LO_RECURSABLE, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @RM_NEW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @LO_NEW, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* @all_cpus, align 4
  %38 = load %struct.rmlock*, %struct.rmlock** %4, align 8
  %39 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.rmlock*, %struct.rmlock** %4, align 8
  %41 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %40, i32 0, i32 3
  %42 = call i32 @LIST_INIT(i32* %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @RM_SLEEPABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %36
  %48 = load i32, i32* @LO_SLEEPABLE, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  store %struct.lock_class* @lock_class_rm_sleepable, %struct.lock_class** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @RM_NEW, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @SX_NEW, align 4
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  store i32 %59, i32* %9, align 4
  %60 = load %struct.rmlock*, %struct.rmlock** %4, align 8
  %61 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %60, i32 0, i32 2
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @SX_NOWITNESS, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @sx_init_flags(i32* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %83

66:                                               ; preds = %36
  store %struct.lock_class* @lock_class_rm, %struct.lock_class** %7, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @RM_NEW, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @MTX_NEW, align 4
  br label %74

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  store i32 %75, i32* %9, align 4
  %76 = load %struct.rmlock*, %struct.rmlock** %4, align 8
  %77 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %76, i32 0, i32 1
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @MTX_NOWITNESS, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @mtx_init(i32* %77, i8* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %74, %58
  %84 = load %struct.rmlock*, %struct.rmlock** %4, align 8
  %85 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %84, i32 0, i32 0
  %86 = load %struct.lock_class*, %struct.lock_class** %7, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @lock_init(i32* %85, %struct.lock_class* %86, i8* %87, i32* null, i32 %88)
  ret void
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @sx_init_flags(i32*, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @lock_init(i32*, %struct.lock_class*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
