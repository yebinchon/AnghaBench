; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sysvshm/extr_shmtest.c_print_shmid_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sysvshm/extr_shmtest.c_print_shmid_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_ds = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"PERM: uid %d, gid %d, cuid %d, cgid %d, mode 0%o\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"segsz %lu, lpid %d, cpid %d, nattch %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"atime: %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"dtime: %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ctime: %s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"uid mismatch\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"gid mismatch\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"mode mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shmid_ds*, i32)* @print_shmid_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_shmid_ds(%struct.shmid_ds* %0, i32 %1) #0 {
  %3 = alloca %struct.shmid_ds*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.shmid_ds* %0, %struct.shmid_ds** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i64 (...) @geteuid()
  store i64 %7, i64* %5, align 8
  %8 = call i64 (...) @getegid()
  store i64 %8, i64* %6, align 8
  %9 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %10 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %14 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %18 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %22 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %26 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 511
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %20, i32 %24, i32 %29)
  %31 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %32 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %36 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %39 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %42 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %40, i32 %43)
  %45 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %46 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %45, i32 0, i32 3
  %47 = call i8* @ctime(i32* %46)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %50 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %49, i32 0, i32 2
  %51 = call i8* @ctime(i32* %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %54 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %53, i32 0, i32 1
  %55 = call i8* @ctime(i32* %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %58 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %2
  %65 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %66 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64, %2
  %73 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %64
  %75 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %76 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %74
  %83 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %84 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82, %74
  %91 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %82
  %93 = load %struct.shmid_ds*, %struct.shmid_ds** %3, align 8
  %94 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 511
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %92
  ret void
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @getegid(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
