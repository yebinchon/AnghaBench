; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_uniform_delay_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_uniform_delay_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._qs = type { i32 }
%struct._cfg = type { i64* }

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@U_PARSE_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"dmin %lld dmax %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._qs*, %struct._cfg*, i32, i8**)* @uniform_delay_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniform_delay_parse(%struct._qs* %0, %struct._cfg* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._qs*, align 8
  %7 = alloca %struct._cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct._qs* %0, %struct._qs** %6, align 8
  store %struct._cfg* %1, %struct._cfg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load %struct._qs*, %struct._qs** %6, align 8
  %13 = load i8**, i8*** %9, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 2, i32* %5, align 4
  br label %65

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %65

23:                                               ; preds = %19
  %24 = load i8**, i8*** %9, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @parse_time(i8* %26)
  store i64 %27, i64* %10, align 8
  %28 = load i8**, i8*** %9, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @parse_time(i8* %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @U_PARSE_ERR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %23
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @U_PARSE_ERR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35, %23
  store i32 1, i32* %5, align 4
  br label %65

44:                                               ; preds = %39
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @D(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %45, i64 %46)
  %48 = load i64, i64* %10, align 8
  %49 = load %struct._cfg*, %struct._cfg** %7, align 8
  %50 = getelementptr inbounds %struct._cfg, %struct._cfg* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 %48, i64* %52, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct._cfg*, %struct._cfg** %7, align 8
  %55 = getelementptr inbounds %struct._cfg, %struct._cfg* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  store i64 %53, i64* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %10, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load %struct._cfg*, %struct._cfg** %7, align 8
  %62 = getelementptr inbounds %struct._cfg, %struct._cfg* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  store i64 %60, i64* %64, align 8
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %44, %43, %22, %18
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @parse_time(i8*) #1

declare dso_local i32 @D(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
