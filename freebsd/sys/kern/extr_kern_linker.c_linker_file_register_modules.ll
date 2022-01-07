; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_file_register_modules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_file_register_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.mod_metadata = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"linker_file_register_modules: registering modules in %s\0A\00", align 1
@kld_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"modmetadata_set\00", align 1
@linker_kernel_file = common dso_local global %struct.TYPE_9__* null, align 8
@modmetadata_set = common dso_local global i32 0, align 4
@MDT_MODULE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Registering module %s in %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Module %s failed to register: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @linker_file_register_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linker_file_register_modules(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.mod_metadata**, align 8
  %5 = alloca %struct.mod_metadata**, align 8
  %6 = alloca %struct.mod_metadata**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load i32, i32* @FILE, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KLD_DPF(i32 %10, i8* %15)
  %17 = load i32, i32* @SA_XLOCKED, align 4
  %18 = call i32 @sx_assert(i32* @kld_sx, i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = call i64 @linker_file_lookup_set(%struct.TYPE_9__* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.mod_metadata*** %4, %struct.mod_metadata*** %5, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @linker_kernel_file, align 8
  %25 = icmp eq %struct.TYPE_9__* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @modmetadata_set, align 4
  %28 = call %struct.mod_metadata** @SET_BEGIN(i32 %27)
  store %struct.mod_metadata** %28, %struct.mod_metadata*** %4, align 8
  %29 = load i32, i32* @modmetadata_set, align 4
  %30 = call %struct.mod_metadata** @SET_LIMIT(i32 %29)
  store %struct.mod_metadata** %30, %struct.mod_metadata*** %5, align 8
  br label %32

31:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %84

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %1
  store i32 0, i32* %8, align 4
  %34 = load %struct.mod_metadata**, %struct.mod_metadata*** %4, align 8
  store %struct.mod_metadata** %34, %struct.mod_metadata*** %6, align 8
  br label %35

35:                                               ; preds = %79, %33
  %36 = load %struct.mod_metadata**, %struct.mod_metadata*** %6, align 8
  %37 = load %struct.mod_metadata**, %struct.mod_metadata*** %5, align 8
  %38 = icmp ult %struct.mod_metadata** %36, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %35
  %40 = load %struct.mod_metadata**, %struct.mod_metadata*** %6, align 8
  %41 = load %struct.mod_metadata*, %struct.mod_metadata** %40, align 8
  %42 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MDT_MODULE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %79

47:                                               ; preds = %39
  %48 = load %struct.mod_metadata**, %struct.mod_metadata*** %6, align 8
  %49 = load %struct.mod_metadata*, %struct.mod_metadata** %48, align 8
  %50 = getelementptr inbounds %struct.mod_metadata, %struct.mod_metadata* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %7, align 8
  %52 = load i32, i32* @FILE, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @KLD_DPF(i32 %52, i8* %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = call i32 @module_register(%struct.TYPE_8__* %62, %struct.TYPE_9__* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %47
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %67
  br label %78

78:                                               ; preds = %77, %47
  br label %79

79:                                               ; preds = %78, %46
  %80 = load %struct.mod_metadata**, %struct.mod_metadata*** %6, align 8
  %81 = getelementptr inbounds %struct.mod_metadata*, %struct.mod_metadata** %80, i32 1
  store %struct.mod_metadata** %81, %struct.mod_metadata*** %6, align 8
  br label %35

82:                                               ; preds = %35
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %31
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @KLD_DPF(i32, i8*) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @linker_file_lookup_set(%struct.TYPE_9__*, i8*, %struct.mod_metadata***, %struct.mod_metadata***, i32*) #1

declare dso_local %struct.mod_metadata** @SET_BEGIN(i32) #1

declare dso_local %struct.mod_metadata** @SET_LIMIT(i32) #1

declare dso_local i32 @module_register(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
