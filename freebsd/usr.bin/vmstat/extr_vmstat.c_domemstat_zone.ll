; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_domemstat_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_domemstat_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type_list = type { i32 }
%struct.memory_type = type { i32 }

@MEMTYPE_MAXNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"memstat_mtl_alloc\00", align 1
@kd = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"memstat_sysctl_uma: %s\00", align 1
@MEMSTAT_ERROR_KVM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"memstat_kvm_uma: %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"memory-zone-statistics\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"{T:/%-20s} {T:/%6s} {T:/%6s} {T:/%8s} {T:/%8s} {T:/%8s} {T:/%8s}{T:/%4s} {T:/%4s}\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ITEM\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"LIMIT\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"USED\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"REQ\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"SLEEP\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"XDOMAIN\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.16 = private unnamed_addr constant [142 x i8] c"{d:name/%-20s}{ke:name/%s} {:size/%6ju}, {:limit/%6ju},{:used/%8ju},{:free/%8ju},{:requests/%8ju},{:fail/%4ju},{:sleep/%4ju},{:xdomain/%4ju}\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @domemstat_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domemstat_zone() #0 {
  %1 = alloca %struct.memory_type_list*, align 8
  %2 = alloca %struct.memory_type*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MEMTYPE_MAXNAME, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = call %struct.memory_type_list* (...) @memstat_mtl_alloc()
  store %struct.memory_type_list* %12, %struct.memory_type_list** %1, align 8
  %13 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %14 = icmp eq %struct.memory_type_list* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @xo_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %104

17:                                               ; preds = %0
  %18 = load i32*, i32** @kd, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %22 = call i64 @memstat_sysctl_uma(%struct.memory_type_list* %21, i32 0)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %26 = call i32 @memstat_mtl_geterror(%struct.memory_type_list* %25)
  %27 = call i32 @memstat_strerror(i32 %26)
  %28 = call i32 @xo_warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 1, i32* %6, align 4
  br label %104

29:                                               ; preds = %20
  br label %51

30:                                               ; preds = %17
  %31 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %32 = load i32*, i32** @kd, align 8
  %33 = call i64 @memstat_kvm_uma(%struct.memory_type_list* %31, i32* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %37 = call i32 @memstat_mtl_geterror(%struct.memory_type_list* %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @MEMSTAT_ERROR_KVM, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32*, i32** @kd, align 8
  %43 = call i32 @kvm_geterr(i32* %42)
  %44 = call i32 @xo_warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %49

45:                                               ; preds = %35
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @memstat_strerror(i32 %46)
  %48 = call i32 @xo_warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %29
  %52 = call i32 @xo_open_container(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %54 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %55 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %56 = call %struct.memory_type* @memstat_mtl_first(%struct.memory_type_list* %55)
  store %struct.memory_type* %56, %struct.memory_type** %2, align 8
  br label %57

57:                                               ; preds = %95, %51
  %58 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %59 = icmp ne %struct.memory_type* %58, null
  br i1 %59, label %60, label %98

60:                                               ; preds = %57
  %61 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %62 = call i32 @memstat_get_name(%struct.memory_type* %61)
  %63 = load i32, i32* @MEMTYPE_MAXNAME, align 4
  %64 = call i32 @strlcpy(i8* %11, i32 %62, i32 %63)
  %65 = call i32 @strcat(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %66 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %67 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %68 = call i32 @memstat_get_name(%struct.memory_type* %67)
  %69 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %70 = call i64 @memstat_get_size(%struct.memory_type* %69)
  %71 = trunc i64 %70 to i32
  %72 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %73 = call i64 @memstat_get_countlimit(%struct.memory_type* %72)
  %74 = trunc i64 %73 to i32
  %75 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %76 = call i64 @memstat_get_count(%struct.memory_type* %75)
  %77 = trunc i64 %76 to i32
  %78 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %79 = call i64 @memstat_get_free(%struct.memory_type* %78)
  %80 = trunc i64 %79 to i32
  %81 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %82 = call i64 @memstat_get_numallocs(%struct.memory_type* %81)
  %83 = trunc i64 %82 to i32
  %84 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %85 = call i64 @memstat_get_failures(%struct.memory_type* %84)
  %86 = trunc i64 %85 to i32
  %87 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %88 = call i64 @memstat_get_sleeps(%struct.memory_type* %87)
  %89 = trunc i64 %88 to i32
  %90 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %91 = call i64 @memstat_get_xdomain(%struct.memory_type* %90)
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.16, i64 0, i64 0), i8* %11, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86, i32 %89, i32 %92)
  %94 = call i32 @xo_close_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %95

95:                                               ; preds = %60
  %96 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %97 = call %struct.memory_type* @memstat_mtl_next(%struct.memory_type* %96)
  store %struct.memory_type* %97, %struct.memory_type** %2, align 8
  br label %57

98:                                               ; preds = %57
  %99 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %100 = call i32 @memstat_mtl_free(%struct.memory_type_list* %99)
  %101 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %102 = call i32 @xo_close_container(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %103 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %98, %24, %15
  %105 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %6, align 4
  switch i32 %106, label %108 [
    i32 0, label %107
    i32 1, label %107
  ]

107:                                              ; preds = %104, %104
  ret void

108:                                              ; preds = %104
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.memory_type_list* @memstat_mtl_alloc(...) #2

declare dso_local i32 @xo_warn(i8*) #2

declare dso_local i64 @memstat_sysctl_uma(%struct.memory_type_list*, i32) #2

declare dso_local i32 @xo_warnx(i8*, i32) #2

declare dso_local i32 @memstat_strerror(i32) #2

declare dso_local i32 @memstat_mtl_geterror(%struct.memory_type_list*) #2

declare dso_local i64 @memstat_kvm_uma(%struct.memory_type_list*, i32*) #2

declare dso_local i32 @kvm_geterr(i32*) #2

declare dso_local i32 @xo_open_container(i8*) #2

declare dso_local i32 @xo_emit(i8*, ...) #2

declare dso_local i32 @xo_open_list(i8*) #2

declare dso_local %struct.memory_type* @memstat_mtl_first(%struct.memory_type_list*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @memstat_get_name(%struct.memory_type*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @xo_open_instance(i8*) #2

declare dso_local i64 @memstat_get_size(%struct.memory_type*) #2

declare dso_local i64 @memstat_get_countlimit(%struct.memory_type*) #2

declare dso_local i64 @memstat_get_count(%struct.memory_type*) #2

declare dso_local i64 @memstat_get_free(%struct.memory_type*) #2

declare dso_local i64 @memstat_get_numallocs(%struct.memory_type*) #2

declare dso_local i64 @memstat_get_failures(%struct.memory_type*) #2

declare dso_local i64 @memstat_get_sleeps(%struct.memory_type*) #2

declare dso_local i64 @memstat_get_xdomain(%struct.memory_type*) #2

declare dso_local i32 @xo_close_instance(i8*) #2

declare dso_local %struct.memory_type* @memstat_mtl_next(%struct.memory_type*) #2

declare dso_local i32 @memstat_mtl_free(%struct.memory_type_list*) #2

declare dso_local i32 @xo_close_list(i8*) #2

declare dso_local i32 @xo_close_container(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
