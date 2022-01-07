; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_kstack.c_kstack_cleanup_encoded.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_kstack.c_kstack_cleanup_encoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TS_FRAMENUM = common dso_local global i32 0, align 4
@TS_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"{le:token/%s}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @kstack_cleanup_encoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kstack_cleanup_encoded(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @TS_FRAMENUM, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %57

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %10, align 8
  br label %20

20:                                               ; preds = %50, %17
  %21 = load i8*, i8** %9, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %39 [
    i32 10, label %29
    i32 32, label %35
    i32 43, label %35
  ]

29:                                               ; preds = %25
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %10, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  br label %35

35:                                               ; preds = %25, %25, %29
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @kstack_nextstate(i32 %37)
  store i32 %38, i32* %8, align 4
  br label %50

39:                                               ; preds = %25
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @TS_FUNC, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %10, align 8
  store i8 %45, i8* %46, align 1
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %43, %39
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  br label %20

53:                                               ; preds = %20
  %54 = load i8*, i8** %10, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = call i8* @strdup(i8* %55)
  store i8* %56, i8** %11, align 8
  store i8* %56, i8** %12, align 8
  br label %60

57:                                               ; preds = %3
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @strdup(i8* %58)
  store i8* %59, i8** %11, align 8
  store i8* %59, i8** %12, align 8
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %76, %60
  %62 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %62, i8** %13, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i8*, i8** %13, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i8*, i8** %13, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 127
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %68, %64
  br label %61

77:                                               ; preds = %61
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @free(i8* %78)
  ret void
}

declare dso_local i32 @kstack_nextstate(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xo_emit(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
