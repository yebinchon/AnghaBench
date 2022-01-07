; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ktr.c_ktr_tracepoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ktr.c_ktr_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktr_entry = type { i32, i8*, i32, i8*, i8**, i8*, i32 }
%struct.thread = type { i32, i64 }

@panicstr = common dso_local global i64 0, align 8
@kdb_active = common dso_local global i64 0, align 8
@ktr_mask = common dso_local global i32 0, align 4
@ktr_buf = common dso_local global %struct.ktr_entry* null, align 8
@KTR_CPU = common dso_local global i32 0, align 4
@ktr_cpumask = common dso_local global i32 0, align 4
@ktr_idx = common dso_local global i32 0, align 4
@ktr_entries = common dso_local global i32 0, align 4
@KTR_TIME = common dso_local global i32 0, align 4
@curthread = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1
@ALQ_NOWAIT = common dso_local global i32 0, align 4
@TDP_INKTR = common dso_local global i32 0, align 4
@ald_thread = common dso_local global %struct.thread* null, align 8
@ktr_alq = common dso_local global i32 0, align 4
@ktr_alq_cnt = common dso_local global i64 0, align 8
@ktr_alq_enabled = common dso_local global i64 0, align 8
@ktr_alq_failed = common dso_local global i32 0, align 4
@ktr_alq_max = common dso_local global i64 0, align 8
@ktr_verbose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktr_tracepoint(i32 %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.ktr_entry*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %25 = load i64, i64* @panicstr, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %10
  %28 = load i64, i64* @kdb_active, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %10
  br label %123

31:                                               ; preds = %27
  %32 = load i32, i32* @ktr_mask, align 4
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.ktr_entry*, %struct.ktr_entry** @ktr_buf, align 8
  %38 = icmp eq %struct.ktr_entry* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %31
  br label %123

40:                                               ; preds = %36
  %41 = load i32, i32* @KTR_CPU, align 4
  store i32 %41, i32* %24, align 4
  %42 = load i32, i32* %24, align 4
  %43 = call i32 @CPU_ISSET(i32 %42, i32* @ktr_cpumask)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %123

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %53, %46
  %48 = load i32, i32* @ktr_idx, align 4
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %23, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @ktr_entries, align 4
  %52 = srem i32 %50, %51
  store i32 %52, i32* %22, align 4
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %23, align 4
  %55 = load i32, i32* %22, align 4
  %56 = call i64 @atomic_cmpset_rel_int(i32* @ktr_idx, i32 %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %47, label %58

58:                                               ; preds = %53
  %59 = load %struct.ktr_entry*, %struct.ktr_entry** @ktr_buf, align 8
  %60 = load i32, i32* %23, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %59, i64 %61
  store %struct.ktr_entry* %62, %struct.ktr_entry** %21, align 8
  %63 = load i32, i32* @KTR_TIME, align 4
  %64 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %65 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %24, align 4
  %67 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %68 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** @curthread, align 8
  %70 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %71 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %79, %74
  %76 = load i8*, i8** %12, align 8
  %77 = call i64 @strncmp(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  store i8* %81, i8** %12, align 8
  br label %75

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i8*, i8** %12, align 8
  %85 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %86 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %89 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %92 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %95 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %94, i32 0, i32 4
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  store i8* %93, i8** %97, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %100 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %99, i32 0, i32 4
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  store i8* %98, i8** %102, align 8
  %103 = load i8*, i8** %17, align 8
  %104 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %105 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %104, i32 0, i32 4
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 2
  store i8* %103, i8** %107, align 8
  %108 = load i8*, i8** %18, align 8
  %109 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %110 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %109, i32 0, i32 4
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 3
  store i8* %108, i8** %112, align 8
  %113 = load i8*, i8** %19, align 8
  %114 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %115 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %114, i32 0, i32 4
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 4
  store i8* %113, i8** %117, align 8
  %118 = load i8*, i8** %20, align 8
  %119 = load %struct.ktr_entry*, %struct.ktr_entry** %21, align 8
  %120 = getelementptr inbounds %struct.ktr_entry, %struct.ktr_entry* %119, i32 0, i32 4
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 5
  store i8* %118, i8** %122, align 8
  br label %123

123:                                              ; preds = %83, %45, %39, %30
  ret void
}

declare dso_local i32 @CPU_ISSET(i32, i32*) #1

declare dso_local i64 @atomic_cmpset_rel_int(i32*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
