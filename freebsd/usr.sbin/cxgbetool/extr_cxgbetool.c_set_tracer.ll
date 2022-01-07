; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_set_tracer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_set_tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_tracer = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"must specify tx<n> or rx<n>.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"argument must be 3 characters (tx<n> or rx<n>)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"'%c' in %s is invalid\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"argument '%s' isn't tx<n> or rx<n>\00", align 1
@CHELSIO_T4_SET_TRACER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @set_tracer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tracer(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.t4_tracer, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = call i32 @bzero(%struct.t4_tracer* %8, i32 56)
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %8, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %8, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %8, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %121

21:                                               ; preds = %3
  %22 = load i8**, i8*** %7, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 3
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %121

31:                                               ; preds = %21
  %32 = load i8**, i8*** %7, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strncmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load i8**, i8*** %7, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = sub nsw i32 %43, 48
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %48, 3
  br i1 %49, label %50, label %62

50:                                               ; preds = %47, %37
  %51 = load i8**, i8*** %7, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8**, i8*** %7, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %56, i8* %59)
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %4, align 4
  br label %121

62:                                               ; preds = %47
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 4
  store i32 %64, i32* %10, align 4
  br label %104

65:                                               ; preds = %31
  %66 = load i8**, i8*** %7, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strncmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %65
  %72 = load i8**, i8*** %7, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = sub nsw i32 %77, 48
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %82, 3
  br i1 %83, label %84, label %96

84:                                               ; preds = %81, %71
  %85 = load i8**, i8*** %7, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8**, i8*** %7, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %90, i8* %93)
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %4, align 4
  br label %121

96:                                               ; preds = %81
  br label %103

97:                                               ; preds = %65
  %98 = load i8**, i8*** %7, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* %4, align 4
  br label %121

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %62
  %105 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %8, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 128, i32* %106, align 8
  %107 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %8, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 5
  store i64 0, i64* %108, align 8
  %109 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %8, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %8, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %8, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* %10, align 4
  %116 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %8, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = call i32 (...) @create_tracing_ifnet()
  %119 = load i32, i32* @CHELSIO_T4_SET_TRACER, align 4
  %120 = call i32 @doit(i32 %119, %struct.t4_tracer* %8)
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %104, %97, %84, %50, %28, %18
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @bzero(%struct.t4_tracer*, i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @create_tracing_ifnet(...) #1

declare dso_local i32 @doit(i32, %struct.t4_tracer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
