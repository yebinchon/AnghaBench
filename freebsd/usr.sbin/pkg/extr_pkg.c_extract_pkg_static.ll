; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_extract_pkg_static.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_extract_pkg_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"archive_read_new\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"archive_read_open_fd: %s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/pkg-static\00", align 1
@ARCHIVE_EXTRACT_OWNER = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_PERM = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_TIME = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_ACL = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_FFLAGS = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_XATTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to extract pkg-static: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @extract_pkg_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_pkg_static(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %11, align 4
  %13 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %13, %struct.archive** %8, align 8
  %14 = load %struct.archive*, %struct.archive** %8, align 8
  %15 = icmp eq %struct.archive* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %91

19:                                               ; preds = %3
  %20 = load %struct.archive*, %struct.archive** %8, align 8
  %21 = call i32 @archive_read_support_filter_all(%struct.archive* %20)
  %22 = load %struct.archive*, %struct.archive** %8, align 8
  %23 = call i32 @archive_read_support_format_tar(%struct.archive* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @lseek(i32 %24, i32 0, i32 0)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %87

29:                                               ; preds = %19
  %30 = load %struct.archive*, %struct.archive** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @archive_read_open_fd(%struct.archive* %30, i32 %31, i32 4096)
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.archive*, %struct.archive** %8, align 8
  %37 = call i32 @archive_error_string(%struct.archive* %36)
  %38 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %87

39:                                               ; preds = %29
  store %struct.archive_entry* null, %struct.archive_entry** %9, align 8
  br label %40

40:                                               ; preds = %76, %51, %39
  %41 = load %struct.archive*, %struct.archive** %8, align 8
  %42 = call i32 @archive_read_next_header(%struct.archive* %41, %struct.archive_entry** %9)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %40
  %46 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %47 = call i32 @archive_entry_pathname(%struct.archive_entry* %46)
  %48 = call i8* @strrchr(i32 %47, i8 signext 47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %40

52:                                               ; preds = %45
  %53 = load i8*, i8** %10, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load %struct.archive*, %struct.archive** %8, align 8
  %58 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %59 = load i32, i32* @ARCHIVE_EXTRACT_OWNER, align 4
  %60 = load i32, i32* @ARCHIVE_EXTRACT_PERM, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ARCHIVE_EXTRACT_TIME, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @ARCHIVE_EXTRACT_ACL, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @ARCHIVE_EXTRACT_FFLAGS, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @ARCHIVE_EXTRACT_XATTR, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @archive_read_extract(%struct.archive* %57, %struct.archive_entry* %58, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %73 = call i32 @archive_entry_pathname(%struct.archive_entry* %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @strlcpy(i8* %71, i32 %73, i32 %74)
  br label %77

76:                                               ; preds = %52
  br label %40

77:                                               ; preds = %56, %40
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @ARCHIVE_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  br label %86

82:                                               ; preds = %77
  %83 = load %struct.archive*, %struct.archive** %8, align 8
  %84 = call i32 @archive_error_string(%struct.archive* %83)
  %85 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %81
  br label %87

87:                                               ; preds = %86, %35, %27
  %88 = load %struct.archive*, %struct.archive** %8, align 8
  %89 = call i32 @archive_read_free(%struct.archive* %88)
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %16
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_tar(%struct.archive*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @archive_read_open_fd(%struct.archive*, i32, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @archive_read_extract(%struct.archive*, %struct.archive_entry*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
