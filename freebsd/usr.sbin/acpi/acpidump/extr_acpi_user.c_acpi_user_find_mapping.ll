; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi_user.c_acpi_user_find_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi_user.c_acpi_user_find_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_user_mapping = type { i64, i64, i64 }

@maplist = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@acpi_mem_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"can't map address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_user_mapping* (i64, i64)* @acpi_user_find_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_user_mapping* @acpi_user_find_mapping(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.acpi_user_mapping*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_user_mapping*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call %struct.acpi_user_mapping* @LIST_FIRST(i32* @maplist)
  store %struct.acpi_user_mapping* %7, %struct.acpi_user_mapping** %6, align 8
  br label %8

8:                                                ; preds = %32, %2
  %9 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  %10 = icmp ne %struct.acpi_user_mapping* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  %13 = getelementptr inbounds %struct.acpi_user_mapping, %struct.acpi_user_mapping* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  %19 = getelementptr inbounds %struct.acpi_user_mapping, %struct.acpi_user_mapping* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %21, %22
  %24 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  %25 = getelementptr inbounds %struct.acpi_user_mapping, %struct.acpi_user_mapping* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %23, %26
  %28 = icmp uge i64 %20, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  store %struct.acpi_user_mapping* %30, %struct.acpi_user_mapping** %3, align 8
  br label %77

31:                                               ; preds = %17, %11
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  %34 = load i32, i32* @link, align 4
  %35 = call %struct.acpi_user_mapping* @LIST_NEXT(%struct.acpi_user_mapping* %33, i32 %34)
  store %struct.acpi_user_mapping* %35, %struct.acpi_user_mapping** %6, align 8
  br label %8

36:                                               ; preds = %8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %37, %38
  %40 = call i64 @round_page(i64 %39)
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @trunc_page(i64 %41)
  %43 = sub nsw i64 %40, %42
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @trunc_page(i64 %44)
  store i64 %45, i64* %4, align 8
  %46 = call %struct.acpi_user_mapping* @malloc(i32 24)
  store %struct.acpi_user_mapping* %46, %struct.acpi_user_mapping** %6, align 8
  %47 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  %48 = icmp ne %struct.acpi_user_mapping* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %36
  %50 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %36
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  %54 = getelementptr inbounds %struct.acpi_user_mapping, %struct.acpi_user_mapping* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @PROT_READ, align 4
  %57 = load i32, i32* @MAP_SHARED, align 4
  %58 = load i32, i32* @acpi_mem_fd, align 4
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @mmap(i32 0, i64 %55, i32 %56, i32 %57, i32 %58, i64 %59)
  %61 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  %62 = getelementptr inbounds %struct.acpi_user_mapping, %struct.acpi_user_mapping* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  %65 = getelementptr inbounds %struct.acpi_user_mapping, %struct.acpi_user_mapping* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  %67 = getelementptr inbounds %struct.acpi_user_mapping, %struct.acpi_user_mapping* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %51
  %71 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %51
  %73 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  %74 = load i32, i32* @link, align 4
  %75 = call i32 @LIST_INSERT_HEAD(i32* @maplist, %struct.acpi_user_mapping* %73, i32 %74)
  %76 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %6, align 8
  store %struct.acpi_user_mapping* %76, %struct.acpi_user_mapping** %3, align 8
  br label %77

77:                                               ; preds = %72, %29
  %78 = load %struct.acpi_user_mapping*, %struct.acpi_user_mapping** %3, align 8
  ret %struct.acpi_user_mapping* %78
}

declare dso_local %struct.acpi_user_mapping* @LIST_FIRST(i32*) #1

declare dso_local %struct.acpi_user_mapping* @LIST_NEXT(%struct.acpi_user_mapping*, i32) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local %struct.acpi_user_mapping* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @mmap(i32, i64, i32, i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.acpi_user_mapping*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
