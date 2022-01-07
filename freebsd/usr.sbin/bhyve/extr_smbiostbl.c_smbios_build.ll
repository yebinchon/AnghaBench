; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_smbiostbl.c_smbios_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_smbiostbl.c_smbios_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)*, %struct.smbios_structure* }
%struct.smbios_structure = type { i32 }
%struct.vmctx = type { i32 }
%struct.smbios_entry_point = type { i32 }

@guest_lomem = common dso_local global i32 0, align 4
@guest_himem = common dso_local global i32 0, align 4
@SMBIOS_BASE = common dso_local global i64 0, align 8
@SMBIOS_MAX_LENGTH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"smbios table requires mapped mem\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@smbios_template = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbios_build(%struct.vmctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca %struct.smbios_entry_point*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.smbios_structure*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.vmctx* %0, %struct.vmctx** %3, align 8
  %17 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %18 = call i32 @vm_get_lowmem_size(%struct.vmctx* %17)
  store i32 %18, i32* @guest_lomem, align 4
  %19 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %20 = call i32 @vm_get_highmem_size(%struct.vmctx* %19)
  store i32 %20, i32* @guest_himem, align 4
  %21 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %22 = load i64, i64* @SMBIOS_BASE, align 8
  %23 = load i32, i32* @SMBIOS_MAX_LENGTH, align 4
  %24 = call i8* @paddr_guest2host(%struct.vmctx* %21, i64 %22, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %2, align 4
  br label %110

31:                                               ; preds = %1
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.smbios_entry_point*
  store %struct.smbios_entry_point* %34, %struct.smbios_entry_point** %4, align 8
  %35 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %4, align 8
  %36 = load i64, i64* @SMBIOS_BASE, align 8
  %37 = add i64 %36, 4
  %38 = call i32 @smbios_ep_initializer(%struct.smbios_entry_point* %35, i64 %37)
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %9, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %86, %31
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smbios_template, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load %struct.smbios_structure*, %struct.smbios_structure** %47, align 8
  %49 = icmp ne %struct.smbios_structure* %48, null
  br i1 %49, label %50, label %89

50:                                               ; preds = %42
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smbios_template, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load %struct.smbios_structure*, %struct.smbios_structure** %55, align 8
  store %struct.smbios_structure* %56, %struct.smbios_structure** %12, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smbios_template, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  store i8** %62, i8*** %13, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smbios_template, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)*, i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)** %67, align 8
  store i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)* %68, i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)** %14, align 8
  %69 = load i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)*, i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)** %14, align 8
  %70 = load %struct.smbios_structure*, %struct.smbios_structure** %12, align 8
  %71 = load i8**, i8*** %13, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 %69(%struct.smbios_structure* %70, i8** %71, i8* %72, i8** %15, i64* %5, i64* %16)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %50
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %2, align 4
  br label %110

78:                                               ; preds = %50
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i64, i64* %16, align 8
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i8*, i8** %15, align 8
  store i8* %85, i8** %7, align 8
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %42

89:                                               ; preds = %42
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = load i32, i32* @SMBIOS_MAX_LENGTH, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %94, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %4, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @smbios_ep_finalizer(%struct.smbios_entry_point* %100, i32 %106, i64 %107, i64 %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %89, %76, %27
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @vm_get_lowmem_size(%struct.vmctx*) #1

declare dso_local i32 @vm_get_highmem_size(%struct.vmctx*) #1

declare dso_local i8* @paddr_guest2host(%struct.vmctx*, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @smbios_ep_initializer(%struct.smbios_entry_point*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @smbios_ep_finalizer(%struct.smbios_entry_point*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
