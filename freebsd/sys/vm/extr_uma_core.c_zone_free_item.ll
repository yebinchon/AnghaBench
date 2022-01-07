; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_free_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_free_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i32, i32, i32 (i32, i8**, i32)*, i32, i32 (i8*, i32)*, i32 (i8*, i32, i8*)* }

@SKIP_DTOR = common dso_local global i32 0, align 4
@SKIP_FINI = common dso_local global i32 0, align 4
@SKIP_CNT = common dso_local global i32 0, align 4
@SKIP_NONE = common dso_local global i32 0, align 4
@UMA_ZONE_MALLOC = common dso_local global i32 0, align 4
@trash_ctor = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i8*, i32)* @zone_free_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_free_item(%struct.TYPE_8__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SKIP_DTOR, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 10
  %15 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %14, align 8
  %16 = icmp ne i32 (i8*, i32, i8*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 10
  %20 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %19, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 %20(i8* %21, i32 %24, i8* %25)
  br label %27

27:                                               ; preds = %17, %12, %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SKIP_FINI, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 9
  %34 = load i32 (i8*, i32)*, i32 (i8*, i32)** %33, align 8
  %35 = icmp ne i32 (i8*, i32)* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 9
  %39 = load i32 (i8*, i32)*, i32 (i8*, i32)** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %39(i8* %40, i32 %43)
  br label %45

45:                                               ; preds = %36, %31, %27
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 7
  %48 = load i32 (i32, i8**, i32)*, i32 (i32, i8**, i32)** %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %48(i32 %51, i8** %6, i32 1)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SKIP_CNT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %92

58:                                               ; preds = %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @counter_u64_add(i32 %61, i32 1)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %58
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = call i32 @ZONE_LOCK(%struct.TYPE_8__* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %67
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = call i32 @wakeup_one(%struct.TYPE_8__* %87)
  br label %89

89:                                               ; preds = %86, %78, %67
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = call i32 @ZONE_UNLOCK(%struct.TYPE_8__* %90)
  br label %92

92:                                               ; preds = %57, %89, %58
  ret void
}

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @ZONE_LOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @wakeup_one(%struct.TYPE_8__*) #1

declare dso_local i32 @ZONE_UNLOCK(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
