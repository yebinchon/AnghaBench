; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_free_unr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_free_unr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unrhdr = type { i32 }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"free_unr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_unr(%struct.unrhdr* %0, i32 %1) #0 {
  %3 = alloca %struct.unrhdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.unrhdr* %0, %struct.unrhdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @WARN_GIANTOK, align 4
  %8 = load i32, i32* @WARN_SLEEPOK, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @WITNESS_WARN(i32 %9, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = call i8* @Malloc(i32 4)
  store i8* %11, i8** %5, align 8
  %12 = call i8* @Malloc(i32 4)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %14 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mtx_lock(i32 %15)
  %17 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @free_unrl(%struct.unrhdr* %17, i32 %18, i8** %5, i8** %6)
  %20 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %21 = call i32 @clean_unrhdrl(%struct.unrhdr* %20)
  %22 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %23 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mtx_unlock(i32 %24)
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @Free(i8* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @Free(i8* %35)
  br label %37

37:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @free_unrl(%struct.unrhdr*, i32, i8**, i8**) #1

declare dso_local i32 @clean_unrhdrl(%struct.unrhdr*) #1

declare dso_local i32 @mtx_unlock(i32) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
