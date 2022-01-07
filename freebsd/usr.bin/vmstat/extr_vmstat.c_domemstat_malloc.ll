; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_domemstat_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_domemstat_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type_list = type { i32 }
%struct.memory_type = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"memstat_mtl_alloc\00", align 1
@kd = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"memstat_sysctl_malloc: %s\00", align 1
@MEMSTAT_ERROR_KVM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"memstat_kvm_malloc: %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"malloc-statistics\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"{T:/%13s} {T:/%5s} {T:/%6s} {T:/%7s} {T:/%8s}  {T:Size(s)}\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"InUse\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"MemUse\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"HighUse\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Requests\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.11 = private unnamed_addr constant [91 x i8] c"{k:type/%13s/%s} {:in-use/%5ju} {:memory-use/%5ju}{U:K} {:high-use/%7s} {:requests/%8ju}  \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"{l:size/%d}\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @domemstat_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domemstat_malloc() #0 {
  %1 = alloca %struct.memory_type_list*, align 8
  %2 = alloca %struct.memory_type*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call %struct.memory_type_list* (...) @memstat_mtl_alloc()
  store %struct.memory_type_list* %6, %struct.memory_type_list** %1, align 8
  %7 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %8 = icmp eq %struct.memory_type_list* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @xo_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %116

11:                                               ; preds = %0
  %12 = load i32*, i32** @kd, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %16 = call i64 @memstat_sysctl_malloc(%struct.memory_type_list* %15, i32 0)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %20 = call i32 @memstat_mtl_geterror(%struct.memory_type_list* %19)
  %21 = call i32 @memstat_strerror(i32 %20)
  %22 = call i32 @xo_warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %116

23:                                               ; preds = %14
  br label %45

24:                                               ; preds = %11
  %25 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %26 = load i32*, i32** @kd, align 8
  %27 = call i64 @memstat_kvm_malloc(%struct.memory_type_list* %25, i32* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %31 = call i32 @memstat_mtl_geterror(%struct.memory_type_list* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MEMSTAT_ERROR_KVM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32*, i32** @kd, align 8
  %37 = call i32 @kvm_geterr(i32* %36)
  %38 = call i32 @xo_warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %43

39:                                               ; preds = %29
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @memstat_strerror(i32 %40)
  %42 = call i32 @xo_warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %24
  br label %45

45:                                               ; preds = %44, %23
  %46 = call i32 @xo_open_container(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %48 = call i32 @xo_open_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %49 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %50 = call %struct.memory_type* @memstat_mtl_first(%struct.memory_type_list* %49)
  store %struct.memory_type* %50, %struct.memory_type** %2, align 8
  br label %51

51:                                               ; preds = %108, %45
  %52 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %53 = icmp ne %struct.memory_type* %52, null
  br i1 %53, label %54, label %111

54:                                               ; preds = %51
  %55 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %56 = call i64 @memstat_get_numallocs(%struct.memory_type* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %60 = call i64 @memstat_get_count(%struct.memory_type* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %108

63:                                               ; preds = %58, %54
  %64 = call i32 @xo_open_instance(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %65 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %66 = call i32 @memstat_get_name(%struct.memory_type* %65)
  %67 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %68 = call i64 @memstat_get_count(%struct.memory_type* %67)
  %69 = trunc i64 %68 to i32
  %70 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %71 = call i64 @memstat_get_bytes(%struct.memory_type* %70)
  %72 = trunc i64 %71 to i32
  %73 = add nsw i32 %72, 1023
  %74 = sdiv i32 %73, 1024
  %75 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %76 = call i64 @memstat_get_numallocs(%struct.memory_type* %75)
  %77 = trunc i64 %76 to i32
  %78 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.11, i64 0, i64 0), i32 %66, i32 %69, i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 %77)
  store i32 1, i32* %4, align 4
  %79 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %101, %63
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 32
  br i1 %82, label %83, label %104

83:                                               ; preds = %80
  %84 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %85 = call i32 @memstat_get_sizemask(%struct.memory_type* %84)
  %86 = load i32, i32* %5, align 4
  %87 = shl i32 1, %86
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 4
  %98 = shl i32 1, %97
  %99 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %83
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %80

104:                                              ; preds = %80
  %105 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %106 = call i32 @xo_close_instance(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %107 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %62
  %109 = load %struct.memory_type*, %struct.memory_type** %2, align 8
  %110 = call %struct.memory_type* @memstat_mtl_next(%struct.memory_type* %109)
  store %struct.memory_type* %110, %struct.memory_type** %2, align 8
  br label %51

111:                                              ; preds = %51
  %112 = call i32 @xo_close_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %113 = call i32 @xo_close_container(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.memory_type_list*, %struct.memory_type_list** %1, align 8
  %115 = call i32 @memstat_mtl_free(%struct.memory_type_list* %114)
  br label %116

116:                                              ; preds = %111, %18, %9
  ret void
}

declare dso_local %struct.memory_type_list* @memstat_mtl_alloc(...) #1

declare dso_local i32 @xo_warn(i8*) #1

declare dso_local i64 @memstat_sysctl_malloc(%struct.memory_type_list*, i32) #1

declare dso_local i32 @xo_warnx(i8*, i32) #1

declare dso_local i32 @memstat_strerror(i32) #1

declare dso_local i32 @memstat_mtl_geterror(%struct.memory_type_list*) #1

declare dso_local i64 @memstat_kvm_malloc(%struct.memory_type_list*, i32*) #1

declare dso_local i32 @kvm_geterr(i32*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local %struct.memory_type* @memstat_mtl_first(%struct.memory_type_list*) #1

declare dso_local i64 @memstat_get_numallocs(%struct.memory_type*) #1

declare dso_local i64 @memstat_get_count(%struct.memory_type*) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @memstat_get_name(%struct.memory_type*) #1

declare dso_local i64 @memstat_get_bytes(%struct.memory_type*) #1

declare dso_local i32 @memstat_get_sizemask(%struct.memory_type*) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @xo_close_instance(i8*) #1

declare dso_local %struct.memory_type* @memstat_mtl_next(%struct.memory_type*) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @memstat_mtl_free(%struct.memory_type_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
