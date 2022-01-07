; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_alloc_unr_specific.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_alloc_unr_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unrhdr = type { i32 }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"alloc_unr_specific\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc_unr_specific(%struct.unrhdr* %0, i32 %1) #0 {
  %3 = alloca %struct.unrhdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.unrhdr* %0, %struct.unrhdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @WARN_GIANTOK, align 4
  %9 = load i32, i32* @WARN_SLEEPOK, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @WITNESS_WARN(i32 %10, i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = call i8* @Malloc(i32 4)
  store i8* %12, i8** %5, align 8
  %13 = call i8* @Malloc(i32 4)
  store i8* %13, i8** %6, align 8
  %14 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %15 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mtx_lock(i32 %16)
  %18 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @alloc_unr_specificl(%struct.unrhdr* %18, i32 %19, i8** %5, i8** %6)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %22 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mtx_unlock(i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @Free(i8* %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @Free(i8* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @alloc_unr_specificl(%struct.unrhdr*, i32, i8**, i8**) #1

declare dso_local i32 @mtx_unlock(i32) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
