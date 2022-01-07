; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_load_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_load_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linker_file = type { i32 }
%struct.mod_depend = type { i32 }

@kld_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"linker_load_module: verinfo is not NULL\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@M_LINKER = common dso_local global i32 0, align 4
@rootvnode = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@LINKER_UNLOAD_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.linker_file*, %struct.mod_depend*, %struct.linker_file**)* @linker_load_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linker_load_module(i8* %0, i8* %1, %struct.linker_file* %2, %struct.mod_depend* %3, %struct.linker_file** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.linker_file*, align 8
  %10 = alloca %struct.mod_depend*, align 8
  %11 = alloca %struct.linker_file**, align 8
  %12 = alloca %struct.linker_file*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.linker_file* %2, %struct.linker_file** %9, align 8
  store %struct.mod_depend* %3, %struct.mod_depend** %10, align 8
  store %struct.linker_file** %4, %struct.linker_file*** %11, align 8
  %16 = load i32, i32* @SA_XLOCKED, align 4
  %17 = call i32 @sx_assert(i32* @kld_sx, i32 %16)
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.mod_depend*, %struct.mod_depend** %10, align 8
  %22 = icmp eq %struct.mod_depend* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @linker_search_kld(i8* %25)
  store i8* %26, i8** %14, align 8
  br label %53

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.mod_depend*, %struct.mod_depend** %10, align 8
  %30 = call i32* @modlist_lookup2(i8* %28, %struct.mod_depend* %29)
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @EEXIST, align 4
  store i32 %33, i32* %6, align 4
  br label %113

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @M_LINKER, align 4
  %40 = call i8* @strdup(i8* %38, i32 %39)
  store i8* %40, i8** %14, align 8
  br label %52

41:                                               ; preds = %34
  %42 = load i32*, i32** @rootvnode, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8* null, i8** %14, align 8
  br label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = load %struct.mod_depend*, %struct.mod_depend** %10, align 8
  %50 = call i8* @linker_search_module(i8* %46, i32 %48, %struct.mod_depend* %49)
  store i8* %50, i8** %14, align 8
  br label %51

51:                                               ; preds = %45, %44
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i8*, i8** %14, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @ENOENT, align 4
  store i32 %57, i32* %6, align 4
  br label %113

58:                                               ; preds = %53
  %59 = load i8*, i8** %14, align 8
  %60 = call i8* @linker_basename(i8* %59)
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i64 @linker_find_file_by_name(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @EEXIST, align 4
  store i32 %65, i32* %15, align 4
  br label %108

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 @linker_load_file(i8* %68, %struct.linker_file** %12)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %107

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load %struct.mod_depend*, %struct.mod_depend** %10, align 8
  %78 = icmp ne %struct.mod_depend* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.mod_depend*, %struct.mod_depend** %10, align 8
  %82 = call i32* @modlist_lookup2(i8* %80, %struct.mod_depend* %81)
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.linker_file*, %struct.linker_file** %12, align 8
  %86 = load i32, i32* @LINKER_UNLOAD_FORCE, align 4
  %87 = call i32 @linker_file_unload(%struct.linker_file* %85, i32 %86)
  %88 = load i32, i32* @ENOENT, align 4
  store i32 %88, i32* %15, align 4
  br label %107

89:                                               ; preds = %79, %76, %73
  %90 = load %struct.linker_file*, %struct.linker_file** %9, align 8
  %91 = icmp ne %struct.linker_file* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.linker_file*, %struct.linker_file** %9, align 8
  %94 = load %struct.linker_file*, %struct.linker_file** %12, align 8
  %95 = call i32 @linker_file_add_dependency(%struct.linker_file* %93, %struct.linker_file* %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %107

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %89
  %101 = load %struct.linker_file**, %struct.linker_file*** %11, align 8
  %102 = icmp ne %struct.linker_file** %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.linker_file*, %struct.linker_file** %12, align 8
  %105 = load %struct.linker_file**, %struct.linker_file*** %11, align 8
  store %struct.linker_file* %104, %struct.linker_file** %105, align 8
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %98, %84, %72
  br label %108

108:                                              ; preds = %107, %64
  %109 = load i8*, i8** %14, align 8
  %110 = load i32, i32* @M_LINKER, align 4
  %111 = call i32 @free(i8* %109, i32 %110)
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %108, %56, %32
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @linker_search_kld(i8*) #1

declare dso_local i32* @modlist_lookup2(i8*, %struct.mod_depend*) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i8* @linker_search_module(i8*, i32, %struct.mod_depend*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @linker_basename(i8*) #1

declare dso_local i64 @linker_find_file_by_name(i8*) #1

declare dso_local i32 @linker_load_file(i8*, %struct.linker_file**) #1

declare dso_local i32 @linker_file_unload(%struct.linker_file*, i32) #1

declare dso_local i32 @linker_file_add_dependency(%struct.linker_file*, %struct.linker_file*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
